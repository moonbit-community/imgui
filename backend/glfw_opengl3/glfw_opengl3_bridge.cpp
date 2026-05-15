#include <moonbit.h>

#if defined(__has_include) && __has_include(<GLFW/glfw3.h>)
#define MOONBIT_IMGUI_HAS_GLFW 1
#else
#define MOONBIT_IMGUI_HAS_GLFW 0
#endif

#if MOONBIT_IMGUI_HAS_GLFW

#include "../../raw/upstream/imgui/imgui.h"
#include "../../raw/upstream/imgui/backends/imgui_impl_glfw.h"
#include "../../raw/upstream/imgui/backends/imgui_impl_opengl3.h"

#include <GLFW/glfw3.h>

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>
#include <unordered_set>

typedef struct {
  bool alive;
  bool vsync;
  bool backend_initialized;
  ImGuiContext *context;
  GLFWwindow *window;
  std::string glsl_version;
} moonbit_imgui_backend_window_t;

static std::unordered_set<void *> g_windows;
static void *g_backend_owner = nullptr;

extern "C" int32_t moonbit_imgui_context_is_tracked(void *context);

typedef void (*gl_viewport_fn)(GLint, GLint, GLsizei, GLsizei);
typedef void (*gl_clear_color_fn)(GLfloat, GLfloat, GLfloat, GLfloat);
typedef void (*gl_clear_fn)(GLbitfield);
typedef void (*gl_pixel_store_i_fn)(GLenum, GLint);
typedef void (*gl_read_buffer_fn)(GLenum);
typedef void (*gl_read_pixels_fn)(GLint, GLint, GLsizei, GLsizei, GLenum,
                                  GLenum, void *);

typedef struct {
  bool loaded;
  gl_viewport_fn viewport;
  gl_clear_color_fn clear_color;
  gl_clear_fn clear;
  gl_pixel_store_i_fn pixel_store_i;
  gl_read_buffer_fn read_buffer;
  gl_read_pixels_fn read_pixels;
} moonbit_imgui_gl_functions_t;

static moonbit_imgui_gl_functions_t g_gl = {};

template <typename T> static T load_gl_proc(const char *name) {
  return reinterpret_cast<T>(glfwGetProcAddress(name));
}

static bool ensure_gl_functions() {
  if (g_gl.loaded) {
    return true;
  }
  g_gl.viewport = load_gl_proc<gl_viewport_fn>("glViewport");
  g_gl.clear_color = load_gl_proc<gl_clear_color_fn>("glClearColor");
  g_gl.clear = load_gl_proc<gl_clear_fn>("glClear");
  g_gl.pixel_store_i = load_gl_proc<gl_pixel_store_i_fn>("glPixelStorei");
  g_gl.read_buffer = load_gl_proc<gl_read_buffer_fn>("glReadBuffer");
  g_gl.read_pixels = load_gl_proc<gl_read_pixels_fn>("glReadPixels");
  g_gl.loaded = g_gl.viewport != nullptr && g_gl.clear_color != nullptr &&
                g_gl.clear != nullptr && g_gl.pixel_store_i != nullptr &&
                g_gl.read_pixels != nullptr;
  return g_gl.loaded;
}

static bool valid_slice(int32_t offset, int32_t len, int32_t total_len) {
  return offset >= 0 && len >= 0 && total_len >= 0 && offset <= total_len &&
         len <= total_len - offset;
}

static bool valid_window_handle(void *window) {
  return window != nullptr && g_windows.find(window) != g_windows.end();
}

static const char *slice_to_cstr(moonbit_bytes_t bytes, int32_t offset,
                                 int32_t len, int32_t total_len,
                                 std::string &storage) {
  if (bytes == nullptr || !valid_slice(offset, len, total_len)) {
    storage.clear();
    return storage.c_str();
  }
  const char *source = reinterpret_cast<const char *>(bytes) + offset;
  if (offset + len == total_len) {
    return source;
  }
  storage.assign(source, static_cast<size_t>(len));
  return storage.c_str();
}

static bool label_is_empty(moonbit_bytes_t bytes, int32_t offset, int32_t len,
                           int32_t total_len) {
  return bytes == nullptr || !valid_slice(offset, len, total_len) || len == 0;
}

static bool has_context() {
  return ImGui::GetCurrentContext() != nullptr;
}

static bool is_tracked_context(ImGuiContext *context) {
  return context != nullptr && moonbit_imgui_context_is_tracked(context) == 1;
}

static void shutdown_backend(moonbit_imgui_backend_window_t *window) {
  if (window == nullptr || !window->backend_initialized) {
    return;
  }

  ImGuiContext *previous = ImGui::GetCurrentContext();
  bool previous_is_valid = previous == nullptr || is_tracked_context(previous);
  bool owner_is_valid = is_tracked_context(window->context);
  if (owner_is_valid) {
    ImGui::SetCurrentContext(window->context);
  }
  if (window->window != nullptr) {
    glfwMakeContextCurrent(window->window);
  }
  if (owner_is_valid) {
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
  }
  window->backend_initialized = false;
  window->context = nullptr;
  if (g_backend_owner == window) {
    g_backend_owner = nullptr;
  }
  if (previous_is_valid) {
    ImGui::SetCurrentContext(previous);
  } else {
    ImGui::SetCurrentContext(nullptr);
  }
}

static bool ensure_backend_initialized(moonbit_imgui_backend_window_t *window) {
  if (window == nullptr || !window->alive || window->window == nullptr ||
      !has_context()) {
    return false;
  }
  if (g_backend_owner != nullptr && g_backend_owner != window) {
    return false;
  }
  if (window->backend_initialized) {
    return true;
  }

  glfwMakeContextCurrent(window->window);
  glfwSwapInterval(window->vsync ? 1 : 0);
  if (!ImGui_ImplGlfw_InitForOpenGL(window->window, true)) {
    return false;
  }
  const char *glsl = window->glsl_version.empty()
                         ? "#version 130"
                         : window->glsl_version.c_str();
  if (!ImGui_ImplOpenGL3_Init(glsl)) {
    ImGui_ImplGlfw_Shutdown();
    return false;
  }
  window->backend_initialized = true;
  window->context = ImGui::GetCurrentContext();
  g_backend_owner = window;
  return true;
}

static bool capture_frame_if_requested(ImDrawData *draw_data, GLsizei fb_width,
                                       GLsizei fb_height) {
  static bool captured = false;
  static bool reported = false;
  const char *path = getenv("MOONBIT_IMGUI_CAPTURE");
  if (captured || path == nullptr || path[0] == '\0' || fb_width <= 0 ||
      fb_height <= 0) {
    return false;
  }
  if (!reported && draw_data != nullptr) {
    fprintf(stderr,
            "MoonBit ImGui capture: frame=%d lists=%d vertices=%d "
            "display=%.1fx%.1f framebuffer_scale=%.1fx%.1f\n",
            ImGui::GetFrameCount(), draw_data->CmdListsCount,
            draw_data->TotalVtxCount, draw_data->DisplaySize.x,
            draw_data->DisplaySize.y, draw_data->FramebufferScale.x,
            draw_data->FramebufferScale.y);
    reported = true;
  }
  if (ImGui::GetFrameCount() < 3) {
    return false;
  }

  int width = std::min<int>(fb_width, 960);
  int height = std::min<int>(fb_height, 720);
  size_t row_stride = static_cast<size_t>(width) * 3;
  size_t data_size = row_stride * static_cast<size_t>(height);
  unsigned char *pixels = static_cast<unsigned char *>(malloc(data_size));
  if (pixels == nullptr) {
    return false;
  }

  bool wrote_capture = false;
  g_gl.pixel_store_i(GL_PACK_ALIGNMENT, 1);
  if (g_gl.read_buffer != nullptr) {
    g_gl.read_buffer(GL_BACK);
  }
  g_gl.read_pixels(0, 0, width, height, GL_RGB, GL_UNSIGNED_BYTE, pixels);

  FILE *file = fopen(path, "wb");
  if (file != nullptr) {
    fprintf(file, "P6\n%d %d\n255\n", width, height);
    for (int y = height - 1; y >= 0; --y) {
      fwrite(pixels + static_cast<size_t>(y) * row_stride, 1, row_stride, file);
    }
    fclose(file);
    captured = true;
    wrote_capture = true;
  }
  free(pixels);
  return wrote_capture;
}

extern "C" {

MOONBIT_FFI_EXPORT void *moonbit_imgui_backend_create_window(
    moonbit_bytes_t title, int32_t title_offset, int32_t title_len,
    int32_t title_total_len, int32_t width, int32_t height,
    moonbit_bytes_t glsl, int32_t glsl_offset, int32_t glsl_len,
    int32_t glsl_total_len, int32_t vsync) {
  if (!g_windows.empty() ||
      label_is_empty(title, title_offset, title_len, title_total_len) ||
      width <= 0 || height <= 0) {
    return nullptr;
  }
  if (!glfwInit()) {
    return nullptr;
  }

#if defined(__APPLE__)
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#else
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
#endif

  std::string title_storage;
  const char *title_text = slice_to_cstr(
      title, title_offset, title_len, title_total_len, title_storage);
  GLFWwindow *glfw_window = glfwCreateWindow(width, height, title_text, nullptr,
                                            nullptr);
  if (glfw_window == nullptr) {
    glfwTerminate();
    return nullptr;
  }

  moonbit_imgui_backend_window_t *handle =
      new (std::nothrow) moonbit_imgui_backend_window_t();
  if (handle == nullptr) {
    glfwDestroyWindow(glfw_window);
    glfwTerminate();
    return nullptr;
  }
  std::string glsl_storage;
  handle->alive = true;
  handle->vsync = vsync != 0;
  handle->window = glfw_window;
  handle->glsl_version =
      slice_to_cstr(glsl, glsl_offset, glsl_len, glsl_total_len, glsl_storage);
  if (handle->glsl_version.empty()) {
    handle->glsl_version = "#version 130";
  }

  glfwMakeContextCurrent(glfw_window);
  glfwSwapInterval(handle->vsync ? 1 : 0);
  g_windows.insert(handle);
  return handle;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_should_close(void *window) {
  if (!valid_window_handle(window)) {
    return 1;
  }
  moonbit_imgui_backend_window_t *handle =
      static_cast<moonbit_imgui_backend_window_t *>(window);
  if (!handle->alive || handle->window == nullptr) {
    return 1;
  }
  return glfwWindowShouldClose(handle->window) ? 1 : 0;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_window_is_null(void *window) {
  return window == nullptr ? 1 : 0;
}

MOONBIT_FFI_EXPORT void *moonbit_imgui_backend_null_window(void) {
  return nullptr;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_backend_poll_events(void *window) {
  if (!valid_window_handle(window)) {
    return;
  }
  moonbit_imgui_backend_window_t *handle =
      static_cast<moonbit_imgui_backend_window_t *>(window);
  if (!handle->alive) {
    return;
  }
  glfwPollEvents();
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_new_frame(void *window) {
  if (!valid_window_handle(window)) {
    return 0;
  }
  moonbit_imgui_backend_window_t *handle =
      static_cast<moonbit_imgui_backend_window_t *>(window);
  if (!ensure_backend_initialized(handle)) {
    return 0;
  }
  glfwMakeContextCurrent(handle->window);
  ImGui_ImplOpenGL3_NewFrame();
  ImGui_ImplGlfw_NewFrame();
  ImGui::NewFrame();
  return 1;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_render(void *window,
                                                        void *draw_data) {
  if (!valid_window_handle(window)) {
    return 0;
  }
  moonbit_imgui_backend_window_t *handle =
      static_cast<moonbit_imgui_backend_window_t *>(window);
  if (!handle->alive || handle->window == nullptr) {
    return 0;
  }

  ImDrawData *data = static_cast<ImDrawData *>(draw_data);
  if (data == nullptr && has_context()) {
    data = ImGui::GetDrawData();
  }
  if (data == nullptr) {
    return 0;
  }

  glfwMakeContextCurrent(handle->window);
  int fb_width = 0;
  int fb_height = 0;
  glfwGetFramebufferSize(handle->window, &fb_width, &fb_height);
  if (!ensure_gl_functions()) {
    return 0;
  }
  g_gl.viewport(0, 0, fb_width, fb_height);
  g_gl.clear_color(0.10f, 0.11f, 0.13f, 1.0f);
  g_gl.clear(GL_COLOR_BUFFER_BIT);
  ImGui_ImplOpenGL3_RenderDrawData(data);
  bool wrote_capture = capture_frame_if_requested(data, fb_width, fb_height);
  glfwSwapBuffers(handle->window);
  if (wrote_capture) {
    glfwSetWindowShouldClose(handle->window, GLFW_TRUE);
    handle->alive = false;
  }
  return 1;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_backend_destroy_window(void *window) {
  if (!valid_window_handle(window)) {
    return;
  }
  moonbit_imgui_backend_window_t *handle =
      static_cast<moonbit_imgui_backend_window_t *>(window);
  shutdown_backend(handle);
  handle->alive = false;
  if (handle->window != nullptr) {
    glfwDestroyWindow(handle->window);
    handle->window = nullptr;
  }
  g_windows.erase(handle);
  delete handle;
  if (g_windows.empty()) {
    glfwTerminate();
  }
}

} // extern "C"

#else

#include <cstdint>

extern "C" {

MOONBIT_FFI_EXPORT void *moonbit_imgui_backend_create_window(
    moonbit_bytes_t, int32_t, int32_t, int32_t, int32_t, int32_t,
    moonbit_bytes_t, int32_t, int32_t, int32_t, int32_t) {
  return nullptr;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_should_close(void *) {
  return 1;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_window_is_null(void *window) {
  return window == nullptr ? 1 : 0;
}

MOONBIT_FFI_EXPORT void *moonbit_imgui_backend_null_window(void) {
  return nullptr;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_backend_poll_events(void *) {}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_new_frame(void *) {
  return 0;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_render(void *, void *) {
  return 0;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_backend_destroy_window(void *) {}

} // extern "C"

#endif
