#include <moonbit.h>

#include "upstream/imgui/imgui.h"

#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <string>
#include <unordered_set>
#include <vector>

static constexpr int kBridgeVersion = 3;
static constexpr int kDearImguiVersionNumber = IMGUI_VERSION_NUM;
static std::unordered_set<void *> g_contexts;

static bool valid_slice(int32_t offset, int32_t len, int32_t total_len) {
  return offset >= 0 && len >= 0 && total_len >= 0 && offset <= total_len &&
         len <= total_len - offset;
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
  return context != nullptr && g_contexts.find(context) != g_contexts.end();
}

static void configure_context_defaults() {
  if (!has_context()) {
    return;
  }
  ImGuiIO &io = ImGui::GetIO();
  io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
  io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;
  io.DisplaySize = ImVec2(640.0f, 480.0f);
  io.DeltaTime = 1.0f / 60.0f;
  io.IniFilename = nullptr;
  io.LogFilename = nullptr;
  ImGui::StyleColorsDark();
}

static void ensure_headless_font_atlas() {
  ImGuiIO &io = ImGui::GetIO();
  if ((io.BackendFlags & ImGuiBackendFlags_RendererHasTextures) == 0 &&
      !io.Fonts->TexIsBuilt) {
    unsigned char *pixels = nullptr;
    int width = 0;
    int height = 0;
    io.Fonts->GetTexDataAsRGBA32(&pixels, &width, &height);
  }
}

extern "C" {

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_bridge_mode(void) {
  return 1;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_bridge_version(void) {
  return kBridgeVersion;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_version_number(void) {
  return kDearImguiVersionNumber;
}

MOONBIT_FFI_EXPORT void *moonbit_imgui_create_context(void) {
  IMGUI_CHECKVERSION();
  ImGuiContext *ctx = ImGui::CreateContext();
  ImGui::SetCurrentContext(ctx);
  g_contexts.insert(ctx);
  configure_context_defaults();
  return ctx;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_destroy_context(void *context) {
  ImGuiContext *ctx = static_cast<ImGuiContext *>(context);
  if (ctx == nullptr || !is_tracked_context(ctx)) {
    return;
  }
  g_contexts.erase(ctx);
  ImGui::DestroyContext(ctx);
}

MOONBIT_FFI_EXPORT void moonbit_imgui_set_current_context(void *context) {
  ImGuiContext *ctx = static_cast<ImGuiContext *>(context);
  if (ctx == nullptr || is_tracked_context(ctx)) {
    ImGui::SetCurrentContext(ctx);
  } else {
    ImGui::SetCurrentContext(nullptr);
  }
}

MOONBIT_FFI_EXPORT void moonbit_imgui_clear_current_context(void) {
  ImGui::SetCurrentContext(nullptr);
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_has_current_context(void) {
  return has_context() ? 1 : 0;
}


MOONBIT_FFI_EXPORT int32_t moonbit_imgui_context_is_tracked(void *context) {
  return is_tracked_context(static_cast<ImGuiContext *>(context)) ? 1 : 0;
}

MOONBIT_FFI_EXPORT void *moonbit_imgui_get_io(void) {
  return has_context() ? &ImGui::GetIO() : nullptr;
}

MOONBIT_FFI_EXPORT void *moonbit_imgui_get_style(void) {
  return has_context() ? &ImGui::GetStyle() : nullptr;
}

MOONBIT_FFI_EXPORT void *moonbit_imgui_get_font_atlas(void) {
  return has_context() ? ImGui::GetIO().Fonts : nullptr;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_new_frame(void) {
  if (!has_context()) {
    return;
  }
  ImGuiIO &io = ImGui::GetIO();
  if (io.DisplaySize.x <= 0.0f || io.DisplaySize.y <= 0.0f) {
    io.DisplaySize = ImVec2(640.0f, 480.0f);
  }
  if (io.DeltaTime <= 0.0f) {
    io.DeltaTime = 1.0f / 60.0f;
  }
  ensure_headless_font_atlas();
  ImGui::NewFrame();
}

MOONBIT_FFI_EXPORT void moonbit_imgui_end_frame(void) {
  if (has_context()) {
    ImGui::EndFrame();
  }
}

MOONBIT_FFI_EXPORT void moonbit_imgui_render(void) {
  if (has_context()) {
    ImGui::Render();
  }
}

MOONBIT_FFI_EXPORT void *moonbit_imgui_get_draw_data(void) {
  return has_context() ? ImGui::GetDrawData() : nullptr;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_frame_count(void) {
  return has_context() ? static_cast<int32_t>(ImGui::GetFrameCount()) : 0;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_begin(moonbit_bytes_t title,
                                               int32_t offset, int32_t len,
                                               int32_t total_len,
                                               int32_t flags) {
  if (!has_context() || label_is_empty(title, offset, len, total_len)) {
    return 0;
  }
  std::string storage;
  const char *label = slice_to_cstr(title, offset, len, total_len, storage);
  return ImGui::Begin(label, nullptr,
                      static_cast<ImGuiWindowFlags>(flags))
             ? 1
             : 0;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_end(void) {
  if (has_context()) {
    ImGui::End();
  }
}

MOONBIT_FFI_EXPORT void moonbit_imgui_text(moonbit_bytes_t value,
                                           int32_t offset, int32_t len,
                                           int32_t total_len) {
  if (!has_context()) {
    return;
  }
  if (!valid_slice(offset, len, total_len)) {
    len = 0;
    offset = 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(value, offset, len, total_len, storage);
  ImGui::TextUnformatted(text, text + len);
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_button(moonbit_bytes_t label,
                                                int32_t offset, int32_t len,
                                                int32_t total_len) {
  if (!has_context()) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  return ImGui::Button(text) ? 1 : 0;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_checkbox(moonbit_bytes_t label,
                                                  int32_t offset, int32_t len,
                                                  int32_t total_len,
                                                  int32_t checked) {
  if (!has_context()) {
    return checked ? 1 : 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  bool value = checked != 0;
  bool changed = ImGui::Checkbox(text, &value);
  return (value ? 1 : 0) | (changed ? 2 : 0);
}

MOONBIT_FFI_EXPORT double moonbit_imgui_slider_float(
    moonbit_bytes_t label, int32_t offset, int32_t len, int32_t total_len,
    double value, double min, double max) {
  if (!has_context()) {
    return value;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  float lo = static_cast<float>(min);
  float hi = static_cast<float>(max);
  float next = static_cast<float>(value);
  if (lo > hi) {
    std::swap(lo, hi);
  }
  next = std::max(lo, std::min(hi, next));
  ImGui::SliderFloat(text, &next, lo, hi);
  return static_cast<double>(next);
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_input_text(
    moonbit_bytes_t label, int32_t label_offset, int32_t label_len,
    int32_t label_total_len, moonbit_bytes_t value, int32_t value_offset,
    int32_t value_len, int32_t value_total_len, int32_t flags,
    moonbit_bytes_t output, int32_t output_len) {
  if (!has_context()) {
    return 0;
  }
  std::string label_storage;
  const char *label_text =
      slice_to_cstr(label, label_offset, label_len, label_total_len,
                    label_storage);
  if (!valid_slice(value_offset, value_len, value_total_len)) {
    value_len = 0;
    value_offset = 0;
  }
  if (output_len < 1) {
    output_len = 1;
  }
  size_t capacity = static_cast<size_t>(output_len);
  std::vector<char> value_buffer(capacity + 1, '\0');
  size_t initial_len = std::min(static_cast<size_t>(value_len), capacity);
  if (value != nullptr && initial_len > 0) {
    memcpy(value_buffer.data(), value + value_offset, initial_len);
  }
  bool changed = ImGui::InputText(label_text, value_buffer.data(),
                                  value_buffer.size(),
                                  static_cast<ImGuiInputTextFlags>(flags));
  size_t actual_len = strnlen(value_buffer.data(), capacity);
  size_t copy_len = 0;
  bool truncated = static_cast<size_t>(value_len) > capacity;
  if (output != nullptr && output_len > 0) {
    copy_len = std::min(actual_len, static_cast<size_t>(output_len));
    memcpy(output, value_buffer.data(), copy_len);
    truncated = truncated || actual_len > static_cast<size_t>(output_len);
  }
  return static_cast<int32_t>((copy_len << 2) | (truncated ? 2 : 0) |
                              (changed ? 1 : 0));
}

MOONBIT_FFI_EXPORT void moonbit_imgui_same_line(void) {
  if (has_context()) {
    ImGui::SameLine();
  }
}

MOONBIT_FFI_EXPORT void moonbit_imgui_separator(void) {
  if (has_context()) {
    ImGui::Separator();
  }
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_begin_menu_bar(void) {
  return has_context() && ImGui::BeginMenuBar() ? 1 : 0;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_end_menu_bar(void) {
  if (has_context()) {
    ImGui::EndMenuBar();
  }
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_begin_menu(moonbit_bytes_t label,
                                                    int32_t offset,
                                                    int32_t len,
                                                    int32_t total_len,
                                                    int32_t enabled) {
  if (!has_context() || label_is_empty(label, offset, len, total_len)) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  return ImGui::BeginMenu(text, enabled != 0)
             ? 1
             : 0;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_end_menu(void) {
  if (has_context()) {
    ImGui::EndMenu();
  }
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_menu_item(moonbit_bytes_t label,
                                                   int32_t offset, int32_t len,
                                                   int32_t total_len,
                                                   int32_t selected) {
  if (!has_context()) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  return ImGui::MenuItem(text, nullptr, selected != 0)
             ? 1
             : 0;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_tree_node(moonbit_bytes_t label,
                                                   int32_t offset, int32_t len,
                                                   int32_t total_len,
                                                   int32_t flags) {
  if (!has_context() || label_is_empty(label, offset, len, total_len)) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  return ImGui::TreeNodeEx(text, static_cast<ImGuiTreeNodeFlags>(flags))
             ? 1
             : 0;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_tree_pop(void) {
  if (has_context()) {
    ImGui::TreePop();
  }
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_collapsing_header(
    moonbit_bytes_t label, int32_t offset, int32_t len, int32_t total_len,
    int32_t flags) {
  if (!has_context()) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  return ImGui::CollapsingHeader(text, static_cast<ImGuiTreeNodeFlags>(flags))
             ? 1
             : 0;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_selectable(moonbit_bytes_t label,
                                                    int32_t offset,
                                                    int32_t len,
                                                    int32_t total_len,
                                                    int32_t selected,
                                                    int32_t flags) {
  if (!has_context()) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  return ImGui::Selectable(text, selected != 0,
                           static_cast<ImGuiSelectableFlags>(flags))
             ? 1
             : 0;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_begin_table(moonbit_bytes_t name,
                                                     int32_t offset,
                                                     int32_t len,
                                                     int32_t total_len,
                                                     int32_t columns,
                                                     int32_t flags) {
  if (!has_context() || columns <= 0 ||
      label_is_empty(name, offset, len, total_len)) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(name, offset, len, total_len, storage);
  return ImGui::BeginTable(text, columns,
                           static_cast<ImGuiTableFlags>(flags))
             ? 1
             : 0;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_table_next_row(void) {
  if (has_context()) {
    ImGui::TableNextRow();
  }
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_table_next_column(void) {
  return has_context() && ImGui::TableNextColumn() ? 1 : 0;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_end_table(void) {
  if (has_context()) {
    ImGui::EndTable();
  }
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_begin_tab_bar(moonbit_bytes_t name,
                                                       int32_t offset,
                                                       int32_t len,
                                                       int32_t total_len,
                                                       int32_t flags) {
  if (!has_context() || label_is_empty(name, offset, len, total_len)) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(name, offset, len, total_len, storage);
  return ImGui::BeginTabBar(text, static_cast<ImGuiTabBarFlags>(flags))
             ? 1
             : 0;
}

MOONBIT_FFI_EXPORT int32_t moonbit_imgui_begin_tab_item(moonbit_bytes_t label,
                                                        int32_t offset,
                                                        int32_t len,
                                                        int32_t total_len) {
  if (!has_context() || label_is_empty(label, offset, len, total_len)) {
    return 0;
  }
  std::string storage;
  const char *text = slice_to_cstr(label, offset, len, total_len, storage);
  return ImGui::BeginTabItem(text) ? 1 : 0;
}

MOONBIT_FFI_EXPORT void moonbit_imgui_end_tab_item(void) {
  if (has_context()) {
    ImGui::EndTabItem();
  }
}

MOONBIT_FFI_EXPORT void moonbit_imgui_end_tab_bar(void) {
  if (has_context()) {
    ImGui::EndTabBar();
  }
}

MOONBIT_FFI_EXPORT void moonbit_imgui_set_next_window_size(double width,
                                                           double height,
                                                           int32_t cond) {
  if (has_context()) {
    ImGui::SetNextWindowSize(
        ImVec2(static_cast<float>(width), static_cast<float>(height)),
        static_cast<ImGuiCond>(cond));
  }
}

MOONBIT_FFI_EXPORT void moonbit_imgui_show_demo_window(int32_t open) {
  if (has_context() && open) {
    bool show = true;
    ImGui::ShowDemoWindow(&show);
  }
}

} // extern "C"
