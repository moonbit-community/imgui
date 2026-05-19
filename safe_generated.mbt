///|
/// Generated safe wrappers over `moonbit-community/imgui/raw/generated`.
///
/// This layer checks the current ImGui context for normal `ImGui_*` calls
/// and converts MoonBit UTF-16 `String` parameters to UTF-8 `const char*`.
/// `const char*` begin/end ranges expose one full `String` and pass
/// a null end pointer to Dear ImGui.

///|
/// Number of Dear Bindings functions exposed by the generated safe layer.
pub fn safe_generated_bound_symbols() -> Int {
  725
}

///|
/// Number of Dear Bindings functions considered by the generated safe layer.
pub fn safe_generated_total_symbols() -> Int {
  760
}

///|
/// Safe generated function coverage percentage.
pub fn safe_generated_coverage_percent() -> Double {
  95.3947
}

///|
/// Safe generated wrapper for `ImTextureRef_GetTexID`.
pub fn texture_ref_get_tex_id(_p0 : @raw_generated.ImTextureRef) -> UInt64 {
  @raw_generated.im_texture_ref_get_tex_id(_p0)
}

///|
/// Safe generated wrapper for `ImGui_CreateContext`.
pub fn create_context(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImGuiContext {
  @raw_generated.im_gui_create_context(_p0)
}

///|
/// Safe generated wrapper for `ImGui_DestroyContext`.
pub fn destroy_context(_p0 : @raw_generated.ImGuiContext) -> Unit {
  @raw_generated.im_gui_destroy_context(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetCurrentContext`.
pub fn get_current_context() -> @raw_generated.ImGuiContext {
  @raw_generated.im_gui_get_current_context()
}

///|
/// Safe generated wrapper for `ImGui_SetCurrentContext`.
pub fn set_current_context(_p0 : @raw_generated.ImGuiContext) -> Unit {
  @raw_generated.im_gui_set_current_context(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetIO`.
pub fn get_io() -> @raw_generated.ImGuiIO raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_io()
}

///|
/// Safe generated wrapper for `ImGui_GetPlatformIO`.
pub fn get_platform_io() -> @raw_generated.ImGuiPlatformIO raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_platform_io()
}

///|
/// Safe generated wrapper for `ImGui_GetStyle`.
pub fn get_style() -> @raw_generated.ImGuiStyle raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_style()
}

///|
/// Safe generated wrapper for `ImGui_NewFrame`.
pub fn new_frame_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_new_frame()
}

///|
/// Safe generated wrapper for `ImGui_EndFrame`.
pub fn end_frame_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_frame()
}

///|
/// Safe generated wrapper for `ImGui_Render`.
pub fn render_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_render()
}

///|
/// Safe generated wrapper for `ImGui_GetDrawData`.
pub fn get_draw_data() -> @raw_generated.ImDrawData raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_draw_data()
}

///|
/// Safe generated wrapper for `ImGui_ShowDemoWindow`.
pub fn show_demo_window_generated(
  _p0 : @raw_generated.BoolPtr,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_show_demo_window(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ShowMetricsWindow`.
pub fn show_metrics_window(
  _p0 : @raw_generated.BoolPtr,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_show_metrics_window(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ShowDebugLogWindow`.
pub fn show_debug_log_window(
  _p0 : @raw_generated.BoolPtr,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_show_debug_log_window(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ShowIDStackToolWindow`.
pub fn show_id_stack_tool_window() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_show_id_stack_tool_window()
}

///|
/// Safe generated wrapper for `ImGui_ShowIDStackToolWindowEx`.
pub fn show_id_stack_tool_window_ex(
  _p0 : @raw_generated.BoolPtr,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_show_id_stack_tool_window_ex(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ShowAboutWindow`.
pub fn show_about_window(_p0 : @raw_generated.BoolPtr) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_show_about_window(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ShowStyleEditor`.
pub fn show_style_editor(
  _p0 : @raw_generated.ImGuiStyle,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_show_style_editor(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ShowStyleSelector`.
pub fn show_style_selector(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_show_style_selector(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_ShowFontSelector`.
pub fn show_font_selector(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_show_font_selector(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_ShowUserGuide`.
pub fn show_user_guide() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_show_user_guide()
}

///|
/// Safe generated wrapper for `ImGui_GetVersion`.
pub fn get_version() -> String {
  @raw_generated.cstring_to_string(@raw_generated.im_gui_get_version())
}

///|
/// Safe generated wrapper for `ImGui_StyleColorsDark`.
pub fn style_colors_dark(
  _p0 : @raw_generated.ImGuiStyle,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_style_colors_dark(_p0)
}

///|
/// Safe generated wrapper for `ImGui_StyleColorsLight`.
pub fn style_colors_light(
  _p0 : @raw_generated.ImGuiStyle,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_style_colors_light(_p0)
}

///|
/// Safe generated wrapper for `ImGui_StyleColorsClassic`.
pub fn style_colors_classic(
  _p0 : @raw_generated.ImGuiStyle,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_style_colors_classic(_p0)
}

///|
/// Safe generated wrapper for `ImGui_Begin`.
pub fn begin(
  _p0 : String,
  _p1 : @raw_generated.BoolPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_End`.
pub fn end() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end()
}

///|
/// Safe generated wrapper for `ImGui_BeginChild`.
pub fn begin_child(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_child(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_BeginChildID`.
pub fn begin_child_id(
  _p0 : UInt,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_child_id(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_EndChild`.
pub fn end_child() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_child()
}

///|
/// Safe generated wrapper for `ImGui_IsWindowAppearing`.
pub fn is_window_appearing() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_window_appearing()
}

///|
/// Safe generated wrapper for `ImGui_IsWindowCollapsed`.
pub fn is_window_collapsed() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_window_collapsed()
}

///|
/// Safe generated wrapper for `ImGui_IsWindowFocused`.
pub fn is_window_focused(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_window_focused(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsWindowHovered`.
pub fn is_window_hovered(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_window_hovered(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetWindowDrawList`.
pub fn get_window_draw_list() -> @raw_generated.ImDrawList raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_window_draw_list()
}

///|
/// Safe generated wrapper for `ImGui_GetWindowPos`.
pub fn get_window_pos() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_window_pos()
}

///|
/// Safe generated wrapper for `ImGui_GetWindowSize`.
pub fn get_window_size() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_window_size()
}

///|
/// Safe generated wrapper for `ImGui_GetWindowWidth`.
pub fn get_window_width() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_window_width()
}

///|
/// Safe generated wrapper for `ImGui_GetWindowHeight`.
pub fn get_window_height() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_window_height()
}

///|
/// Safe generated wrapper for `ImGui_SetNextWindowPos`.
pub fn set_next_window_pos(
  _p0 : @raw_generated.ImVec2,
  _p1 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_window_pos(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetNextWindowPosEx`.
pub fn set_next_window_pos_ex(
  _p0 : @raw_generated.ImVec2,
  _p1 : Int,
  _p2 : @raw_generated.ImVec2,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_window_pos_ex(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_SetNextWindowSize`.
pub fn set_next_window_size_generated(
  _p0 : @raw_generated.ImVec2,
  _p1 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_window_size(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetNextWindowContentSize`.
pub fn set_next_window_content_size(
  _p0 : @raw_generated.ImVec2,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_window_content_size(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetNextWindowCollapsed`.
pub fn set_next_window_collapsed(
  _p0 : Bool,
  _p1 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_window_collapsed(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetNextWindowFocus`.
pub fn set_next_window_focus() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_window_focus()
}

///|
/// Safe generated wrapper for `ImGui_SetNextWindowScroll`.
pub fn set_next_window_scroll(
  _p0 : @raw_generated.ImVec2,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_window_scroll(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetNextWindowBgAlpha`.
pub fn set_next_window_bg_alpha(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_window_bg_alpha(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetWindowPos`.
pub fn set_window_pos(
  _p0 : @raw_generated.ImVec2,
  _p1 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_window_pos(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetWindowSize`.
pub fn set_window_size(
  _p0 : @raw_generated.ImVec2,
  _p1 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_window_size(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetWindowCollapsed`.
pub fn set_window_collapsed(_p0 : Bool, _p1 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_window_collapsed(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetWindowFocus`.
pub fn set_window_focus() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_window_focus()
}

///|
/// Safe generated wrapper for `ImGui_SetWindowPosStr`.
pub fn set_window_pos_str(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_window_pos_str(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_SetWindowSizeStr`.
pub fn set_window_size_str(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_window_size_str(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_SetWindowCollapsedStr`.
pub fn set_window_collapsed_str(
  _p0 : String,
  _p1 : Bool,
  _p2 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_window_collapsed_str(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_SetWindowFocusStr`.
pub fn set_window_focus_str(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_window_focus_str(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_GetScrollX`.
pub fn get_scroll_x() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_scroll_x()
}

///|
/// Safe generated wrapper for `ImGui_GetScrollY`.
pub fn get_scroll_y() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_scroll_y()
}

///|
/// Safe generated wrapper for `ImGui_SetScrollX`.
pub fn set_scroll_x(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_scroll_x(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetScrollY`.
pub fn set_scroll_y(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_scroll_y(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetScrollMaxX`.
pub fn get_scroll_max_x() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_scroll_max_x()
}

///|
/// Safe generated wrapper for `ImGui_GetScrollMaxY`.
pub fn get_scroll_max_y() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_scroll_max_y()
}

///|
/// Safe generated wrapper for `ImGui_SetScrollHereX`.
pub fn set_scroll_here_x(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_scroll_here_x(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetScrollHereY`.
pub fn set_scroll_here_y(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_scroll_here_y(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetScrollFromPosX`.
pub fn set_scroll_from_pos_x(_p0 : Float, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_scroll_from_pos_x(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetScrollFromPosY`.
pub fn set_scroll_from_pos_y(_p0 : Float, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_scroll_from_pos_y(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PushFontFloat`.
pub fn push_font_float(
  _p0 : @raw_generated.ImFont,
  _p1 : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_font_float(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PopFont`.
pub fn pop_font() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_font()
}

///|
/// Safe generated wrapper for `ImGui_GetFont`.
pub fn get_font() -> @raw_generated.ImFont raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_font()
}

///|
/// Safe generated wrapper for `ImGui_GetFontSize`.
pub fn get_font_size() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_font_size()
}

///|
/// Safe generated wrapper for `ImGui_GetFontBaked`.
pub fn get_font_baked() -> @raw_generated.ImFontBaked raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_font_baked()
}

///|
/// Safe generated wrapper for `ImGui_PushStyleColor`.
pub fn push_style_color(_p0 : Int, _p1 : UInt) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_style_color(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PushStyleColorImVec4Ptr`.
pub fn push_style_color_im_vec4_ptr(
  _p0 : Int,
  _p1 : @raw_generated.ImVec4,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_style_color_im_vec4_ptr(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PopStyleColor`.
pub fn pop_style_color() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_style_color()
}

///|
/// Safe generated wrapper for `ImGui_PopStyleColorEx`.
pub fn pop_style_color_ex(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_style_color_ex(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PushStyleVar`.
pub fn push_style_var(_p0 : Int, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_style_var(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PushStyleVarImVec2Ptr`.
pub fn push_style_var_im_vec2_ptr(
  _p0 : Int,
  _p1 : @raw_generated.ImVec2,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_style_var_im_vec2_ptr(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PushStyleVarX`.
pub fn push_style_var_x(_p0 : Int, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_style_var_x(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PushStyleVarY`.
pub fn push_style_var_y(_p0 : Int, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_style_var_y(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PopStyleVar`.
pub fn pop_style_var() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_style_var()
}

///|
/// Safe generated wrapper for `ImGui_PopStyleVarEx`.
pub fn pop_style_var_ex(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_style_var_ex(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PushItemFlag`.
pub fn push_item_flag(_p0 : Int, _p1 : Bool) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_item_flag(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_PopItemFlag`.
pub fn pop_item_flag() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_item_flag()
}

///|
/// Safe generated wrapper for `ImGui_PushItemWidth`.
pub fn push_item_width(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_item_width(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PopItemWidth`.
pub fn pop_item_width() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_item_width()
}

///|
/// Safe generated wrapper for `ImGui_SetNextItemWidth`.
pub fn set_next_item_width(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_item_width(_p0)
}

///|
/// Safe generated wrapper for `ImGui_CalcItemWidth`.
pub fn calc_item_width() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_calc_item_width()
}

///|
/// Safe generated wrapper for `ImGui_PushTextWrapPos`.
pub fn push_text_wrap_pos(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_text_wrap_pos(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PopTextWrapPos`.
pub fn pop_text_wrap_pos() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_text_wrap_pos()
}

///|
/// Safe generated wrapper for `ImGui_GetFontTexUvWhitePixel`.
pub fn get_font_tex_uv_white_pixel() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_font_tex_uv_white_pixel()
}

///|
/// Safe generated wrapper for `ImGui_GetColorU32`.
pub fn get_color_u32(_p0 : Int) -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_color_u32(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetColorU32Ex`.
pub fn get_color_u32_ex(_p0 : Int, _p1 : Float) -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_color_u32_ex(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_GetColorU32ImVec4`.
pub fn get_color_u32_im_vec4(
  _p0 : @raw_generated.ImVec4,
) -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_color_u32_im_vec4(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetColorU32ImU32`.
pub fn get_color_u32_im_u32(_p0 : UInt) -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_color_u32_im_u32(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetColorU32ImU32Ex`.
pub fn get_color_u32_im_u32_ex(
  _p0 : UInt,
  _p1 : Float,
) -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_color_u32_im_u32_ex(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_GetStyleColorVec4`.
pub fn get_style_color_vec4(
  _p0 : Int,
) -> @raw_generated.ImVec4 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_style_color_vec4(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetCursorScreenPos`.
pub fn get_cursor_screen_pos() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_cursor_screen_pos()
}

///|
/// Safe generated wrapper for `ImGui_SetCursorScreenPos`.
pub fn set_cursor_screen_pos(
  _p0 : @raw_generated.ImVec2,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_cursor_screen_pos(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetContentRegionAvail`.
pub fn get_content_region_avail() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_content_region_avail()
}

///|
/// Safe generated wrapper for `ImGui_GetCursorPos`.
pub fn get_cursor_pos() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_cursor_pos()
}

///|
/// Safe generated wrapper for `ImGui_GetCursorPosX`.
pub fn get_cursor_pos_x() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_cursor_pos_x()
}

///|
/// Safe generated wrapper for `ImGui_GetCursorPosY`.
pub fn get_cursor_pos_y() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_cursor_pos_y()
}

///|
/// Safe generated wrapper for `ImGui_SetCursorPos`.
pub fn set_cursor_pos(_p0 : @raw_generated.ImVec2) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_cursor_pos(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetCursorPosX`.
pub fn set_cursor_pos_x(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_cursor_pos_x(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetCursorPosY`.
pub fn set_cursor_pos_y(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_cursor_pos_y(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetCursorStartPos`.
pub fn get_cursor_start_pos() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_cursor_start_pos()
}

///|
/// Safe generated wrapper for `ImGui_Separator`.
pub fn separator_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_separator()
}

///|
/// Safe generated wrapper for `ImGui_SameLine`.
pub fn same_line_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_same_line()
}

///|
/// Safe generated wrapper for `ImGui_SameLineEx`.
pub fn same_line_ex(_p0 : Float, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_same_line_ex(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_NewLine`.
pub fn new_line() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_new_line()
}

///|
/// Safe generated wrapper for `ImGui_Spacing`.
pub fn spacing() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_spacing()
}

///|
/// Safe generated wrapper for `ImGui_Dummy`.
pub fn dummy(_p0 : @raw_generated.ImVec2) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_dummy(_p0)
}

///|
/// Safe generated wrapper for `ImGui_Indent`.
pub fn indent() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_indent()
}

///|
/// Safe generated wrapper for `ImGui_IndentEx`.
pub fn indent_ex(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_indent_ex(_p0)
}

///|
/// Safe generated wrapper for `ImGui_Unindent`.
pub fn unindent() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_unindent()
}

///|
/// Safe generated wrapper for `ImGui_UnindentEx`.
pub fn unindent_ex(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_unindent_ex(_p0)
}

///|
/// Safe generated wrapper for `ImGui_BeginGroup`.
pub fn begin_group() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_group()
}

///|
/// Safe generated wrapper for `ImGui_EndGroup`.
pub fn end_group() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_group()
}

///|
/// Safe generated wrapper for `ImGui_AlignTextToFramePadding`.
pub fn align_text_to_frame_padding() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_align_text_to_frame_padding()
}

///|
/// Safe generated wrapper for `ImGui_GetTextLineHeight`.
pub fn get_text_line_height() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_text_line_height()
}

///|
/// Safe generated wrapper for `ImGui_GetTextLineHeightWithSpacing`.
pub fn get_text_line_height_with_spacing() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_text_line_height_with_spacing()
}

///|
/// Safe generated wrapper for `ImGui_GetFrameHeight`.
pub fn get_frame_height() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_frame_height()
}

///|
/// Safe generated wrapper for `ImGui_GetFrameHeightWithSpacing`.
pub fn get_frame_height_with_spacing() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_frame_height_with_spacing()
}

///|
/// Safe generated wrapper for `ImGui_PushID`.
pub fn push_id(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_push_id(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_PushIDStr`.
pub fn push_id_str(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_push_id_str(_c0.raw(), @raw_generated.null_c_string())
}

///|
/// Safe generated wrapper for `ImGui_PushIDPtr`.
pub fn push_id_ptr(_p0 : @raw_generated.VoidPtr) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_id_ptr(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PushIDInt`.
pub fn push_id_int(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_id_int(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PopID`.
pub fn pop_id() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_id()
}

///|
/// Safe generated wrapper for `ImGui_GetID`.
pub fn get_id(_p0 : String) -> UInt raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_get_id(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_GetIDStr`.
pub fn get_id_str(_p0 : String) -> UInt raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_get_id_str(_c0.raw(), @raw_generated.null_c_string())
}

///|
/// Safe generated wrapper for `ImGui_GetIDPtr`.
pub fn get_id_ptr(_p0 : @raw_generated.VoidPtr) -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_id_ptr(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetIDInt`.
pub fn get_id_int(_p0 : Int) -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_id_int(_p0)
}

///|
/// Safe generated wrapper for `ImGui_TextUnformatted`.
pub fn text_unformatted(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_TextUnformattedEx`.
pub fn text_unformatted_ex(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_unformatted_ex(
    _c0.raw(),
    @raw_generated.null_c_string(),
  )
}

///|
/// Safe literal-text wrapper for `ImGui_Text`.
pub fn text_generated(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_unformatted(_c0.raw())
}

///|
/// Safe literal-text wrapper for `ImGui_TextColored`.
pub fn text_colored(
  _p0 : @raw_generated.ImVec4,
  _p1 : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_text_colored_unformatted(_p0, _c1.raw())
}

///|
/// Safe generated wrapper for `ImGui_TextColoredUnformatted`.
pub fn text_colored_unformatted(
  _p0 : @raw_generated.ImVec4,
  _p1 : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_text_colored_unformatted(_p0, _c1.raw())
}

///|
/// Safe literal-text wrapper for `ImGui_TextDisabled`.
pub fn text_disabled(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_disabled_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_TextDisabledUnformatted`.
pub fn text_disabled_unformatted(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_disabled_unformatted(_c0.raw())
}

///|
/// Safe literal-text wrapper for `ImGui_TextWrapped`.
pub fn text_wrapped(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_wrapped_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_TextWrappedUnformatted`.
pub fn text_wrapped_unformatted(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_wrapped_unformatted(_c0.raw())
}

///|
/// Safe literal-text wrapper for `ImGui_LabelText`.
pub fn label_text(_p0 : String, _p1 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_label_text_unformatted(_c0.raw(), _c1.raw())
}

///|
/// Safe generated wrapper for `ImGui_LabelTextUnformatted`.
pub fn label_text_unformatted(
  _p0 : String,
  _p1 : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_label_text_unformatted(_c0.raw(), _c1.raw())
}

///|
/// Safe literal-text wrapper for `ImGui_BulletText`.
pub fn bullet_text(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_bullet_text_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_BulletTextUnformatted`.
pub fn bullet_text_unformatted(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_bullet_text_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_SeparatorText`.
pub fn separator_text(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_separator_text(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_Button`.
pub fn button_generated(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_button(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_ButtonEx`.
pub fn button_ex(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_button_ex(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_SmallButton`.
pub fn small_button(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_small_button(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_InvisibleButton`.
pub fn invisible_button(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_invisible_button(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_ArrowButton`.
pub fn arrow_button(_p0 : String, _p1 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_arrow_button(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_Checkbox`.
pub fn checkbox_generated(
  _p0 : String,
  _p1 : @raw_generated.BoolPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_checkbox(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_CheckboxFlagsIntPtr`.
pub fn checkbox_flags_int_ptr(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_checkbox_flags_int_ptr(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_CheckboxFlagsUintPtr`.
pub fn checkbox_flags_uint_ptr(
  _p0 : String,
  _p1 : @raw_generated.UIntPtr,
  _p2 : UInt,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_checkbox_flags_uint_ptr(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_RadioButton`.
pub fn radio_button(_p0 : String, _p1 : Bool) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_radio_button(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_RadioButtonIntPtr`.
pub fn radio_button_int_ptr(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_radio_button_int_ptr(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_ProgressBar`.
pub fn progress_bar(
  _p0 : Float,
  _p1 : @raw_generated.ImVec2,
  _p2 : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_progress_bar(_p0, _p1, _c2.raw())
}

///|
/// Safe generated wrapper for `ImGui_Bullet`.
pub fn bullet() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_bullet()
}

///|
/// Safe generated wrapper for `ImGui_TextLink`.
pub fn text_link(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_link(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_TextLinkOpenURL`.
pub fn text_link_open_url(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_text_link_open_url(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_TextLinkOpenURLEx`.
pub fn text_link_open_url_ex(
  _p0 : String,
  _p1 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_text_link_open_url_ex(_c0.raw(), _c1.raw())
}

///|
/// Safe generated wrapper for `ImGui_Image`.
pub fn image(
  _p0 : @raw_generated.ImTextureRef,
  _p1 : @raw_generated.ImVec2,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_image(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_ImageEx`.
pub fn image_ex(
  _p0 : @raw_generated.ImTextureRef,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_image_ex(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_ImageWithBg`.
pub fn image_with_bg(
  _p0 : @raw_generated.ImTextureRef,
  _p1 : @raw_generated.ImVec2,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_image_with_bg(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_ImageWithBgEx`.
pub fn image_with_bg_ex(
  _p0 : @raw_generated.ImTextureRef,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec4,
  _p5 : @raw_generated.ImVec4,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_image_with_bg_ex(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImGui_ImageButton`.
pub fn image_button(
  _p0 : String,
  _p1 : @raw_generated.ImTextureRef,
  _p2 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_image_button(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_ImageButtonEx`.
pub fn image_button_ex(
  _p0 : String,
  _p1 : @raw_generated.ImTextureRef,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : @raw_generated.ImVec4,
  _p6 : @raw_generated.ImVec4,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_image_button_ex(_c0.raw(), _p1, _p2, _p3, _p4, _p5, _p6)
}

///|
/// Safe generated wrapper for `ImGui_BeginCombo`.
pub fn begin_combo(
  _p0 : String,
  _p1 : String,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_begin_combo(_c0.raw(), _c1.raw(), _p2)
}

///|
/// Safe generated wrapper for `ImGui_EndCombo`.
pub fn end_combo() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_combo()
}

///|
/// Safe generated wrapper for `ImGui_ComboChar`.
pub fn combo_char(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : @raw_generated.CStringPtr,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_combo_char(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_ComboCharEx`.
pub fn combo_char_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : @raw_generated.CStringPtr,
  _p3 : Int,
  _p4 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_combo_char_ex(_c0.raw(), _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImGui_Combo`.
pub fn combo(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_combo(_c0.raw(), _p1, _c2.raw())
}

///|
/// Safe generated wrapper for `ImGui_ComboEx`.
pub fn combo_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : String,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_combo_ex(_c0.raw(), _p1, _c2.raw(), _p3)
}

///|
/// Safe generated wrapper for `ImGui_DragFloat`.
pub fn drag_float(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_float(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_DragFloatEx`.
pub fn drag_float_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_drag_float_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragFloat2`.
pub fn drag_float2(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_float2(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_DragFloat2Ex`.
pub fn drag_float2_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_drag_float2_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragFloat3`.
pub fn drag_float3(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_float3(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_DragFloat3Ex`.
pub fn drag_float3_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_drag_float3_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragFloat4`.
pub fn drag_float4(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_float4(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_DragFloat4Ex`.
pub fn drag_float4_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_drag_float4_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragFloatRange2`.
pub fn drag_float_range2(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_float_range2(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_DragFloatRange2Ex`.
pub fn drag_float_range2_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : @raw_generated.FloatPtr,
  _p3 : Float,
  _p4 : Float,
  _p5 : Float,
  _p6 : String,
  _p7 : String,
  _p8 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c6 = @raw_generated.OwnedCString::new(_p6)
  defer _c6.free()
  let _c7 = @raw_generated.OwnedCString::new(_p7)
  defer _c7.free()
  @raw_generated.im_gui_drag_float_range2_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _c6.raw(),
    _c7.raw(),
    _p8,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragInt`.
pub fn drag_int(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_int(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_DragIntEx`.
pub fn drag_int_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_drag_int_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragInt2`.
pub fn drag_int2(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_int2(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_DragInt2Ex`.
pub fn drag_int2_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_drag_int2_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragInt3`.
pub fn drag_int3(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_int3(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_DragInt3Ex`.
pub fn drag_int3_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_drag_int3_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragInt4`.
pub fn drag_int4(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_int4(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_DragInt4Ex`.
pub fn drag_int4_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_drag_int4_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragIntRange2`.
pub fn drag_int_range2(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : @raw_generated.IntPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_int_range2(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_DragIntRange2Ex`.
pub fn drag_int_range2_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : @raw_generated.IntPtr,
  _p3 : Float,
  _p4 : Int,
  _p5 : Int,
  _p6 : String,
  _p7 : String,
  _p8 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c6 = @raw_generated.OwnedCString::new(_p6)
  defer _c6.free()
  let _c7 = @raw_generated.OwnedCString::new(_p7)
  defer _c7.free()
  @raw_generated.im_gui_drag_int_range2_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _c6.raw(),
    _c7.raw(),
    _p8,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragScalar`.
pub fn drag_scalar(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_scalar(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_DragScalarEx`.
pub fn drag_scalar_ex(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : Float,
  _p4 : @raw_generated.VoidPtr,
  _p5 : @raw_generated.VoidPtr,
  _p6 : String,
  _p7 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c6 = @raw_generated.OwnedCString::new(_p6)
  defer _c6.free()
  @raw_generated.im_gui_drag_scalar_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _c6.raw(),
    _p7,
  )
}

///|
/// Safe generated wrapper for `ImGui_DragScalarN`.
pub fn drag_scalar_n(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_drag_scalar_n(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_DragScalarNEx`.
pub fn drag_scalar_n_ex(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : Int,
  _p4 : Float,
  _p5 : @raw_generated.VoidPtr,
  _p6 : @raw_generated.VoidPtr,
  _p7 : String,
  _p8 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c7 = @raw_generated.OwnedCString::new(_p7)
  defer _c7.free()
  @raw_generated.im_gui_drag_scalar_n_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _p6,
    _c7.raw(),
    _p8,
  )
}

///|
/// Safe generated wrapper for `ImGui_SliderFloat`.
pub fn slider_float_generated(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_float(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SliderFloatEx`.
pub fn slider_float_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_float_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    _p5,
  )
}

///|
/// Safe generated wrapper for `ImGui_SliderFloat2`.
pub fn slider_float2(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_float2(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SliderFloat2Ex`.
pub fn slider_float2_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_float2_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    _p5,
  )
}

///|
/// Safe generated wrapper for `ImGui_SliderFloat3`.
pub fn slider_float3(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_float3(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SliderFloat3Ex`.
pub fn slider_float3_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_float3_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    _p5,
  )
}

///|
/// Safe generated wrapper for `ImGui_SliderFloat4`.
pub fn slider_float4(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_float4(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SliderFloat4Ex`.
pub fn slider_float4_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_float4_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    _p5,
  )
}

///|
/// Safe generated wrapper for `ImGui_SliderAngle`.
pub fn slider_angle(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_angle(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_SliderAngleEx`.
pub fn slider_angle_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_angle_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    _p5,
  )
}

///|
/// Safe generated wrapper for `ImGui_SliderInt`.
pub fn slider_int(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_int(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SliderIntEx`.
pub fn slider_int_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_int_ex(_c0.raw(), _p1, _p2, _p3, _c4.raw(), _p5)
}

///|
/// Safe generated wrapper for `ImGui_SliderInt2`.
pub fn slider_int2(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_int2(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SliderInt2Ex`.
pub fn slider_int2_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_int2_ex(_c0.raw(), _p1, _p2, _p3, _c4.raw(), _p5)
}

///|
/// Safe generated wrapper for `ImGui_SliderInt3`.
pub fn slider_int3(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_int3(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SliderInt3Ex`.
pub fn slider_int3_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_int3_ex(_c0.raw(), _p1, _p2, _p3, _c4.raw(), _p5)
}

///|
/// Safe generated wrapper for `ImGui_SliderInt4`.
pub fn slider_int4(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_int4(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SliderInt4Ex`.
pub fn slider_int4_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_slider_int4_ex(_c0.raw(), _p1, _p2, _p3, _c4.raw(), _p5)
}

///|
/// Safe generated wrapper for `ImGui_SliderScalar`.
pub fn slider_scalar(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : @raw_generated.VoidPtr,
  _p4 : @raw_generated.VoidPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_scalar(_c0.raw(), _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImGui_SliderScalarEx`.
pub fn slider_scalar_ex(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : @raw_generated.VoidPtr,
  _p4 : @raw_generated.VoidPtr,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_slider_scalar_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_SliderScalarN`.
pub fn slider_scalar_n(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : Int,
  _p4 : @raw_generated.VoidPtr,
  _p5 : @raw_generated.VoidPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_slider_scalar_n(_c0.raw(), _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImGui_SliderScalarNEx`.
pub fn slider_scalar_n_ex(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : Int,
  _p4 : @raw_generated.VoidPtr,
  _p5 : @raw_generated.VoidPtr,
  _p6 : String,
  _p7 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c6 = @raw_generated.OwnedCString::new(_p6)
  defer _c6.free()
  @raw_generated.im_gui_slider_scalar_n_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _c6.raw(),
    _p7,
  )
}

///|
/// Safe generated wrapper for `ImGui_VSliderFloat`.
pub fn v_slider_float(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.FloatPtr,
  _p3 : Float,
  _p4 : Float,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_v_slider_float(_c0.raw(), _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImGui_VSliderFloatEx`.
pub fn v_slider_float_ex(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.FloatPtr,
  _p3 : Float,
  _p4 : Float,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_v_slider_float_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_VSliderInt`.
pub fn v_slider_int(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.IntPtr,
  _p3 : Int,
  _p4 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_v_slider_int(_c0.raw(), _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImGui_VSliderIntEx`.
pub fn v_slider_int_ex(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.IntPtr,
  _p3 : Int,
  _p4 : Int,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_v_slider_int_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_VSliderScalar`.
pub fn v_slider_scalar(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
  _p3 : @raw_generated.VoidPtr,
  _p4 : @raw_generated.VoidPtr,
  _p5 : @raw_generated.VoidPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_v_slider_scalar(_c0.raw(), _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImGui_VSliderScalarEx`.
pub fn v_slider_scalar_ex(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
  _p3 : @raw_generated.VoidPtr,
  _p4 : @raw_generated.VoidPtr,
  _p5 : @raw_generated.VoidPtr,
  _p6 : String,
  _p7 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c6 = @raw_generated.OwnedCString::new(_p6)
  defer _c6.free()
  @raw_generated.im_gui_v_slider_scalar_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _c6.raw(),
    _p7,
  )
}

///|
/// Safe generated wrapper for `ImGui_InputText`.
pub fn input_text_generated(
  _p0 : String,
  _p1 : @raw_generated.CString,
  _p2 : UInt64,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_text(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_InputTextMultiline`.
pub fn input_text_multiline(
  _p0 : String,
  _p1 : @raw_generated.CString,
  _p2 : UInt64,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_text_multiline(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_InputTextWithHint`.
pub fn input_text_with_hint(
  _p0 : String,
  _p1 : String,
  _p2 : @raw_generated.CString,
  _p3 : UInt64,
  _p4 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_input_text_with_hint(
    _c0.raw(),
    _c1.raw(),
    _p2,
    _p3,
    _p4,
  )
}

///|
/// Safe generated wrapper for `ImGui_InputFloat`.
pub fn input_float(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_float(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_InputFloatEx`.
pub fn input_float_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_input_float_ex(_c0.raw(), _p1, _p2, _p3, _c4.raw(), _p5)
}

///|
/// Safe generated wrapper for `ImGui_InputFloat2`.
pub fn input_float2(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_float2(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_InputFloat2Ex`.
pub fn input_float2_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : String,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_input_float2_ex(_c0.raw(), _p1, _c2.raw(), _p3)
}

///|
/// Safe generated wrapper for `ImGui_InputFloat3`.
pub fn input_float3(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_float3(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_InputFloat3Ex`.
pub fn input_float3_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : String,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_input_float3_ex(_c0.raw(), _p1, _c2.raw(), _p3)
}

///|
/// Safe generated wrapper for `ImGui_InputFloat4`.
pub fn input_float4(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_float4(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_InputFloat4Ex`.
pub fn input_float4_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : String,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_input_float4_ex(_c0.raw(), _p1, _c2.raw(), _p3)
}

///|
/// Safe generated wrapper for `ImGui_InputInt`.
pub fn input_int(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_int(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_InputIntEx`.
pub fn input_int_ex(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_int_ex(_c0.raw(), _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImGui_InputInt2`.
pub fn input_int2(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_int2(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_InputInt3`.
pub fn input_int3(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_int3(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_InputInt4`.
pub fn input_int4(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_int4(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_InputDouble`.
pub fn input_double(
  _p0 : String,
  _p1 : @raw_generated.DoublePtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_double(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_InputDoubleEx`.
pub fn input_double_ex(
  _p0 : String,
  _p1 : @raw_generated.DoublePtr,
  _p2 : Double,
  _p3 : Double,
  _p4 : String,
  _p5 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_input_double_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    _p5,
  )
}

///|
/// Safe generated wrapper for `ImGui_InputScalar`.
pub fn input_scalar(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_scalar(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_InputScalarEx`.
pub fn input_scalar_ex(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : @raw_generated.VoidPtr,
  _p4 : @raw_generated.VoidPtr,
  _p5 : String,
  _p6 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_gui_input_scalar_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImGui_InputScalarN`.
pub fn input_scalar_n(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_input_scalar_n(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_InputScalarNEx`.
pub fn input_scalar_n_ex(
  _p0 : String,
  _p1 : Int,
  _p2 : @raw_generated.VoidPtr,
  _p3 : Int,
  _p4 : @raw_generated.VoidPtr,
  _p5 : @raw_generated.VoidPtr,
  _p6 : String,
  _p7 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c6 = @raw_generated.OwnedCString::new(_p6)
  defer _c6.free()
  @raw_generated.im_gui_input_scalar_n_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _c6.raw(),
    _p7,
  )
}

///|
/// Safe generated wrapper for `ImGui_ColorEdit3`.
pub fn color_edit3(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_color_edit3(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_ColorEdit4`.
pub fn color_edit4(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_color_edit4(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_ColorPicker3`.
pub fn color_picker3(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_color_picker3(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_ColorPicker4`.
pub fn color_picker4(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Int,
  _p3 : @raw_generated.FloatPtr,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_color_picker4(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_ColorButton`.
pub fn color_button(
  _p0 : String,
  _p1 : @raw_generated.ImVec4,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_color_button(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_ColorButtonEx`.
pub fn color_button_ex(
  _p0 : String,
  _p1 : @raw_generated.ImVec4,
  _p2 : Int,
  _p3 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_color_button_ex(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SetColorEditOptions`.
pub fn set_color_edit_options(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_color_edit_options(_p0)
}

///|
/// Safe generated wrapper for `ImGui_TreeNode`.
pub fn tree_node_generated(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_tree_node(_c0.raw())
}

///|
/// Safe literal-text wrapper for `ImGui_TreeNodeStr`.
pub fn tree_node_str(_p0 : String, _p1 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_tree_node_str_unformatted(_c0.raw(), _c1.raw())
}

///|
/// Safe generated wrapper for `ImGui_TreeNodeStrUnformatted`.
pub fn tree_node_str_unformatted(
  _p0 : String,
  _p1 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_tree_node_str_unformatted(_c0.raw(), _c1.raw())
}

///|
/// Safe literal-text wrapper for `ImGui_TreeNodePtr`.
pub fn tree_node_ptr(
  _p0 : @raw_generated.VoidPtr,
  _p1 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_tree_node_ptr_unformatted(_p0, _c1.raw())
}

///|
/// Safe generated wrapper for `ImGui_TreeNodePtrUnformatted`.
pub fn tree_node_ptr_unformatted(
  _p0 : @raw_generated.VoidPtr,
  _p1 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_tree_node_ptr_unformatted(_p0, _c1.raw())
}

///|
/// Safe generated wrapper for `ImGui_TreeNodeEx`.
pub fn tree_node_ex(_p0 : String, _p1 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_tree_node_ex(_c0.raw(), _p1)
}

///|
/// Safe literal-text wrapper for `ImGui_TreeNodeExStr`.
pub fn tree_node_ex_str(
  _p0 : String,
  _p1 : Int,
  _p2 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_tree_node_ex_str_unformatted(_c0.raw(), _p1, _c2.raw())
}

///|
/// Safe generated wrapper for `ImGui_TreeNodeExStrUnformatted`.
pub fn tree_node_ex_str_unformatted(
  _p0 : String,
  _p1 : Int,
  _p2 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_tree_node_ex_str_unformatted(_c0.raw(), _p1, _c2.raw())
}

///|
/// Safe literal-text wrapper for `ImGui_TreeNodeExPtr`.
pub fn tree_node_ex_ptr(
  _p0 : @raw_generated.VoidPtr,
  _p1 : Int,
  _p2 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_tree_node_ex_ptr_unformatted(_p0, _p1, _c2.raw())
}

///|
/// Safe generated wrapper for `ImGui_TreeNodeExPtrUnformatted`.
pub fn tree_node_ex_ptr_unformatted(
  _p0 : @raw_generated.VoidPtr,
  _p1 : Int,
  _p2 : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_tree_node_ex_ptr_unformatted(_p0, _p1, _c2.raw())
}

///|
/// Safe generated wrapper for `ImGui_TreePush`.
pub fn tree_push(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_tree_push(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_TreePushPtr`.
pub fn tree_push_ptr(_p0 : @raw_generated.VoidPtr) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_tree_push_ptr(_p0)
}

///|
/// Safe generated wrapper for `ImGui_TreePop`.
pub fn tree_pop_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_tree_pop()
}

///|
/// Safe generated wrapper for `ImGui_GetTreeNodeToLabelSpacing`.
pub fn get_tree_node_to_label_spacing() -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_tree_node_to_label_spacing()
}

///|
/// Safe generated wrapper for `ImGui_CollapsingHeader`.
pub fn collapsing_header_generated(
  _p0 : String,
  _p1 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_collapsing_header(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_CollapsingHeaderBoolPtr`.
pub fn collapsing_header_bool_ptr(
  _p0 : String,
  _p1 : @raw_generated.BoolPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_collapsing_header_bool_ptr(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_SetNextItemOpen`.
pub fn set_next_item_open(_p0 : Bool, _p1 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_item_open(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetNextItemStorageID`.
pub fn set_next_item_storage_id(_p0 : UInt) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_item_storage_id(_p0)
}

///|
/// Safe generated wrapper for `ImGui_TreeNodeGetOpen`.
pub fn tree_node_get_open(_p0 : UInt) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_tree_node_get_open(_p0)
}

///|
/// Safe generated wrapper for `ImGui_Selectable`.
pub fn selectable_generated(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_selectable(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_SelectableEx`.
pub fn selectable_ex(
  _p0 : String,
  _p1 : Bool,
  _p2 : Int,
  _p3 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_selectable_ex(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_SelectableBoolPtr`.
pub fn selectable_bool_ptr(
  _p0 : String,
  _p1 : @raw_generated.BoolPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_selectable_bool_ptr(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_SelectableBoolPtrEx`.
pub fn selectable_bool_ptr_ex(
  _p0 : String,
  _p1 : @raw_generated.BoolPtr,
  _p2 : Int,
  _p3 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_selectable_bool_ptr_ex(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_BeginMultiSelect`.
pub fn begin_multi_select(
  _p0 : Int,
) -> @raw_generated.ImGuiMultiSelectIO raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_multi_select(_p0)
}

///|
/// Safe generated wrapper for `ImGui_BeginMultiSelectEx`.
pub fn begin_multi_select_ex(
  _p0 : Int,
  _p1 : Int,
  _p2 : Int,
) -> @raw_generated.ImGuiMultiSelectIO raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_multi_select_ex(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_EndMultiSelect`.
pub fn end_multi_select() -> @raw_generated.ImGuiMultiSelectIO raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_multi_select()
}

///|
/// Safe generated wrapper for `ImGui_SetNextItemSelectionUserData`.
pub fn set_next_item_selection_user_data(_p0 : Int64) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_item_selection_user_data(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsItemToggledSelection`.
pub fn is_item_toggled_selection() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_toggled_selection()
}

///|
/// Safe generated wrapper for `ImGui_BeginListBox`.
pub fn begin_list_box(
  _p0 : String,
  _p1 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_list_box(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_EndListBox`.
pub fn end_list_box() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_list_box()
}

///|
/// Safe generated wrapper for `ImGui_ListBox`.
pub fn list_box(
  _p0 : String,
  _p1 : @raw_generated.IntPtr,
  _p2 : @raw_generated.CStringPtr,
  _p3 : Int,
  _p4 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_list_box(_c0.raw(), _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImGui_PlotLines`.
pub fn plot_lines(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_plot_lines(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_PlotLinesEx`.
pub fn plot_lines_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : String,
  _p5 : Float,
  _p6 : Float,
  _p7 : @raw_generated.ImVec2,
  _p8 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_plot_lines_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    _p5,
    _p6,
    _p7,
    _p8,
  )
}

///|
/// Safe generated wrapper for `ImGui_PlotHistogram`.
pub fn plot_histogram(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_plot_histogram(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_PlotHistogramEx`.
pub fn plot_histogram_ex(
  _p0 : String,
  _p1 : @raw_generated.FloatPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : String,
  _p5 : Float,
  _p6 : Float,
  _p7 : @raw_generated.ImVec2,
  _p8 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_gui_plot_histogram_ex(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    _p5,
    _p6,
    _p7,
    _p8,
  )
}

///|
/// Safe generated wrapper for `ImGui_BeginMenuBar`.
pub fn begin_menu_bar_generated() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_menu_bar()
}

///|
/// Safe generated wrapper for `ImGui_EndMenuBar`.
pub fn end_menu_bar_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_menu_bar()
}

///|
/// Safe generated wrapper for `ImGui_BeginMainMenuBar`.
pub fn begin_main_menu_bar() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_main_menu_bar()
}

///|
/// Safe generated wrapper for `ImGui_EndMainMenuBar`.
pub fn end_main_menu_bar() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_main_menu_bar()
}

///|
/// Safe generated wrapper for `ImGui_BeginMenu`.
pub fn begin_menu_generated(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_menu(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_BeginMenuEx`.
pub fn begin_menu_ex(_p0 : String, _p1 : Bool) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_menu_ex(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_EndMenu`.
pub fn end_menu_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_menu()
}

///|
/// Safe generated wrapper for `ImGui_MenuItem`.
pub fn menu_item_generated(_p0 : String) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_menu_item(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_MenuItemEx`.
pub fn menu_item_ex(
  _p0 : String,
  _p1 : String,
  _p2 : Bool,
  _p3 : Bool,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_menu_item_ex(_c0.raw(), _c1.raw(), _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_MenuItemBoolPtr`.
pub fn menu_item_bool_ptr(
  _p0 : String,
  _p1 : String,
  _p2 : @raw_generated.BoolPtr,
  _p3 : Bool,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_menu_item_bool_ptr(_c0.raw(), _c1.raw(), _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_BeginTooltip`.
pub fn begin_tooltip() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_tooltip()
}

///|
/// Safe generated wrapper for `ImGui_EndTooltip`.
pub fn end_tooltip() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_tooltip()
}

///|
/// Safe literal-text wrapper for `ImGui_SetTooltip`.
pub fn set_tooltip(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_tooltip_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_SetTooltipUnformatted`.
pub fn set_tooltip_unformatted(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_tooltip_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_BeginItemTooltip`.
pub fn begin_item_tooltip() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_item_tooltip()
}

///|
/// Safe literal-text wrapper for `ImGui_SetItemTooltip`.
pub fn set_item_tooltip(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_item_tooltip_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_SetItemTooltipUnformatted`.
pub fn set_item_tooltip_unformatted(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_item_tooltip_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_BeginPopup`.
pub fn begin_popup(_p0 : String, _p1 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_popup(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_BeginPopupModal`.
pub fn begin_popup_modal(
  _p0 : String,
  _p1 : @raw_generated.BoolPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_popup_modal(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_EndPopup`.
pub fn end_popup() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_popup()
}

///|
/// Safe generated wrapper for `ImGui_OpenPopup`.
pub fn open_popup(_p0 : String, _p1 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_open_popup(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_OpenPopupID`.
pub fn open_popup_id(_p0 : UInt, _p1 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_open_popup_id(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_OpenPopupOnItemClick`.
pub fn open_popup_on_item_click(
  _p0 : String,
  _p1 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_open_popup_on_item_click(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_CloseCurrentPopup`.
pub fn close_current_popup() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_close_current_popup()
}

///|
/// Safe generated wrapper for `ImGui_BeginPopupContextItem`.
pub fn begin_popup_context_item() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_popup_context_item()
}

///|
/// Safe generated wrapper for `ImGui_BeginPopupContextItemEx`.
pub fn begin_popup_context_item_ex(
  _p0 : String,
  _p1 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_popup_context_item_ex(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_BeginPopupContextWindow`.
pub fn begin_popup_context_window() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_popup_context_window()
}

///|
/// Safe generated wrapper for `ImGui_BeginPopupContextWindowEx`.
pub fn begin_popup_context_window_ex(
  _p0 : String,
  _p1 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_popup_context_window_ex(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_BeginPopupContextVoid`.
pub fn begin_popup_context_void() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_popup_context_void()
}

///|
/// Safe generated wrapper for `ImGui_BeginPopupContextVoidEx`.
pub fn begin_popup_context_void_ex(
  _p0 : String,
  _p1 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_popup_context_void_ex(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_IsPopupOpen`.
pub fn is_popup_open(_p0 : String, _p1 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_is_popup_open(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_BeginTable`.
pub fn begin_table_generated(
  _p0 : String,
  _p1 : Int,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_table(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_BeginTableEx`.
pub fn begin_table_ex(
  _p0 : String,
  _p1 : Int,
  _p2 : Int,
  _p3 : @raw_generated.ImVec2,
  _p4 : Float,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_table_ex(_c0.raw(), _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImGui_EndTable`.
pub fn end_table_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_table()
}

///|
/// Safe generated wrapper for `ImGui_TableNextRow`.
pub fn table_next_row_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_next_row()
}

///|
/// Safe generated wrapper for `ImGui_TableNextRowEx`.
pub fn table_next_row_ex(_p0 : Int, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_next_row_ex(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_TableNextColumn`.
pub fn table_next_column_generated() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_next_column()
}

///|
/// Safe generated wrapper for `ImGui_TableSetColumnIndex`.
pub fn table_set_column_index(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_set_column_index(_p0)
}

///|
/// Safe generated wrapper for `ImGui_TableSetupColumn`.
pub fn table_setup_column(_p0 : String, _p1 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_table_setup_column(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_TableSetupColumnEx`.
pub fn table_setup_column_ex(
  _p0 : String,
  _p1 : Int,
  _p2 : Float,
  _p3 : UInt,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_table_setup_column_ex(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_TableSetupScrollFreeze`.
pub fn table_setup_scroll_freeze(_p0 : Int, _p1 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_setup_scroll_freeze(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_TableHeader`.
pub fn table_header(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_table_header(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_TableHeadersRow`.
pub fn table_headers_row() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_headers_row()
}

///|
/// Safe generated wrapper for `ImGui_TableAngledHeadersRow`.
pub fn table_angled_headers_row() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_angled_headers_row()
}

///|
/// Safe generated wrapper for `ImGui_TableGetSortSpecs`.
pub fn table_get_sort_specs() -> @raw_generated.ImGuiTableSortSpecs raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_get_sort_specs()
}

///|
/// Safe generated wrapper for `ImGui_TableGetColumnCount`.
pub fn table_get_column_count() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_get_column_count()
}

///|
/// Safe generated wrapper for `ImGui_TableGetColumnIndex`.
pub fn table_get_column_index() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_get_column_index()
}

///|
/// Safe generated wrapper for `ImGui_TableGetRowIndex`.
pub fn table_get_row_index() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_get_row_index()
}

///|
/// Safe generated wrapper for `ImGui_TableGetColumnName`.
pub fn table_get_column_name(_p0 : Int) -> String raise ImGuiError {
  ensure_current_context()
  @raw_generated.cstring_to_string(
    @raw_generated.im_gui_table_get_column_name(_p0),
  )
}

///|
/// Safe generated wrapper for `ImGui_TableGetColumnFlags`.
pub fn table_get_column_flags(_p0 : Int) -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_get_column_flags(_p0)
}

///|
/// Safe generated wrapper for `ImGui_TableSetColumnEnabled`.
pub fn table_set_column_enabled(_p0 : Int, _p1 : Bool) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_set_column_enabled(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_TableGetHoveredColumn`.
pub fn table_get_hovered_column() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_get_hovered_column()
}

///|
/// Safe generated wrapper for `ImGui_TableSetBgColor`.
pub fn table_set_bg_color(
  _p0 : Int,
  _p1 : UInt,
  _p2 : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_table_set_bg_color(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_Columns`.
pub fn columns() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_columns()
}

///|
/// Safe generated wrapper for `ImGui_ColumnsEx`.
pub fn columns_ex(_p0 : Int, _p1 : String, _p2 : Bool) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_columns_ex(_p0, _c1.raw(), _p2)
}

///|
/// Safe generated wrapper for `ImGui_NextColumn`.
pub fn next_column() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_next_column()
}

///|
/// Safe generated wrapper for `ImGui_GetColumnIndex`.
pub fn get_column_index() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_column_index()
}

///|
/// Safe generated wrapper for `ImGui_GetColumnWidth`.
pub fn get_column_width(_p0 : Int) -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_column_width(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetColumnWidth`.
pub fn set_column_width(_p0 : Int, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_column_width(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_GetColumnOffset`.
pub fn get_column_offset(_p0 : Int) -> Float raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_column_offset(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetColumnOffset`.
pub fn set_column_offset(_p0 : Int, _p1 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_column_offset(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_GetColumnsCount`.
pub fn get_columns_count() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_columns_count()
}

///|
/// Safe generated wrapper for `ImGui_BeginTabBar`.
pub fn begin_tab_bar_generated(
  _p0 : String,
  _p1 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_tab_bar(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_EndTabBar`.
pub fn end_tab_bar_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_tab_bar()
}

///|
/// Safe generated wrapper for `ImGui_BeginTabItem`.
pub fn begin_tab_item_generated(
  _p0 : String,
  _p1 : @raw_generated.BoolPtr,
  _p2 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_begin_tab_item(_c0.raw(), _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_EndTabItem`.
pub fn end_tab_item_generated() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_tab_item()
}

///|
/// Safe generated wrapper for `ImGui_TabItemButton`.
pub fn tab_item_button(_p0 : String, _p1 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_tab_item_button(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetTabItemClosed`.
pub fn set_tab_item_closed(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_tab_item_closed(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_LogToTTY`.
pub fn log_to_tty(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_log_to_tty(_p0)
}

///|
/// Safe generated wrapper for `ImGui_LogToFile`.
pub fn log_to_file(_p0 : Int, _p1 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_log_to_file(_p0, _c1.raw())
}

///|
/// Safe generated wrapper for `ImGui_LogToClipboard`.
pub fn log_to_clipboard(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_log_to_clipboard(_p0)
}

///|
/// Safe generated wrapper for `ImGui_LogFinish`.
pub fn log_finish() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_log_finish()
}

///|
/// Safe generated wrapper for `ImGui_LogButtons`.
pub fn log_buttons() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_log_buttons()
}

///|
/// Safe literal-text wrapper for `ImGui_LogText`.
pub fn log_text(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_log_text_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_LogTextUnformatted`.
pub fn log_text_unformatted(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_log_text_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_BeginDragDropSource`.
pub fn begin_drag_drop_source(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_drag_drop_source(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetDragDropPayload`.
pub fn set_drag_drop_payload(
  _p0 : String,
  _p1 : @raw_generated.VoidPtr,
  _p2 : UInt64,
  _p3 : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_drag_drop_payload(_c0.raw(), _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGui_EndDragDropSource`.
pub fn end_drag_drop_source() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_drag_drop_source()
}

///|
/// Safe generated wrapper for `ImGui_BeginDragDropTarget`.
pub fn begin_drag_drop_target() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_drag_drop_target()
}

///|
/// Safe generated wrapper for `ImGui_AcceptDragDropPayload`.
pub fn accept_drag_drop_payload(
  _p0 : String,
  _p1 : Int,
) -> @raw_generated.ImGuiPayload raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_accept_drag_drop_payload(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_EndDragDropTarget`.
pub fn end_drag_drop_target() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_drag_drop_target()
}

///|
/// Safe generated wrapper for `ImGui_GetDragDropPayload`.
pub fn get_drag_drop_payload() -> @raw_generated.ImGuiPayload raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_drag_drop_payload()
}

///|
/// Safe generated wrapper for `ImGui_BeginDisabled`.
pub fn begin_disabled(_p0 : Bool) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_begin_disabled(_p0)
}

///|
/// Safe generated wrapper for `ImGui_EndDisabled`.
pub fn end_disabled() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_end_disabled()
}

///|
/// Safe generated wrapper for `ImGui_PushClipRect`.
pub fn push_clip_rect(
  _p0 : @raw_generated.ImVec2,
  _p1 : @raw_generated.ImVec2,
  _p2 : Bool,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_clip_rect(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_PopClipRect`.
pub fn pop_clip_rect() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_clip_rect()
}

///|
/// Safe generated wrapper for `ImGui_SetItemDefaultFocus`.
pub fn set_item_default_focus() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_item_default_focus()
}

///|
/// Safe generated wrapper for `ImGui_SetKeyboardFocusHere`.
pub fn set_keyboard_focus_here() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_keyboard_focus_here()
}

///|
/// Safe generated wrapper for `ImGui_SetKeyboardFocusHereEx`.
pub fn set_keyboard_focus_here_ex(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_keyboard_focus_here_ex(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetNavCursorVisible`.
pub fn set_nav_cursor_visible(_p0 : Bool) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_nav_cursor_visible(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetNextItemAllowOverlap`.
pub fn set_next_item_allow_overlap() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_item_allow_overlap()
}

///|
/// Safe generated wrapper for `ImGui_IsItemHovered`.
pub fn is_item_hovered(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_hovered(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsItemActive`.
pub fn is_item_active() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_active()
}

///|
/// Safe generated wrapper for `ImGui_IsItemFocused`.
pub fn is_item_focused() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_focused()
}

///|
/// Safe generated wrapper for `ImGui_IsItemClicked`.
pub fn is_item_clicked() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_clicked()
}

///|
/// Safe generated wrapper for `ImGui_IsItemClickedEx`.
pub fn is_item_clicked_ex(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_clicked_ex(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsItemVisible`.
pub fn is_item_visible() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_visible()
}

///|
/// Safe generated wrapper for `ImGui_IsItemEdited`.
pub fn is_item_edited() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_edited()
}

///|
/// Safe generated wrapper for `ImGui_IsItemActivated`.
pub fn is_item_activated() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_activated()
}

///|
/// Safe generated wrapper for `ImGui_IsItemDeactivated`.
pub fn is_item_deactivated() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_deactivated()
}

///|
/// Safe generated wrapper for `ImGui_IsItemDeactivatedAfterEdit`.
pub fn is_item_deactivated_after_edit() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_deactivated_after_edit()
}

///|
/// Safe generated wrapper for `ImGui_IsItemToggledOpen`.
pub fn is_item_toggled_open() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_item_toggled_open()
}

///|
/// Safe generated wrapper for `ImGui_IsAnyItemHovered`.
pub fn is_any_item_hovered() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_any_item_hovered()
}

///|
/// Safe generated wrapper for `ImGui_IsAnyItemActive`.
pub fn is_any_item_active() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_any_item_active()
}

///|
/// Safe generated wrapper for `ImGui_IsAnyItemFocused`.
pub fn is_any_item_focused() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_any_item_focused()
}

///|
/// Safe generated wrapper for `ImGui_GetItemID`.
pub fn get_item_id() -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_item_id()
}

///|
/// Safe generated wrapper for `ImGui_GetItemRectMin`.
pub fn get_item_rect_min() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_item_rect_min()
}

///|
/// Safe generated wrapper for `ImGui_GetItemRectMax`.
pub fn get_item_rect_max() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_item_rect_max()
}

///|
/// Safe generated wrapper for `ImGui_GetItemRectSize`.
pub fn get_item_rect_size() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_item_rect_size()
}

///|
/// Safe generated wrapper for `ImGui_GetItemFlags`.
pub fn get_item_flags() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_item_flags()
}

///|
/// Safe generated wrapper for `ImGui_GetMainViewport`.
pub fn get_main_viewport() -> @raw_generated.ImGuiViewport raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_main_viewport()
}

///|
/// Safe generated wrapper for `ImGui_GetBackgroundDrawList`.
pub fn get_background_draw_list() -> @raw_generated.ImDrawList raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_background_draw_list()
}

///|
/// Safe generated wrapper for `ImGui_GetForegroundDrawList`.
pub fn get_foreground_draw_list() -> @raw_generated.ImDrawList raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_foreground_draw_list()
}

///|
/// Safe generated wrapper for `ImGui_IsRectVisibleBySize`.
pub fn is_rect_visible_by_size(
  _p0 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_rect_visible_by_size(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsRectVisibleImVec2Ptr`.
pub fn is_rect_visible_im_vec2_ptr(
  _p0 : @raw_generated.ImVec2,
  _p1 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_rect_visible_im_vec2_ptr(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_GetTime`.
pub fn get_time() -> Double raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_time()
}

///|
/// Safe generated wrapper for `ImGui_GetFrameCount`.
pub fn get_frame_count() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_frame_count()
}

///|
/// Safe generated wrapper for `ImGui_GetDrawListSharedData`.
pub fn get_draw_list_shared_data() -> @raw_generated.ImDrawListSharedData raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_draw_list_shared_data()
}

///|
/// Safe generated wrapper for `ImGui_GetStyleColorName`.
pub fn get_style_color_name(_p0 : Int) -> String raise ImGuiError {
  ensure_current_context()
  @raw_generated.cstring_to_string(
    @raw_generated.im_gui_get_style_color_name(_p0),
  )
}

///|
/// Safe generated wrapper for `ImGui_SetStateStorage`.
pub fn set_state_storage(
  _p0 : @raw_generated.ImGuiStorage,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_state_storage(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetStateStorage`.
pub fn get_state_storage() -> @raw_generated.ImGuiStorage raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_state_storage()
}

///|
/// Safe generated wrapper for `ImGui_CalcTextSize`.
pub fn calc_text_size(_p0 : String) -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_calc_text_size(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_CalcTextSizeEx`.
pub fn calc_text_size_ex(
  _p0 : String,
  _p2 : Bool,
  _p3 : Float,
) -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_calc_text_size_ex(
    _c0.raw(),
    @raw_generated.null_c_string(),
    _p2,
    _p3,
  )
}

///|
/// Safe generated wrapper for `ImGui_ColorConvertU32ToFloat4`.
pub fn color_convert_u32_to_float4(
  _p0 : UInt,
) -> @raw_generated.ImVec4 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_color_convert_u32_to_float4(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ColorConvertFloat4ToU32`.
pub fn color_convert_float4_to_u32(
  _p0 : @raw_generated.ImVec4,
) -> UInt raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_color_convert_float4_to_u32(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ColorConvertRGBtoHSV`.
pub fn color_convert_rg_bto_hsv(
  _p0 : Float,
  _p1 : Float,
  _p2 : Float,
  _p3 : @raw_generated.FloatPtr,
  _p4 : @raw_generated.FloatPtr,
  _p5 : @raw_generated.FloatPtr,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_color_convert_rg_bto_hsv(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImGui_ColorConvertHSVtoRGB`.
pub fn color_convert_hs_vto_rgb(
  _p0 : Float,
  _p1 : Float,
  _p2 : Float,
  _p3 : @raw_generated.FloatPtr,
  _p4 : @raw_generated.FloatPtr,
  _p5 : @raw_generated.FloatPtr,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_color_convert_hs_vto_rgb(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImGui_IsKeyDown`.
pub fn is_key_down(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_key_down(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsKeyPressed`.
pub fn is_key_pressed(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_key_pressed(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsKeyPressedEx`.
pub fn is_key_pressed_ex(_p0 : Int, _p1 : Bool) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_key_pressed_ex(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_IsKeyReleased`.
pub fn is_key_released(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_key_released(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsKeyChordPressed`.
pub fn is_key_chord_pressed(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_key_chord_pressed(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetKeyPressedAmount`.
pub fn get_key_pressed_amount(
  _p0 : Int,
  _p1 : Float,
  _p2 : Float,
) -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_key_pressed_amount(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_GetKeyName`.
pub fn get_key_name(_p0 : Int) -> String raise ImGuiError {
  ensure_current_context()
  @raw_generated.cstring_to_string(@raw_generated.im_gui_get_key_name(_p0))
}

///|
/// Safe generated wrapper for `ImGui_SetNextFrameWantCaptureKeyboard`.
pub fn set_next_frame_want_capture_keyboard(
  _p0 : Bool,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_frame_want_capture_keyboard(_p0)
}

///|
/// Safe generated wrapper for `ImGui_Shortcut`.
pub fn shortcut(_p0 : Int, _p1 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_shortcut(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetNextItemShortcut`.
pub fn set_next_item_shortcut(_p0 : Int, _p1 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_item_shortcut(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_SetItemKeyOwner`.
pub fn set_item_key_owner(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_item_key_owner(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsMouseDown`.
pub fn is_mouse_down(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_down(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsMouseClicked`.
pub fn is_mouse_clicked(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_clicked(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsMouseClickedEx`.
pub fn is_mouse_clicked_ex(_p0 : Int, _p1 : Bool) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_clicked_ex(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_IsMouseReleased`.
pub fn is_mouse_released(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_released(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsMouseDoubleClicked`.
pub fn is_mouse_double_clicked(_p0 : Int) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_double_clicked(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsMouseReleasedWithDelay`.
pub fn is_mouse_released_with_delay(
  _p0 : Int,
  _p1 : Float,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_released_with_delay(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_GetMouseClickedCount`.
pub fn get_mouse_clicked_count(_p0 : Int) -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_mouse_clicked_count(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsMouseHoveringRect`.
pub fn is_mouse_hovering_rect(
  _p0 : @raw_generated.ImVec2,
  _p1 : @raw_generated.ImVec2,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_hovering_rect(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_IsMouseHoveringRectEx`.
pub fn is_mouse_hovering_rect_ex(
  _p0 : @raw_generated.ImVec2,
  _p1 : @raw_generated.ImVec2,
  _p2 : Bool,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_hovering_rect_ex(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGui_IsMousePosValid`.
pub fn is_mouse_pos_valid(_p0 : @raw_generated.ImVec2) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_pos_valid(_p0)
}

///|
/// Safe generated wrapper for `ImGui_IsAnyMouseDown`.
pub fn is_any_mouse_down() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_any_mouse_down()
}

///|
/// Safe generated wrapper for `ImGui_GetMousePos`.
pub fn get_mouse_pos() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_mouse_pos()
}

///|
/// Safe generated wrapper for `ImGui_GetMousePosOnOpeningCurrentPopup`.
pub fn get_mouse_pos_on_opening_current_popup() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_mouse_pos_on_opening_current_popup()
}

///|
/// Safe generated wrapper for `ImGui_IsMouseDragging`.
pub fn is_mouse_dragging(_p0 : Int, _p1 : Float) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_is_mouse_dragging(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_GetMouseDragDelta`.
pub fn get_mouse_drag_delta(
  _p0 : Int,
  _p1 : Float,
) -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_mouse_drag_delta(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGui_ResetMouseDragDelta`.
pub fn reset_mouse_drag_delta() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_reset_mouse_drag_delta()
}

///|
/// Safe generated wrapper for `ImGui_ResetMouseDragDeltaEx`.
pub fn reset_mouse_drag_delta_ex(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_reset_mouse_drag_delta_ex(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetMouseCursor`.
pub fn get_mouse_cursor() -> Int raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_mouse_cursor()
}

///|
/// Safe generated wrapper for `ImGui_SetMouseCursor`.
pub fn set_mouse_cursor(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_mouse_cursor(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetNextFrameWantCaptureMouse`.
pub fn set_next_frame_want_capture_mouse(_p0 : Bool) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_next_frame_want_capture_mouse(_p0)
}

///|
/// Safe generated wrapper for `ImGui_GetClipboardText`.
pub fn get_clipboard_text() -> String raise ImGuiError {
  ensure_current_context()
  @raw_generated.cstring_to_string(@raw_generated.im_gui_get_clipboard_text())
}

///|
/// Safe generated wrapper for `ImGui_SetClipboardText`.
pub fn set_clipboard_text(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_set_clipboard_text(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_LoadIniSettingsFromDisk`.
pub fn load_ini_settings_from_disk(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_load_ini_settings_from_disk(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_LoadIniSettingsFromMemory`.
pub fn load_ini_settings_from_memory(
  _p0 : String,
  _p1 : UInt64,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_load_ini_settings_from_memory(_c0.raw(), _p1)
}

///|
/// Safe generated wrapper for `ImGui_SaveIniSettingsToDisk`.
pub fn save_ini_settings_to_disk(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_save_ini_settings_to_disk(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_SaveIniSettingsToMemory`.
pub fn save_ini_settings_to_memory(
  _p0 : @raw_generated.SizeTPtr,
) -> String raise ImGuiError {
  ensure_current_context()
  @raw_generated.cstring_to_string(
    @raw_generated.im_gui_save_ini_settings_to_memory(_p0),
  )
}

///|
/// Safe generated wrapper for `ImGui_DebugTextEncoding`.
pub fn debug_text_encoding(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_debug_text_encoding(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_DebugFlashStyleColor`.
pub fn debug_flash_style_color(_p0 : Int) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_debug_flash_style_color(_p0)
}

///|
/// Safe generated wrapper for `ImGui_DebugStartItemPicker`.
pub fn debug_start_item_picker() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_debug_start_item_picker()
}

///|
/// Safe generated wrapper for `ImGui_DebugCheckVersionAndDataLayout`.
pub fn debug_check_version_and_data_layout(
  _p0 : String,
  _p1 : UInt64,
  _p2 : UInt64,
  _p3 : UInt64,
  _p4 : UInt64,
  _p5 : UInt64,
  _p6 : UInt64,
) -> Bool {
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_debug_check_version_and_data_layout(
    _c0.raw(),
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _p6,
  )
}

///|
/// Safe literal-text wrapper for `ImGui_DebugLog`.
pub fn debug_log(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_debug_log_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_DebugLogUnformatted`.
pub fn debug_log_unformatted(_p0 : String) -> Unit raise ImGuiError {
  ensure_current_context()
  let _c0 = @raw_generated.OwnedCString::new(_p0)
  defer _c0.free()
  @raw_generated.im_gui_debug_log_unformatted(_c0.raw())
}

///|
/// Safe generated wrapper for `ImGui_GetAllocatorFunctions`.
pub fn get_allocator_functions(
  _p0 : @raw_generated.ImGuiMemAllocFuncPtr,
  _p1 : @raw_generated.ImGuiMemFreeFuncPtr,
  _p2 : @raw_generated.VoidPtrPtr,
) -> Unit {
  @raw_generated.im_gui_get_allocator_functions(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStyle_ScaleAllSizes`.
pub fn style_scale_all_sizes(
  _p0 : @raw_generated.ImGuiStyle,
  _p1 : Float,
) -> Unit {
  @raw_generated.im_gui_style_scale_all_sizes(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddKeyEvent`.
pub fn io_add_key_event(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
) -> Unit {
  @raw_generated.im_gui_io_add_key_event(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddKeyAnalogEvent`.
pub fn io_add_key_analog_event(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
  _p3 : Float,
) -> Unit {
  @raw_generated.im_gui_io_add_key_analog_event(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddMousePosEvent`.
pub fn io_add_mouse_pos_event(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Float,
  _p2 : Float,
) -> Unit {
  @raw_generated.im_gui_io_add_mouse_pos_event(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddMouseButtonEvent`.
pub fn io_add_mouse_button_event(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
) -> Unit {
  @raw_generated.im_gui_io_add_mouse_button_event(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddMouseWheelEvent`.
pub fn io_add_mouse_wheel_event(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Float,
  _p2 : Float,
) -> Unit {
  @raw_generated.im_gui_io_add_mouse_wheel_event(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddMouseSourceEvent`.
pub fn io_add_mouse_source_event(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_gui_io_add_mouse_source_event(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddFocusEvent`.
pub fn io_add_focus_event(_p0 : @raw_generated.ImGuiIO, _p1 : Bool) -> Unit {
  @raw_generated.im_gui_io_add_focus_event(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddInputCharacter`.
pub fn io_add_input_character(_p0 : @raw_generated.ImGuiIO, _p1 : UInt) -> Unit {
  @raw_generated.im_gui_io_add_input_character(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddInputCharacterUTF16`.
pub fn io_add_input_character_utf16(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_gui_io_add_input_character_utf16(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiIO_AddInputCharactersUTF8`.
pub fn io_add_input_characters_utf8(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : String,
) -> Unit {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_io_add_input_characters_utf8(_p0, _c1.raw())
}

///|
/// Safe generated wrapper for `ImGuiIO_SetKeyEventNativeData`.
pub fn io_set_key_event_native_data(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Int,
  _p2 : Int,
  _p3 : Int,
) -> Unit {
  @raw_generated.im_gui_io_set_key_event_native_data(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGuiIO_SetKeyEventNativeDataEx`.
pub fn io_set_key_event_native_data_ex(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Int,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
) -> Unit {
  @raw_generated.im_gui_io_set_key_event_native_data_ex(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImGuiIO_SetAppAcceptingEvents`.
pub fn io_set_app_accepting_events(
  _p0 : @raw_generated.ImGuiIO,
  _p1 : Bool,
) -> Unit {
  @raw_generated.im_gui_io_set_app_accepting_events(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiIO_ClearEventsQueue`.
pub fn io_clear_events_queue(_p0 : @raw_generated.ImGuiIO) -> Unit {
  @raw_generated.im_gui_io_clear_events_queue(_p0)
}

///|
/// Safe generated wrapper for `ImGuiIO_ClearInputKeys`.
pub fn io_clear_input_keys(_p0 : @raw_generated.ImGuiIO) -> Unit {
  @raw_generated.im_gui_io_clear_input_keys(_p0)
}

///|
/// Safe generated wrapper for `ImGuiIO_ClearInputMouse`.
pub fn io_clear_input_mouse(_p0 : @raw_generated.ImGuiIO) -> Unit {
  @raw_generated.im_gui_io_clear_input_mouse(_p0)
}

///|
/// Safe generated wrapper for `ImGuiInputTextCallbackData_DeleteChars`.
pub fn input_text_callback_data_delete_chars(
  _p0 : @raw_generated.ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_gui_input_text_callback_data_delete_chars(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiInputTextCallbackData_InsertChars`.
pub fn input_text_callback_data_insert_chars(
  _p0 : @raw_generated.ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : String,
) -> Unit {
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.im_gui_input_text_callback_data_insert_chars(
    _p0,
    _p1,
    _c2.raw(),
    @raw_generated.null_c_string(),
  )
}

///|
/// Safe generated wrapper for `ImGuiInputTextCallbackData_SelectAll`.
pub fn input_text_callback_data_select_all(
  _p0 : @raw_generated.ImGuiInputTextCallbackData,
) -> Unit {
  @raw_generated.im_gui_input_text_callback_data_select_all(_p0)
}

///|
/// Safe generated wrapper for `ImGuiInputTextCallbackData_SetSelection`.
pub fn input_text_callback_data_set_selection(
  _p0 : @raw_generated.ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_gui_input_text_callback_data_set_selection(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiInputTextCallbackData_ClearSelection`.
pub fn input_text_callback_data_clear_selection(
  _p0 : @raw_generated.ImGuiInputTextCallbackData,
) -> Unit {
  @raw_generated.im_gui_input_text_callback_data_clear_selection(_p0)
}

///|
/// Safe generated wrapper for `ImGuiInputTextCallbackData_HasSelection`.
pub fn input_text_callback_data_has_selection(
  _p0 : @raw_generated.ImGuiInputTextCallbackData,
) -> Bool {
  @raw_generated.im_gui_input_text_callback_data_has_selection(_p0)
}

///|
/// Safe generated wrapper for `ImGuiPayload_Clear`.
pub fn payload_clear(_p0 : @raw_generated.ImGuiPayload) -> Unit {
  @raw_generated.im_gui_payload_clear(_p0)
}

///|
/// Safe generated wrapper for `ImGuiPayload_IsDataType`.
pub fn payload_is_data_type(
  _p0 : @raw_generated.ImGuiPayload,
  _p1 : String,
) -> Bool {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_payload_is_data_type(_p0, _c1.raw())
}

///|
/// Safe generated wrapper for `ImGuiPayload_IsPreview`.
pub fn payload_is_preview(_p0 : @raw_generated.ImGuiPayload) -> Bool {
  @raw_generated.im_gui_payload_is_preview(_p0)
}

///|
/// Safe generated wrapper for `ImGuiPayload_IsDelivery`.
pub fn payload_is_delivery(_p0 : @raw_generated.ImGuiPayload) -> Bool {
  @raw_generated.im_gui_payload_is_delivery(_p0)
}

///|
/// Safe generated wrapper for `ImGuiTextFilter_ImGuiTextRange_empty`.
pub fn text_filter_text_range_empty(
  _p0 : @raw_generated.ImGuiTextFilter_ImGuiTextRange,
) -> Bool {
  @raw_generated.im_gui_text_filter_im_gui_text_range_empty(_p0)
}

///|
/// Safe generated wrapper for `ImGuiTextFilter_ImGuiTextRange_split`.
pub fn text_filter_text_range_split(
  _p0 : @raw_generated.ImGuiTextFilter_ImGuiTextRange,
  _p1 : Int,
  _p2 : @raw_generated.ImVector_ImGuiTextRange,
) -> Unit {
  @raw_generated.im_gui_text_filter_im_gui_text_range_split(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiTextFilter_Draw`.
pub fn text_filter_draw(
  _p0 : @raw_generated.ImGuiTextFilter,
  _p1 : String,
  _p2 : Float,
) -> Bool {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_text_filter_draw(_p0, _c1.raw(), _p2)
}

///|
/// Safe generated wrapper for `ImGuiTextFilter_PassFilter`.
pub fn text_filter_pass_filter(
  _p0 : @raw_generated.ImGuiTextFilter,
  _p1 : String,
) -> Bool {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_text_filter_pass_filter(
    _p0,
    _c1.raw(),
    @raw_generated.null_c_string(),
  )
}

///|
/// Safe generated wrapper for `ImGuiTextFilter_Build`.
pub fn text_filter_build(_p0 : @raw_generated.ImGuiTextFilter) -> Unit {
  @raw_generated.im_gui_text_filter_build(_p0)
}

///|
/// Safe generated wrapper for `ImGuiTextFilter_Clear`.
pub fn text_filter_clear(_p0 : @raw_generated.ImGuiTextFilter) -> Unit {
  @raw_generated.im_gui_text_filter_clear(_p0)
}

///|
/// Safe generated wrapper for `ImGuiTextFilter_IsActive`.
pub fn text_filter_is_active(_p0 : @raw_generated.ImGuiTextFilter) -> Bool {
  @raw_generated.im_gui_text_filter_is_active(_p0)
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_begin`.
pub fn text_buffer_begin(_p0 : @raw_generated.ImGuiTextBuffer) -> String {
  @raw_generated.cstring_to_string(@raw_generated.im_gui_text_buffer_begin(_p0))
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_end`.
pub fn text_buffer_end(_p0 : @raw_generated.ImGuiTextBuffer) -> String {
  @raw_generated.cstring_to_string(@raw_generated.im_gui_text_buffer_end(_p0))
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_size`.
pub fn text_buffer_size(_p0 : @raw_generated.ImGuiTextBuffer) -> Int {
  @raw_generated.im_gui_text_buffer_size(_p0)
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_empty`.
pub fn text_buffer_empty(_p0 : @raw_generated.ImGuiTextBuffer) -> Bool {
  @raw_generated.im_gui_text_buffer_empty(_p0)
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_clear`.
pub fn text_buffer_clear(_p0 : @raw_generated.ImGuiTextBuffer) -> Unit {
  @raw_generated.im_gui_text_buffer_clear(_p0)
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_resize`.
pub fn text_buffer_resize(
  _p0 : @raw_generated.ImGuiTextBuffer,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_gui_text_buffer_resize(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_reserve`.
pub fn text_buffer_reserve(
  _p0 : @raw_generated.ImGuiTextBuffer,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_gui_text_buffer_reserve(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_c_str`.
pub fn text_buffer_c_str(_p0 : @raw_generated.ImGuiTextBuffer) -> String {
  @raw_generated.cstring_to_string(@raw_generated.im_gui_text_buffer_c_str(_p0))
}

///|
/// Safe generated wrapper for `ImGuiTextBuffer_append`.
pub fn text_buffer_append(
  _p0 : @raw_generated.ImGuiTextBuffer,
  _p1 : String,
) -> Unit {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_text_buffer_append(
    _p0,
    _c1.raw(),
    @raw_generated.null_c_string(),
  )
}

///|
/// Safe literal-text wrapper for `ImGuiTextBuffer_appendf`.
pub fn text_buffer_appendf(
  _p0 : @raw_generated.ImGuiTextBuffer,
  _p1 : String,
) -> Unit {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_gui_text_buffer_append(
    _p0,
    _c1.raw(),
    @raw_generated.null_c_string(),
  )
}

///|
/// Safe generated wrapper for `ImGuiStorage_Clear`.
pub fn storage_clear(_p0 : @raw_generated.ImGuiStorage) -> Unit {
  @raw_generated.im_gui_storage_clear(_p0)
}

///|
/// Safe generated wrapper for `ImGuiStorage_GetInt`.
pub fn storage_get_int(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> Int {
  @raw_generated.im_gui_storage_get_int(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_SetInt`.
pub fn storage_set_int(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_gui_storage_set_int(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_GetBool`.
pub fn storage_get_bool(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Bool {
  @raw_generated.im_gui_storage_get_bool(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_SetBool`.
pub fn storage_set_bool(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Unit {
  @raw_generated.im_gui_storage_set_bool(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_GetFloat`.
pub fn storage_get_float(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> Float {
  @raw_generated.im_gui_storage_get_float(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_SetFloat`.
pub fn storage_set_float(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> Unit {
  @raw_generated.im_gui_storage_set_float(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_GetVoidPtr`.
pub fn storage_get_void_ptr(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
) -> @raw_generated.VoidPtr {
  @raw_generated.im_gui_storage_get_void_ptr(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiStorage_SetVoidPtr`.
pub fn storage_set_void_ptr(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : @raw_generated.VoidPtr,
) -> Unit {
  @raw_generated.im_gui_storage_set_void_ptr(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_GetIntRef`.
pub fn storage_get_int_ref(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> @raw_generated.IntPtr {
  @raw_generated.im_gui_storage_get_int_ref(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_GetBoolRef`.
pub fn storage_get_bool_ref(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> @raw_generated.BoolPtr {
  @raw_generated.im_gui_storage_get_bool_ref(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_GetFloatRef`.
pub fn storage_get_float_ref(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> @raw_generated.FloatPtr {
  @raw_generated.im_gui_storage_get_float_ref(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_GetVoidPtrRef`.
pub fn storage_get_void_ptr_ref(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : UInt,
  _p2 : @raw_generated.VoidPtr,
) -> @raw_generated.VoidPtrPtr {
  @raw_generated.im_gui_storage_get_void_ptr_ref(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiStorage_BuildSortByKey`.
pub fn storage_build_sort_by_key(_p0 : @raw_generated.ImGuiStorage) -> Unit {
  @raw_generated.im_gui_storage_build_sort_by_key(_p0)
}

///|
/// Safe generated wrapper for `ImGuiStorage_SetAllInt`.
pub fn storage_set_all_int(
  _p0 : @raw_generated.ImGuiStorage,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_gui_storage_set_all_int(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiListClipper_Begin`.
pub fn list_clipper_begin(
  _p0 : @raw_generated.ImGuiListClipper,
  _p1 : Int,
  _p2 : Float,
) -> Unit {
  @raw_generated.im_gui_list_clipper_begin(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiListClipper_End`.
pub fn list_clipper_end(_p0 : @raw_generated.ImGuiListClipper) -> Unit {
  @raw_generated.im_gui_list_clipper_end(_p0)
}

///|
/// Safe generated wrapper for `ImGuiListClipper_Step`.
pub fn list_clipper_step(_p0 : @raw_generated.ImGuiListClipper) -> Bool {
  @raw_generated.im_gui_list_clipper_step(_p0)
}

///|
/// Safe generated wrapper for `ImGuiListClipper_IncludeItemByIndex`.
pub fn list_clipper_include_item_by_index(
  _p0 : @raw_generated.ImGuiListClipper,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_gui_list_clipper_include_item_by_index(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiListClipper_IncludeItemsByIndex`.
pub fn list_clipper_include_items_by_index(
  _p0 : @raw_generated.ImGuiListClipper,
  _p1 : Int,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_gui_list_clipper_include_items_by_index(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiListClipper_SeekCursorForItem`.
pub fn list_clipper_seek_cursor_for_item(
  _p0 : @raw_generated.ImGuiListClipper,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_gui_list_clipper_seek_cursor_for_item(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImColor_SetHSV`.
pub fn color_set_hsv(
  _p0 : @raw_generated.ImColor,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
) -> Unit {
  @raw_generated.im_color_set_hsv(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImColor_HSV`.
pub fn color_hsv(
  _p0 : Float,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
) -> @raw_generated.ImColor {
  @raw_generated.im_color_hsv(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImGuiSelectionBasicStorage_ApplyRequests`.
pub fn selection_basic_storage_apply_requests(
  _p0 : @raw_generated.ImGuiSelectionBasicStorage,
  _p1 : @raw_generated.ImGuiMultiSelectIO,
) -> Unit {
  @raw_generated.im_gui_selection_basic_storage_apply_requests(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiSelectionBasicStorage_Contains`.
pub fn selection_basic_storage_contains(
  _p0 : @raw_generated.ImGuiSelectionBasicStorage,
  _p1 : UInt,
) -> Bool {
  @raw_generated.im_gui_selection_basic_storage_contains(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiSelectionBasicStorage_Clear`.
pub fn selection_basic_storage_clear(
  _p0 : @raw_generated.ImGuiSelectionBasicStorage,
) -> Unit {
  @raw_generated.im_gui_selection_basic_storage_clear(_p0)
}

///|
/// Safe generated wrapper for `ImGuiSelectionBasicStorage_Swap`.
pub fn selection_basic_storage_swap(
  _p0 : @raw_generated.ImGuiSelectionBasicStorage,
  _p1 : @raw_generated.ImGuiSelectionBasicStorage,
) -> Unit {
  @raw_generated.im_gui_selection_basic_storage_swap(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImGuiSelectionBasicStorage_SetItemSelected`.
pub fn selection_basic_storage_set_item_selected(
  _p0 : @raw_generated.ImGuiSelectionBasicStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Unit {
  @raw_generated.im_gui_selection_basic_storage_set_item_selected(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiSelectionBasicStorage_GetNextSelectedItem`.
pub fn selection_basic_storage_get_next_selected_item(
  _p0 : @raw_generated.ImGuiSelectionBasicStorage,
  _p1 : @raw_generated.VoidPtrPtr,
  _p2 : @raw_generated.ImGuiIDPtr,
) -> Bool {
  @raw_generated.im_gui_selection_basic_storage_get_next_selected_item(
    _p0, _p1, _p2,
  )
}

///|
/// Safe generated wrapper for `ImGuiSelectionBasicStorage_GetStorageIdFromIndex`.
pub fn selection_basic_storage_get_storage_id_from_index(
  _p0 : @raw_generated.ImGuiSelectionBasicStorage,
  _p1 : Int,
) -> UInt {
  @raw_generated.im_gui_selection_basic_storage_get_storage_id_from_index(
    _p0, _p1,
  )
}

///|
/// Safe generated wrapper for `ImGuiSelectionExternalStorage_ApplyRequests`.
pub fn selection_external_storage_apply_requests(
  _p0 : @raw_generated.ImGuiSelectionExternalStorage,
  _p1 : @raw_generated.ImGuiMultiSelectIO,
) -> Unit {
  @raw_generated.im_gui_selection_external_storage_apply_requests(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawCmd_GetTexID`.
pub fn draw_cmd_get_tex_id(_p0 : @raw_generated.ImDrawCmd) -> UInt64 {
  @raw_generated.im_draw_cmd_get_tex_id(_p0)
}

///|
/// Safe generated wrapper for `ImDrawListSplitter_Clear`.
pub fn draw_list_splitter_clear(
  _p0 : @raw_generated.ImDrawListSplitter,
) -> Unit {
  @raw_generated.im_draw_list_splitter_clear(_p0)
}

///|
/// Safe generated wrapper for `ImDrawListSplitter_ClearFreeMemory`.
pub fn draw_list_splitter_clear_free_memory(
  _p0 : @raw_generated.ImDrawListSplitter,
) -> Unit {
  @raw_generated.im_draw_list_splitter_clear_free_memory(_p0)
}

///|
/// Safe generated wrapper for `ImDrawListSplitter_Split`.
pub fn draw_list_splitter_split(
  _p0 : @raw_generated.ImDrawListSplitter,
  _p1 : @raw_generated.ImDrawList,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_draw_list_splitter_split(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImDrawListSplitter_Merge`.
pub fn draw_list_splitter_merge(
  _p0 : @raw_generated.ImDrawListSplitter,
  _p1 : @raw_generated.ImDrawList,
) -> Unit {
  @raw_generated.im_draw_list_splitter_merge(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawListSplitter_SetCurrentChannel`.
pub fn draw_list_splitter_set_current_channel(
  _p0 : @raw_generated.ImDrawListSplitter,
  _p1 : @raw_generated.ImDrawList,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_draw_list_splitter_set_current_channel(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImDrawList_PushClipRect`.
pub fn draw_list_push_clip_rect(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : Bool,
) -> Unit {
  @raw_generated.im_draw_list_push_clip_rect(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_PushClipRectFullScreen`.
pub fn draw_list_push_clip_rect_full_screen(
  _p0 : @raw_generated.ImDrawList,
) -> Unit {
  @raw_generated.im_draw_list_push_clip_rect_full_screen(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_PopClipRect`.
pub fn draw_list_pop_clip_rect(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_pop_clip_rect(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_PushTexture`.
pub fn draw_list_push_texture(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImTextureRef,
) -> Unit {
  @raw_generated.im_draw_list_push_texture(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_PopTexture`.
pub fn draw_list_pop_texture(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_pop_texture(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_GetClipRectMin`.
pub fn draw_list_get_clip_rect_min(
  _p0 : @raw_generated.ImDrawList,
) -> @raw_generated.ImVec2 {
  @raw_generated.im_draw_list_get_clip_rect_min(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_GetClipRectMax`.
pub fn draw_list_get_clip_rect_max(
  _p0 : @raw_generated.ImDrawList,
) -> @raw_generated.ImVec2 {
  @raw_generated.im_draw_list_get_clip_rect_max(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_AddLine`.
pub fn draw_list_add_line(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_line(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddLineEx`.
pub fn draw_list_add_line_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
  _p4 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_line_ex(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddLineH`.
pub fn draw_list_add_line_h(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_line_h(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddLineHEx`.
pub fn draw_list_add_line_h_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
  _p5 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_line_h_ex(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddLineV`.
pub fn draw_list_add_line_v(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_line_v(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddLineVEx`.
pub fn draw_list_add_line_v_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
  _p5 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_line_v_ex(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddRect`.
pub fn draw_list_add_rect(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_rect(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddRectEx`.
pub fn draw_list_add_rect_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Float,
  _p6 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_rect_ex(_p0, _p1, _p2, _p3, _p4, _p5, _p6)
}

///|
/// Safe generated wrapper for `ImDrawList_AddRectFilled`.
pub fn draw_list_add_rect_filled(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_rect_filled(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddRectFilledEx`.
pub fn draw_list_add_rect_filled_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_rect_filled_ex(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddRectFilledMultiColor`.
pub fn draw_list_add_rect_filled_multi_color(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
  _p4 : UInt,
  _p5 : UInt,
  _p6 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_rect_filled_multi_color(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddQuad`.
pub fn draw_list_add_quad(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_quad(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddQuadEx`.
pub fn draw_list_add_quad_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : UInt,
  _p6 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_quad_ex(_p0, _p1, _p2, _p3, _p4, _p5, _p6)
}

///|
/// Safe generated wrapper for `ImDrawList_AddQuadFilled`.
pub fn draw_list_add_quad_filled(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_quad_filled(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddTriangle`.
pub fn draw_list_add_triangle(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_triangle(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddTriangleEx`.
pub fn draw_list_add_triangle_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
  _p5 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_triangle_ex(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddTriangleFilled`.
pub fn draw_list_add_triangle_filled(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_triangle_filled(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddCircle`.
pub fn draw_list_add_circle(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_circle(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddCircleEx`.
pub fn draw_list_add_circle_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_circle_ex(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddCircleFilled`.
pub fn draw_list_add_circle_filled(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_circle_filled(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddNgon`.
pub fn draw_list_add_ngon(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_ngon(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddNgonEx`.
pub fn draw_list_add_ngon_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_ngon_ex(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddNgonFilled`.
pub fn draw_list_add_ngon_filled(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_ngon_filled(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddEllipse`.
pub fn draw_list_add_ellipse(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_ellipse(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddEllipseEx`.
pub fn draw_list_add_ellipse_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
  _p6 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_ellipse_ex(_p0, _p1, _p2, _p3, _p4, _p5, _p6)
}

///|
/// Safe generated wrapper for `ImDrawList_AddEllipseFilled`.
pub fn draw_list_add_ellipse_filled(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_ellipse_filled(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddEllipseFilledEx`.
pub fn draw_list_add_ellipse_filled_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_ellipse_filled_ex(
    _p0, _p1, _p2, _p3, _p4, _p5,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddText`.
pub fn draw_list_add_text(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : UInt,
  _p3 : String,
) -> Unit {
  let _c3 = @raw_generated.OwnedCString::new(_p3)
  defer _c3.free()
  @raw_generated.im_draw_list_add_text(_p0, _p1, _p2, _c3.raw())
}

///|
/// Safe generated wrapper for `ImDrawList_AddTextEx`.
pub fn draw_list_add_text_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : UInt,
  _p3 : String,
) -> Unit {
  let _c3 = @raw_generated.OwnedCString::new(_p3)
  defer _c3.free()
  @raw_generated.im_draw_list_add_text_ex(
    _p0,
    _p1,
    _p2,
    _c3.raw(),
    @raw_generated.null_c_string(),
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddTextImFontPtr`.
pub fn draw_list_add_text_im_font_ptr(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImFont,
  _p2 : Float,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
  _p5 : String,
) -> Unit {
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_draw_list_add_text_im_font_ptr(
    _p0,
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddTextImFontPtrEx`.
pub fn draw_list_add_text_im_font_ptr_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImFont,
  _p2 : Float,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
  _p5 : String,
  _p7 : Float,
  _p8 : @raw_generated.ImVec4,
) -> Unit {
  let _c5 = @raw_generated.OwnedCString::new(_p5)
  defer _c5.free()
  @raw_generated.im_draw_list_add_text_im_font_ptr_ex(
    _p0,
    _p1,
    _p2,
    _p3,
    _p4,
    _c5.raw(),
    @raw_generated.null_c_string(),
    _p7,
    _p8,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddBezierCubic`.
pub fn draw_list_add_bezier_cubic(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : UInt,
  _p6 : Float,
  _p7 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_bezier_cubic(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6, _p7,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddBezierQuadratic`.
pub fn draw_list_add_bezier_quadratic(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
  _p5 : Float,
  _p6 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_bezier_quadratic(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddPolyline`.
pub fn draw_list_add_polyline(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_polyline(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddConvexPolyFilled`.
pub fn draw_list_add_convex_poly_filled(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_convex_poly_filled(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddConcavePolyFilled`.
pub fn draw_list_add_concave_poly_filled(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_concave_poly_filled(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddImage`.
pub fn draw_list_add_image(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImTextureRef,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
) -> Unit {
  @raw_generated.im_draw_list_add_image(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddImageEx`.
pub fn draw_list_add_image_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImTextureRef,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : @raw_generated.ImVec2,
  _p6 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_image_ex(_p0, _p1, _p2, _p3, _p4, _p5, _p6)
}

///|
/// Safe generated wrapper for `ImDrawList_AddImageQuad`.
pub fn draw_list_add_image_quad(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImTextureRef,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : @raw_generated.ImVec2,
) -> Unit {
  @raw_generated.im_draw_list_add_image_quad(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_AddImageQuadEx`.
pub fn draw_list_add_image_quad_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImTextureRef,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : @raw_generated.ImVec2,
  _p6 : @raw_generated.ImVec2,
  _p7 : @raw_generated.ImVec2,
  _p8 : @raw_generated.ImVec2,
  _p9 : @raw_generated.ImVec2,
  _p10 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_add_image_quad_ex(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6, _p7, _p8, _p9, _p10,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddImageRounded`.
pub fn draw_list_add_image_rounded(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImTextureRef,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : @raw_generated.ImVec2,
  _p6 : UInt,
  _p7 : Float,
  _p8 : Int,
) -> Unit {
  @raw_generated.im_draw_list_add_image_rounded(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6, _p7, _p8,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_PathClear`.
pub fn draw_list_path_clear(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_path_clear(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_PathLineTo`.
pub fn draw_list_path_line_to(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
) -> Unit {
  @raw_generated.im_draw_list_path_line_to(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_PathLineToMergeDuplicate`.
pub fn draw_list_path_line_to_merge_duplicate(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
) -> Unit {
  @raw_generated.im_draw_list_path_line_to_merge_duplicate(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_PathFillConvex`.
pub fn draw_list_path_fill_convex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_path_fill_convex(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_PathFillConcave`.
pub fn draw_list_path_fill_concave(
  _p0 : @raw_generated.ImDrawList,
  _p1 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_path_fill_concave(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_PathStroke`.
pub fn draw_list_path_stroke(
  _p0 : @raw_generated.ImDrawList,
  _p1 : UInt,
  _p2 : Float,
  _p3 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_stroke(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_PathArcTo`.
pub fn draw_list_path_arc_to(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_arc_to(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_PathArcToFast`.
pub fn draw_list_path_arc_to_fast(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_arc_to_fast(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_PathEllipticalArcTo`.
pub fn draw_list_path_elliptical_arc_to(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : Float,
  _p4 : Float,
  _p5 : Float,
) -> Unit {
  @raw_generated.im_draw_list_path_elliptical_arc_to(
    _p0, _p1, _p2, _p3, _p4, _p5,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_PathEllipticalArcToEx`.
pub fn draw_list_path_elliptical_arc_to_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : Float,
  _p4 : Float,
  _p5 : Float,
  _p6 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_elliptical_arc_to_ex(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_PathBezierCubicCurveTo`.
pub fn draw_list_path_bezier_cubic_curve_to(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_bezier_cubic_curve_to(
    _p0, _p1, _p2, _p3, _p4,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_PathBezierQuadraticCurveTo`.
pub fn draw_list_path_bezier_quadratic_curve_to(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_bezier_quadratic_curve_to(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_PathRect`.
pub fn draw_list_path_rect(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : Float,
  _p4 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_rect(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImDrawList_AddDrawCmd`.
pub fn draw_list_add_draw_cmd(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_add_draw_cmd(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_CloneOutput`.
pub fn draw_list_clone_output(
  _p0 : @raw_generated.ImDrawList,
) -> @raw_generated.ImDrawList {
  @raw_generated.im_draw_list_clone_output(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_ChannelsSplit`.
pub fn draw_list_channels_split(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_draw_list_channels_split(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_ChannelsMerge`.
pub fn draw_list_channels_merge(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_channels_merge(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList_ChannelsSetCurrent`.
pub fn draw_list_channels_set_current(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_draw_list_channels_set_current(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_PrimReserve`.
pub fn draw_list_prim_reserve(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Int,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_draw_list_prim_reserve(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImDrawList_PrimUnreserve`.
pub fn draw_list_prim_unreserve(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Int,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_draw_list_prim_unreserve(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImDrawList_PrimRect`.
pub fn draw_list_prim_rect(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_prim_rect(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_PrimRectUV`.
pub fn draw_list_prim_rect_uv(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_prim_rect_uv(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList_PrimQuadUV`.
pub fn draw_list_prim_quad_uv(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec2,
  _p5 : @raw_generated.ImVec2,
  _p6 : @raw_generated.ImVec2,
  _p7 : @raw_generated.ImVec2,
  _p8 : @raw_generated.ImVec2,
  _p9 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_prim_quad_uv(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6, _p7, _p8, _p9,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_PrimWriteVtx`.
pub fn draw_list_prim_write_vtx(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_prim_write_vtx(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_PrimWriteIdx`.
pub fn draw_list_prim_write_idx(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_draw_list_prim_write_idx(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_PrimVtx`.
pub fn draw_list_prim_vtx(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
) -> Unit {
  @raw_generated.im_draw_list_prim_vtx(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_AddRectImDrawFlags`.
pub fn draw_list_add_rect_draw_flags(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
  _p6 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_rect_im_draw_flags(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_AddPolylineImDrawFlags`.
pub fn draw_list_add_polyline_draw_flags(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Int,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit {
  @raw_generated.im_draw_list_add_polyline_im_draw_flags(
    _p0, _p1, _p2, _p3, _p4, _p5,
  )
}

///|
/// Safe generated wrapper for `ImDrawList_PathStrokeImDrawFlags`.
pub fn draw_list_path_stroke_draw_flags(
  _p0 : @raw_generated.ImDrawList,
  _p1 : UInt,
  _p2 : Int,
  _p3 : Float,
) -> Unit {
  @raw_generated.im_draw_list_path_stroke_im_draw_flags(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImDrawList_PushTextureID`.
pub fn draw_list_push_texture_id(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImTextureRef,
) -> Unit {
  @raw_generated.im_draw_list_push_texture_id(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList_PopTextureID`.
pub fn draw_list_pop_texture_id(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_pop_texture_id(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList__SetDrawListSharedData`.
pub fn draw_list_set_draw_list_shared_data(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImDrawListSharedData,
) -> Unit {
  @raw_generated.im_draw_list_set_draw_list_shared_data(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList__ResetForNewFrame`.
pub fn draw_list_reset_for_new_frame(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_reset_for_new_frame(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList__ClearFreeMemory`.
pub fn draw_list_clear_free_memory(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_clear_free_memory(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList__PopUnusedDrawCmd`.
pub fn draw_list_pop_unused_draw_cmd(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_pop_unused_draw_cmd(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList__TryMergeDrawCmds`.
pub fn draw_list_try_merge_draw_cmds(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_try_merge_draw_cmds(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList__OnChangedClipRect`.
pub fn draw_list_on_changed_clip_rect(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_on_changed_clip_rect(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList__OnChangedTexture`.
pub fn draw_list_on_changed_texture(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_on_changed_texture(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList__OnChangedVtxOffset`.
pub fn draw_list_on_changed_vtx_offset(_p0 : @raw_generated.ImDrawList) -> Unit {
  @raw_generated.im_draw_list_on_changed_vtx_offset(_p0)
}

///|
/// Safe generated wrapper for `ImDrawList__SetTexture`.
pub fn draw_list_set_texture(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImTextureRef,
) -> Unit {
  @raw_generated.im_draw_list_set_texture(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList__CalcCircleAutoSegmentCount`.
pub fn draw_list_calc_circle_auto_segment_count(
  _p0 : @raw_generated.ImDrawList,
  _p1 : Float,
) -> Int {
  @raw_generated.im_draw_list_calc_circle_auto_segment_count(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawList__PathArcToFastEx`.
pub fn draw_list_path_arc_to_fast_ex(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_arc_to_fast_ex(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawList__PathArcToN`.
pub fn draw_list_path_arc_to_n(
  _p0 : @raw_generated.ImDrawList,
  _p1 : @raw_generated.ImVec2,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Int,
) -> Unit {
  @raw_generated.im_draw_list_path_arc_to_n(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImDrawData_Clear`.
pub fn draw_data_clear(_p0 : @raw_generated.ImDrawData) -> Unit {
  @raw_generated.im_draw_data_clear(_p0)
}

///|
/// Safe generated wrapper for `ImDrawData_AddDrawList`.
pub fn draw_data_add_draw_list(
  _p0 : @raw_generated.ImDrawData,
  _p1 : @raw_generated.ImDrawList,
) -> Unit {
  @raw_generated.im_draw_data_add_draw_list(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImDrawData_DeIndexAllBuffers`.
pub fn draw_data_de_index_all_buffers(_p0 : @raw_generated.ImDrawData) -> Unit {
  @raw_generated.im_draw_data_de_index_all_buffers(_p0)
}

///|
/// Safe generated wrapper for `ImDrawData_ScaleClipRects`.
pub fn draw_data_scale_clip_rects(
  _p0 : @raw_generated.ImDrawData,
  _p1 : @raw_generated.ImVec2,
) -> Unit {
  @raw_generated.im_draw_data_scale_clip_rects(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImTextureData_Create`.
pub fn texture_data_create(
  _p0 : @raw_generated.ImTextureData,
  _p1 : @raw_generated.ImTextureFormat,
  _p2 : Int,
  _p3 : Int,
) -> Unit {
  @raw_generated.im_texture_data_create(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImTextureData_DestroyPixels`.
pub fn texture_data_destroy_pixels(_p0 : @raw_generated.ImTextureData) -> Unit {
  @raw_generated.im_texture_data_destroy_pixels(_p0)
}

///|
/// Safe generated wrapper for `ImTextureData_GetPixels`.
pub fn texture_data_get_pixels(
  _p0 : @raw_generated.ImTextureData,
) -> @raw_generated.VoidPtr {
  @raw_generated.im_texture_data_get_pixels(_p0)
}

///|
/// Safe generated wrapper for `ImTextureData_GetPixelsAt`.
pub fn texture_data_get_pixels_at(
  _p0 : @raw_generated.ImTextureData,
  _p1 : Int,
  _p2 : Int,
) -> @raw_generated.VoidPtr {
  @raw_generated.im_texture_data_get_pixels_at(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImTextureData_GetSizeInBytes`.
pub fn texture_data_get_size_in_bytes(
  _p0 : @raw_generated.ImTextureData,
) -> Int {
  @raw_generated.im_texture_data_get_size_in_bytes(_p0)
}

///|
/// Safe generated wrapper for `ImTextureData_GetPitch`.
pub fn texture_data_get_pitch(_p0 : @raw_generated.ImTextureData) -> Int {
  @raw_generated.im_texture_data_get_pitch(_p0)
}

///|
/// Safe generated wrapper for `ImTextureData_GetTexRef`.
pub fn texture_data_get_tex_ref(
  _p0 : @raw_generated.ImTextureData,
) -> @raw_generated.ImTextureRef {
  @raw_generated.im_texture_data_get_tex_ref(_p0)
}

///|
/// Safe generated wrapper for `ImTextureData_GetTexID`.
pub fn texture_data_get_tex_id(_p0 : @raw_generated.ImTextureData) -> UInt64 {
  @raw_generated.im_texture_data_get_tex_id(_p0)
}

///|
/// Safe generated wrapper for `ImTextureData_SetTexID`.
pub fn texture_data_set_tex_id(
  _p0 : @raw_generated.ImTextureData,
  _p1 : UInt64,
) -> Unit {
  @raw_generated.im_texture_data_set_tex_id(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImTextureData_SetStatus`.
pub fn texture_data_set_status(
  _p0 : @raw_generated.ImTextureData,
  _p1 : @raw_generated.ImTextureStatus,
) -> Unit {
  @raw_generated.im_texture_data_set_status(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontGlyphRangesBuilder_Clear`.
pub fn font_glyph_ranges_builder_clear(
  _p0 : @raw_generated.ImFontGlyphRangesBuilder,
) -> Unit {
  @raw_generated.im_font_glyph_ranges_builder_clear(_p0)
}

///|
/// Safe generated wrapper for `ImFontGlyphRangesBuilder_GetBit`.
pub fn font_glyph_ranges_builder_get_bit(
  _p0 : @raw_generated.ImFontGlyphRangesBuilder,
  _p1 : UInt64,
) -> Bool {
  @raw_generated.im_font_glyph_ranges_builder_get_bit(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontGlyphRangesBuilder_SetBit`.
pub fn font_glyph_ranges_builder_set_bit(
  _p0 : @raw_generated.ImFontGlyphRangesBuilder,
  _p1 : UInt64,
) -> Unit {
  @raw_generated.im_font_glyph_ranges_builder_set_bit(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontGlyphRangesBuilder_AddChar`.
pub fn font_glyph_ranges_builder_add_char(
  _p0 : @raw_generated.ImFontGlyphRangesBuilder,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_font_glyph_ranges_builder_add_char(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontGlyphRangesBuilder_AddText`.
pub fn font_glyph_ranges_builder_add_text(
  _p0 : @raw_generated.ImFontGlyphRangesBuilder,
  _p1 : String,
) -> Unit {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_font_glyph_ranges_builder_add_text(
    _p0,
    _c1.raw(),
    @raw_generated.null_c_string(),
  )
}

///|
/// Safe generated wrapper for `ImFontGlyphRangesBuilder_AddRanges`.
pub fn font_glyph_ranges_builder_add_ranges(
  _p0 : @raw_generated.ImFontGlyphRangesBuilder,
  _p1 : @raw_generated.ImWcharPtr,
) -> Unit {
  @raw_generated.im_font_glyph_ranges_builder_add_ranges(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontGlyphRangesBuilder_BuildRanges`.
pub fn font_glyph_ranges_builder_build_ranges(
  _p0 : @raw_generated.ImFontGlyphRangesBuilder,
  _p1 : @raw_generated.ImVector_ImWchar,
) -> Unit {
  @raw_generated.im_font_glyph_ranges_builder_build_ranges(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddFont`.
pub fn font_atlas_add_font(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFontConfig,
) -> @raw_generated.ImFont {
  @raw_generated.im_font_atlas_add_font(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddFontDefault`.
pub fn font_atlas_add_font_default(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFontConfig,
) -> @raw_generated.ImFont {
  @raw_generated.im_font_atlas_add_font_default(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddFontDefaultVector`.
pub fn font_atlas_add_font_default_vector(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFontConfig,
) -> @raw_generated.ImFont {
  @raw_generated.im_font_atlas_add_font_default_vector(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddFontDefaultBitmap`.
pub fn font_atlas_add_font_default_bitmap(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFontConfig,
) -> @raw_generated.ImFont {
  @raw_generated.im_font_atlas_add_font_default_bitmap(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddFontFromFileTTF`.
pub fn font_atlas_add_font_from_file_ttf(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : String,
  _p2 : Float,
  _p3 : @raw_generated.ImFontConfig,
  _p4 : @raw_generated.ImWcharPtr,
) -> @raw_generated.ImFont {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_font_atlas_add_font_from_file_ttf(
    _p0,
    _c1.raw(),
    _p2,
    _p3,
    _p4,
  )
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddFontFromMemoryTTF`.
pub fn font_atlas_add_font_from_memory_ttf(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.VoidPtr,
  _p2 : Int,
  _p3 : Float,
  _p4 : @raw_generated.ImFontConfig,
  _p5 : @raw_generated.ImWcharPtr,
) -> @raw_generated.ImFont {
  @raw_generated.im_font_atlas_add_font_from_memory_ttf(
    _p0, _p1, _p2, _p3, _p4, _p5,
  )
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddFontFromMemoryCompressedTTF`.
pub fn font_atlas_add_font_from_memory_compressed_ttf(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.VoidPtr,
  _p2 : Int,
  _p3 : Float,
  _p4 : @raw_generated.ImFontConfig,
  _p5 : @raw_generated.ImWcharPtr,
) -> @raw_generated.ImFont {
  @raw_generated.im_font_atlas_add_font_from_memory_compressed_ttf(
    _p0, _p1, _p2, _p3, _p4, _p5,
  )
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddFontFromMemoryCompressedBase85TTF`.
pub fn font_atlas_add_font_from_memory_compressed_base85_ttf(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : String,
  _p2 : Float,
  _p3 : @raw_generated.ImFontConfig,
  _p4 : @raw_generated.ImWcharPtr,
) -> @raw_generated.ImFont {
  let _c1 = @raw_generated.OwnedCString::new(_p1)
  defer _c1.free()
  @raw_generated.im_font_atlas_add_font_from_memory_compressed_base85_ttf(
    _p0,
    _c1.raw(),
    _p2,
    _p3,
    _p4,
  )
}

///|
/// Safe generated wrapper for `ImFontAtlas_RemoveFont`.
pub fn font_atlas_remove_font(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFont,
) -> Unit {
  @raw_generated.im_font_atlas_remove_font(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_Clear`.
pub fn font_atlas_clear(_p0 : @raw_generated.ImFontAtlas) -> Unit {
  @raw_generated.im_font_atlas_clear(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_ClearFonts`.
pub fn font_atlas_clear_fonts(_p0 : @raw_generated.ImFontAtlas) -> Unit {
  @raw_generated.im_font_atlas_clear_fonts(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_CompactCache`.
pub fn font_atlas_compact_cache(_p0 : @raw_generated.ImFontAtlas) -> Unit {
  @raw_generated.im_font_atlas_compact_cache(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_SetFontLoader`.
pub fn font_atlas_set_font_loader(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFontLoader,
) -> Unit {
  @raw_generated.im_font_atlas_set_font_loader(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_ClearInputData`.
pub fn font_atlas_clear_input_data(_p0 : @raw_generated.ImFontAtlas) -> Unit {
  @raw_generated.im_font_atlas_clear_input_data(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_ClearTexData`.
pub fn font_atlas_clear_tex_data(_p0 : @raw_generated.ImFontAtlas) -> Unit {
  @raw_generated.im_font_atlas_clear_tex_data(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_Build`.
pub fn font_atlas_build(_p0 : @raw_generated.ImFontAtlas) -> Bool {
  @raw_generated.im_font_atlas_build(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetTexDataAsAlpha8`.
pub fn font_atlas_get_tex_data_as_alpha8(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.IntPtrPtr,
  _p2 : @raw_generated.IntPtr,
  _p3 : @raw_generated.IntPtr,
  _p4 : @raw_generated.IntPtr,
) -> Unit {
  @raw_generated.im_font_atlas_get_tex_data_as_alpha8(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetTexDataAsRGBA32`.
pub fn font_atlas_get_tex_data_as_rgba32(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.IntPtrPtr,
  _p2 : @raw_generated.IntPtr,
  _p3 : @raw_generated.IntPtr,
  _p4 : @raw_generated.IntPtr,
) -> Unit {
  @raw_generated.im_font_atlas_get_tex_data_as_rgba32(_p0, _p1, _p2, _p3, _p4)
}

///|
/// Safe generated wrapper for `ImFontAtlas_SetTexID`.
pub fn font_atlas_set_tex_id(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : UInt64,
) -> Unit {
  @raw_generated.im_font_atlas_set_tex_id(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_SetTexIDImTextureRefPtr`.
pub fn font_atlas_set_tex_id_im_texture_ref_ptr(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImTextureRef,
) -> Unit {
  @raw_generated.im_font_atlas_set_tex_id_im_texture_ref_ptr(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_IsBuilt`.
pub fn font_atlas_is_built(_p0 : @raw_generated.ImFontAtlas) -> Bool {
  @raw_generated.im_font_atlas_is_built(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesDefault`.
pub fn font_atlas_get_glyph_ranges_default(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_default(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesGreek`.
pub fn font_atlas_get_glyph_ranges_greek(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_greek(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesKorean`.
pub fn font_atlas_get_glyph_ranges_korean(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_korean(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesJapanese`.
pub fn font_atlas_get_glyph_ranges_japanese(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_japanese(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesChineseFull`.
pub fn font_atlas_get_glyph_ranges_chinese_full(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_chinese_full(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon`.
pub fn font_atlas_get_glyph_ranges_chinese_simplified_common(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_chinese_simplified_common(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesCyrillic`.
pub fn font_atlas_get_glyph_ranges_cyrillic(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_cyrillic(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesThai`.
pub fn font_atlas_get_glyph_ranges_thai(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_thai(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetGlyphRangesVietnamese`.
pub fn font_atlas_get_glyph_ranges_vietnamese(
  _p0 : @raw_generated.ImFontAtlas,
) -> @raw_generated.ImWcharPtr {
  @raw_generated.im_font_atlas_get_glyph_ranges_vietnamese(_p0)
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddCustomRect`.
pub fn font_atlas_add_custom_rect(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : Int,
  _p2 : Int,
  _p3 : @raw_generated.ImFontAtlasRect,
) -> Int {
  @raw_generated.im_font_atlas_add_custom_rect(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImFontAtlas_RemoveCustomRect`.
pub fn font_atlas_remove_custom_rect(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : Int,
) -> Unit {
  @raw_generated.im_font_atlas_remove_custom_rect(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetCustomRect`.
pub fn font_atlas_get_custom_rect(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : Int,
  _p2 : @raw_generated.ImFontAtlasRect,
) -> Bool {
  @raw_generated.im_font_atlas_get_custom_rect(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddCustomRectRegular`.
pub fn font_atlas_add_custom_rect_regular(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : Int,
  _p2 : Int,
) -> Int {
  @raw_generated.im_font_atlas_add_custom_rect_regular(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImFontAtlas_GetCustomRectByIndex`.
pub fn font_atlas_get_custom_rect_by_index(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : Int,
) -> @raw_generated.ImFontAtlasRect {
  @raw_generated.im_font_atlas_get_custom_rect_by_index(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontAtlas_CalcCustomRectUV`.
pub fn font_atlas_calc_custom_rect_uv(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFontAtlasRect,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
) -> Unit {
  @raw_generated.im_font_atlas_calc_custom_rect_uv(_p0, _p1, _p2, _p3)
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddCustomRectFontGlyph`.
pub fn font_atlas_add_custom_rect_font_glyph(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFont,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
  _p5 : Float,
  _p6 : @raw_generated.ImVec2,
) -> Int {
  @raw_generated.im_font_atlas_add_custom_rect_font_glyph(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6,
  )
}

///|
/// Safe generated wrapper for `ImFontAtlas_AddCustomRectFontGlyphForSize`.
pub fn font_atlas_add_custom_rect_font_glyph_for_size(
  _p0 : @raw_generated.ImFontAtlas,
  _p1 : @raw_generated.ImFont,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Int,
  _p6 : Float,
  _p7 : @raw_generated.ImVec2,
) -> Int {
  @raw_generated.im_font_atlas_add_custom_rect_font_glyph_for_size(
    _p0, _p1, _p2, _p3, _p4, _p5, _p6, _p7,
  )
}

///|
/// Safe generated wrapper for `ImFontBaked_ClearOutputData`.
pub fn font_baked_clear_output_data(_p0 : @raw_generated.ImFontBaked) -> Unit {
  @raw_generated.im_font_baked_clear_output_data(_p0)
}

///|
/// Safe generated wrapper for `ImFontBaked_FindGlyph`.
pub fn font_baked_find_glyph(
  _p0 : @raw_generated.ImFontBaked,
  _p1 : Int,
) -> @raw_generated.ImFontGlyph {
  @raw_generated.im_font_baked_find_glyph(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontBaked_FindGlyphNoFallback`.
pub fn font_baked_find_glyph_no_fallback(
  _p0 : @raw_generated.ImFontBaked,
  _p1 : Int,
) -> @raw_generated.ImFontGlyph {
  @raw_generated.im_font_baked_find_glyph_no_fallback(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontBaked_GetCharAdvance`.
pub fn font_baked_get_char_advance(
  _p0 : @raw_generated.ImFontBaked,
  _p1 : Int,
) -> Float {
  @raw_generated.im_font_baked_get_char_advance(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFontBaked_IsGlyphLoaded`.
pub fn font_baked_is_glyph_loaded(
  _p0 : @raw_generated.ImFontBaked,
  _p1 : Int,
) -> Bool {
  @raw_generated.im_font_baked_is_glyph_loaded(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFont_IsGlyphInFont`.
pub fn font_is_glyph_in_font(_p0 : @raw_generated.ImFont, _p1 : Int) -> Bool {
  @raw_generated.im_font_is_glyph_in_font(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFont_IsLoaded`.
pub fn font_is_loaded(_p0 : @raw_generated.ImFont) -> Bool {
  @raw_generated.im_font_is_loaded(_p0)
}

///|
/// Safe generated wrapper for `ImFont_GetDebugName`.
pub fn font_get_debug_name(_p0 : @raw_generated.ImFont) -> String {
  @raw_generated.cstring_to_string(@raw_generated.im_font_get_debug_name(_p0))
}

///|
/// Safe generated wrapper for `ImFont_GetFontBaked`.
pub fn font_get_font_baked(
  _p0 : @raw_generated.ImFont,
  _p1 : Float,
) -> @raw_generated.ImFontBaked {
  @raw_generated.im_font_get_font_baked(_p0, _p1)
}

///|
/// Safe generated wrapper for `ImFont_GetFontBakedEx`.
pub fn font_get_font_baked_ex(
  _p0 : @raw_generated.ImFont,
  _p1 : Float,
  _p2 : Float,
) -> @raw_generated.ImFontBaked {
  @raw_generated.im_font_get_font_baked_ex(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImFont_CalcTextSizeA`.
pub fn font_calc_text_size_a(
  _p0 : @raw_generated.ImFont,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : String,
) -> @raw_generated.ImVec2 {
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_font_calc_text_size_a(_p0, _p1, _p2, _p3, _c4.raw())
}

///|
/// Safe generated wrapper for `ImFont_CalcTextSizeAEx`.
pub fn font_calc_text_size_a_ex(
  _p0 : @raw_generated.ImFont,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : String,
  _p6 : @raw_generated.CStringPtr,
) -> @raw_generated.ImVec2 {
  let _c4 = @raw_generated.OwnedCString::new(_p4)
  defer _c4.free()
  @raw_generated.im_font_calc_text_size_a_ex(
    _p0,
    _p1,
    _p2,
    _p3,
    _c4.raw(),
    @raw_generated.null_c_string(),
    _p6,
  )
}

///|
/// Safe generated wrapper for `ImFont_CalcWordWrapPosition`.
pub fn font_calc_word_wrap_position(
  _p0 : @raw_generated.ImFont,
  _p1 : Float,
  _p2 : String,
  _p4 : Float,
) -> String {
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.cstring_to_string(
    @raw_generated.im_font_calc_word_wrap_position(
      _p0,
      _p1,
      _c2.raw(),
      @raw_generated.null_c_string(),
      _p4,
    ),
  )
}

///|
/// Safe generated wrapper for `ImFont_RenderChar`.
pub fn font_render_char(
  _p0 : @raw_generated.ImFont,
  _p1 : @raw_generated.ImDrawList,
  _p2 : Float,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
  _p5 : Int,
) -> Unit {
  @raw_generated.im_font_render_char(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImFont_RenderCharEx`.
pub fn font_render_char_ex(
  _p0 : @raw_generated.ImFont,
  _p1 : @raw_generated.ImDrawList,
  _p2 : Float,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
  _p5 : Int,
  _p6 : @raw_generated.ImVec4,
) -> Unit {
  @raw_generated.im_font_render_char_ex(_p0, _p1, _p2, _p3, _p4, _p5, _p6)
}

///|
/// Safe generated wrapper for `ImFont_RenderText`.
pub fn font_render_text(
  _p0 : @raw_generated.ImFont,
  _p1 : @raw_generated.ImDrawList,
  _p2 : Float,
  _p3 : @raw_generated.ImVec2,
  _p4 : UInt,
  _p5 : @raw_generated.ImVec4,
  _p6 : String,
  _p8 : Float,
  _p9 : Int,
) -> Unit {
  let _c6 = @raw_generated.OwnedCString::new(_p6)
  defer _c6.free()
  @raw_generated.im_font_render_text(
    _p0,
    _p1,
    _p2,
    _p3,
    _p4,
    _p5,
    _c6.raw(),
    @raw_generated.null_c_string(),
    _p8,
    _p9,
  )
}

///|
/// Safe generated wrapper for `ImFont_CalcWordWrapPositionA`.
pub fn font_calc_word_wrap_position_a(
  _p0 : @raw_generated.ImFont,
  _p1 : Float,
  _p2 : String,
  _p4 : Float,
) -> String {
  let _c2 = @raw_generated.OwnedCString::new(_p2)
  defer _c2.free()
  @raw_generated.cstring_to_string(
    @raw_generated.im_font_calc_word_wrap_position_a(
      _p0,
      _p1,
      _c2.raw(),
      @raw_generated.null_c_string(),
      _p4,
    ),
  )
}

///|
/// Safe generated wrapper for `ImFont_ClearOutputData`.
pub fn font_clear_output_data(_p0 : @raw_generated.ImFont) -> Unit {
  @raw_generated.im_font_clear_output_data(_p0)
}

///|
/// Safe generated wrapper for `ImFont_AddRemapChar`.
pub fn font_add_remap_char(
  _p0 : @raw_generated.ImFont,
  _p1 : Int,
  _p2 : Int,
) -> Unit {
  @raw_generated.im_font_add_remap_char(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImFont_IsGlyphRangeUnused`.
pub fn font_is_glyph_range_unused(
  _p0 : @raw_generated.ImFont,
  _p1 : UInt,
  _p2 : UInt,
) -> Bool {
  @raw_generated.im_font_is_glyph_range_unused(_p0, _p1, _p2)
}

///|
/// Safe generated wrapper for `ImGuiViewport_GetCenter`.
pub fn viewport_get_center(
  _p0 : @raw_generated.ImGuiViewport,
) -> @raw_generated.ImVec2 {
  @raw_generated.im_gui_viewport_get_center(_p0)
}

///|
/// Safe generated wrapper for `ImGuiViewport_GetWorkCenter`.
pub fn viewport_get_work_center(
  _p0 : @raw_generated.ImGuiViewport,
) -> @raw_generated.ImVec2 {
  @raw_generated.im_gui_viewport_get_work_center(_p0)
}

///|
/// Safe generated wrapper for `ImGuiPlatformIO_ClearPlatformHandlers`.
pub fn platform_io_clear_platform_handlers(
  _p0 : @raw_generated.ImGuiPlatformIO,
) -> Unit {
  @raw_generated.im_gui_platform_io_clear_platform_handlers(_p0)
}

///|
/// Safe generated wrapper for `ImGuiPlatformIO_ClearRendererHandlers`.
pub fn platform_io_clear_renderer_handlers(
  _p0 : @raw_generated.ImGuiPlatformIO,
) -> Unit {
  @raw_generated.im_gui_platform_io_clear_renderer_handlers(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PushFont`.
pub fn push_font(_p0 : @raw_generated.ImFont) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_font(_p0)
}

///|
/// Safe generated wrapper for `ImGui_SetWindowFontScale`.
pub fn set_window_font_scale(_p0 : Float) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_set_window_font_scale(_p0)
}

///|
/// Safe generated wrapper for `ImGui_ImageImVec4Ptr`.
pub fn image_im_vec4_ptr(
  _p0 : @raw_generated.ImTextureRef,
  _p1 : @raw_generated.ImVec2,
  _p2 : @raw_generated.ImVec2,
  _p3 : @raw_generated.ImVec2,
  _p4 : @raw_generated.ImVec4,
  _p5 : @raw_generated.ImVec4,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_image_im_vec4_ptr(_p0, _p1, _p2, _p3, _p4, _p5)
}

///|
/// Safe generated wrapper for `ImGui_PushButtonRepeat`.
pub fn push_button_repeat(_p0 : Bool) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_button_repeat(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PopButtonRepeat`.
pub fn pop_button_repeat() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_button_repeat()
}

///|
/// Safe generated wrapper for `ImGui_PushTabStop`.
pub fn push_tab_stop(_p0 : Bool) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_push_tab_stop(_p0)
}

///|
/// Safe generated wrapper for `ImGui_PopTabStop`.
pub fn pop_tab_stop() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_pop_tab_stop()
}

///|
/// Safe generated wrapper for `ImGui_GetContentRegionMax`.
pub fn get_content_region_max() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_content_region_max()
}

///|
/// Safe generated wrapper for `ImGui_GetWindowContentRegionMin`.
pub fn get_window_content_region_min() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_window_content_region_min()
}

///|
/// Safe generated wrapper for `ImGui_GetWindowContentRegionMax`.
pub fn get_window_content_region_max() -> @raw_generated.ImVec2 raise ImGuiError {
  ensure_current_context()
  @raw_generated.im_gui_get_window_content_region_max()
}
