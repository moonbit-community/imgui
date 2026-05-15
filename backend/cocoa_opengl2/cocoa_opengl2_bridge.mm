#define GL_SILENCE_DEPRECATION

#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#import <Cocoa/Cocoa.h>
#import <OpenGL/gl.h>

#include <moonbit.h>

#include "../../raw/upstream/imgui/imgui.h"
#include "../../raw/upstream/imgui/backends/imgui_impl_opengl2.h"
#include "../../raw/upstream/imgui/backends/imgui_impl_osx.h"

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <unordered_set>

@interface MoonBitImGuiOpenGLView : NSOpenGLView
@end

@implementation MoonBitImGuiOpenGLView
- (BOOL)acceptsFirstResponder {
  return YES;
}

- (void)reshape {
  [super reshape];
  [[self openGLContext] update];
}
@end

typedef struct {
  bool alive;
  int width;
  int height;
  bool vsync;
  bool backend_initialized;
  ImGuiContext *context;
  NSWindow *window;
  MoonBitImGuiOpenGLView *view;
} moonbit_imgui_backend_window_t;

static std::unordered_set<void *> g_windows;
static void *g_backend_owner = nullptr;

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

extern "C" int32_t moonbit_imgui_context_is_tracked(void *context);

static bool is_tracked_context(ImGuiContext *context) {
  return context != nullptr && moonbit_imgui_context_is_tracked(context) == 1;
}

static bool ensure_app() {
  if (![NSThread isMainThread]) {
    return false;
  }
  [NSApplication sharedApplication];
  [NSApp setActivationPolicy:NSApplicationActivationPolicyRegular];
  [NSApp finishLaunching];

  if ([NSApp mainMenu] == nil) {
    NSMenu *main_menu = [[NSMenu alloc] init];
    NSMenuItem *app_item = [[NSMenuItem alloc] init];
    NSMenu *app_menu = [[NSMenu alloc] initWithTitle:@"MoonBit Dear ImGui"];
    NSMenuItem *quit_item =
        [[NSMenuItem alloc] initWithTitle:@"Quit MoonBit Dear ImGui"
                                   action:@selector(terminate:)
                            keyEquivalent:@"q"];
    [app_menu addItem:quit_item];
    [app_item setSubmenu:app_menu];
    [main_menu addItem:app_item];
    [NSApp setMainMenu:main_menu];
    [quit_item release];
    [app_menu release];
    [app_item release];
    [main_menu release];
  }
  return true;
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
  if (window->view != nil) {
    [[window->view openGLContext] makeCurrentContext];
  }
  if (owner_is_valid) {
    ImGui_ImplOpenGL2_Shutdown();
    ImGui_ImplOSX_Shutdown();
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
  if (window == nullptr || !window->alive || window->view == nil ||
      !has_context() || ![NSThread isMainThread]) {
    return false;
  }
  if (g_backend_owner != nullptr && g_backend_owner != window) {
    return false;
  }
  if (window->backend_initialized) {
    return true;
  }

  [[window->view openGLContext] makeCurrentContext];
  GLint swap_interval = window->vsync ? 1 : 0;
  [[window->view openGLContext] setValues:&swap_interval
                             forParameter:NSOpenGLCPSwapInterval];

  ImGui_ImplOSX_Init(window->view);
  ImGui_ImplOpenGL2_Init();
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
  glPixelStorei(GL_PACK_ALIGNMENT, 1);
  glReadBuffer(GL_BACK);
  glReadPixels(0, 0, width, height, GL_RGB, GL_UNSIGNED_BYTE, pixels);

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
  (void)glsl;
  (void)glsl_offset;
  (void)glsl_len;
  (void)glsl_total_len;
  if (![NSThread isMainThread] || !g_windows.empty() ||
      label_is_empty(title, title_offset, title_len, title_total_len) ||
      width <= 0 || height <= 0) {
    return nullptr;
  }

  @autoreleasepool {
    if (!ensure_app()) {
      return nullptr;
    }

    moonbit_imgui_backend_window_t *handle =
        static_cast<moonbit_imgui_backend_window_t *>(
            calloc(1, sizeof(moonbit_imgui_backend_window_t)));
    if (handle == nullptr) {
      return nullptr;
    }
    handle->alive = true;
    handle->width = width;
    handle->height = height;
    handle->vsync = vsync != 0;

    NSOpenGLPixelFormatAttribute attrs[] = {
        NSOpenGLPFADoubleBuffer, NSOpenGLPFAAccelerated, NSOpenGLPFADepthSize,
        24, 0};
    NSOpenGLPixelFormat *format =
        [[NSOpenGLPixelFormat alloc] initWithAttributes:attrs];
    if (format == nil) {
      free(handle);
      return nullptr;
    }

    NSRect rect = NSMakeRect(120.0, 120.0, width, height);
    MoonBitImGuiOpenGLView *view =
        [[MoonBitImGuiOpenGLView alloc] initWithFrame:NSMakeRect(0.0, 0.0, width, height)
                                          pixelFormat:format];
    [format release];
    [view setWantsBestResolutionOpenGLSurface:YES];

    NSUInteger style = NSWindowStyleMaskTitled | NSWindowStyleMaskClosable |
                       NSWindowStyleMaskMiniaturizable |
                       NSWindowStyleMaskResizable;
    NSWindow *window =
        [[NSWindow alloc] initWithContentRect:rect
                                    styleMask:style
                                      backing:NSBackingStoreBuffered
                                        defer:NO];

    if (view == nil || window == nil) {
      [view release];
      [window release];
      free(handle);
      return nullptr;
    }
    [window setReleasedWhenClosed:NO];

    std::string title_storage;
    const char *title_text = slice_to_cstr(
        title, title_offset, title_len, title_total_len, title_storage);
    [window setTitle:[NSString stringWithUTF8String:title_text]];
    [window setContentView:view];
    [view release];
    [window setAcceptsMouseMovedEvents:YES];
    [window setOpaque:YES];
    [window makeFirstResponder:view];
    [window makeKeyAndOrderFront:nil];
    [window orderFrontRegardless];
    [window display];
    [NSApp activateIgnoringOtherApps:YES];
    [[NSRunningApplication currentApplication]
        activateWithOptions:NSApplicationActivateIgnoringOtherApps |
                            NSApplicationActivateAllWindows];

    handle->window = window;
    handle->view = view;
    g_windows.insert(handle);
    return handle;
  }
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_backend_should_close(void *window) {
  if (!valid_window_handle(window)) {
    return 1;
  }
  moonbit_imgui_backend_window_t *handle =
      static_cast<moonbit_imgui_backend_window_t *>(window);
  if (!handle->alive || handle->window == nil) {
    return 1;
  }
  return [handle->window isVisible] ? 0 : 1;
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

  @autoreleasepool {
    for (;;) {
      NSEvent *event =
          [NSApp nextEventMatchingMask:NSEventMaskAny
                             untilDate:[NSDate distantPast]
                                inMode:NSDefaultRunLoopMode
                               dequeue:YES];
      if (event == nil) {
        break;
      }
      [NSApp sendEvent:event];
    }
    [NSApp updateWindows];
  }
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
  [[handle->view openGLContext] makeCurrentContext];
  ImGui_ImplOpenGL2_NewFrame();
  ImGui_ImplOSX_NewFrame(handle->view);
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
  if (!handle->alive || handle->view == nil) {
    return 0;
  }

  ImDrawData *data = static_cast<ImDrawData *>(draw_data);
  if (data == nullptr && has_context()) {
    data = ImGui::GetDrawData();
  }
  if (data == nullptr) {
    return 0;
  }

  [[handle->view openGLContext] makeCurrentContext];
  NSRect bounds = [handle->view bounds];
  CGFloat scale = handle->window.screen.backingScaleFactor;
  if (scale <= 0.0) {
    scale = [NSScreen mainScreen].backingScaleFactor;
  }
  GLsizei fb_width = static_cast<GLsizei>(bounds.size.width * scale);
  GLsizei fb_height = static_cast<GLsizei>(bounds.size.height * scale);
  glViewport(0, 0, fb_width, fb_height);
  glClearColor(0.10f, 0.11f, 0.13f, 1.0f);
  glClear(GL_COLOR_BUFFER_BIT);
  ImGui_ImplOpenGL2_RenderDrawData(data);
  bool wrote_capture = capture_frame_if_requested(data, fb_width, fb_height);
  [[handle->view openGLContext] flushBuffer];
  if (wrote_capture) {
    [handle->window close];
    handle->alive = false;
  }

  if (handle->vsync) {
    [NSThread sleepForTimeInterval:1.0 / 240.0];
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
  if (handle->window != nil) {
    [handle->window close];
    [handle->window release];
    handle->window = nil;
    handle->view = nil;
  }
  g_windows.erase(handle);
  free(handle);
}


} // extern "C"
