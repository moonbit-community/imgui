///|
/// Errors raised by the user-facing Dear ImGui wrapper.
pub(all) suberror ImGuiError {
  /// The operation requires a current context.
  NoCurrentContext
} derive(Eq, Debug)

///|
/// Owned Dear ImGui context.
pub(all) struct Context {
  raw : @bindings.ImGuiContext
}

///|
/// Raw draw data handle returned after rendering.
pub type DrawData = @bindings.ImDrawData

///|
/// ImGui window flags bitset.
pub(all) struct WindowFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui input text flags bitset.
pub(all) struct InputTextFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui tree node flags bitset.
pub(all) struct TreeNodeFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui selectable flags bitset.
pub(all) struct SelectableFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui table flags bitset.
pub(all) struct TableFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui tab bar flags bitset.
pub(all) struct TabBarFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// Result of a checkbox call.
pub(all) struct CheckboxResult {
  changed : Bool
  checked : Bool
} derive(Eq, Debug)

///|
/// Result of a floating point edit call.
pub(all) struct FloatEditResult {
  changed : Bool
  value : Float
} derive(Eq, Debug)

///|
pub fn WindowFlags::none() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_none() }
}

///|
pub fn WindowFlags::no_title_bar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_title_bar() }
}

///|
pub fn WindowFlags::no_resize() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_resize() }
}

///|
pub fn WindowFlags::no_move() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_move() }
}

///|
pub fn WindowFlags::no_scrollbar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_scrollbar() }
}

///|
pub fn WindowFlags::menu_bar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_menu_bar() }
}

///|
pub fn WindowFlags::always_auto_resize() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_always_auto_resize() }
}

///|
pub fn WindowFlags::value(self : WindowFlags) -> Int {
  self.bits
}

///|
pub fn WindowFlags::combine(
  self : WindowFlags,
  other : WindowFlags,
) -> WindowFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn InputTextFlags::none() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_none() }
}

///|
pub fn InputTextFlags::read_only() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_read_only() }
}

///|
pub fn InputTextFlags::value(self : InputTextFlags) -> Int {
  self.bits
}

///|
pub fn TreeNodeFlags::none() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_none() }
}

///|
pub fn TreeNodeFlags::default_open() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_default_open() }
}

///|
pub fn TreeNodeFlags::leaf() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_leaf() }
}

///|
pub fn TreeNodeFlags::value(self : TreeNodeFlags) -> Int {
  self.bits
}

///|
pub fn TreeNodeFlags::combine(
  self : TreeNodeFlags,
  other : TreeNodeFlags,
) -> TreeNodeFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn SelectableFlags::none() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_none() }
}

///|
pub fn SelectableFlags::value(self : SelectableFlags) -> Int {
  self.bits
}

///|
pub fn TableFlags::none() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_none() }
}

///|
pub fn TableFlags::borders() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders() }
}

///|
pub fn TableFlags::row_bg() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_row_bg() }
}

///|
pub fn TableFlags::value(self : TableFlags) -> Int {
  self.bits
}

///|
pub fn TableFlags::combine(self : TableFlags, other : TableFlags) -> TableFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn TabBarFlags::none() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_none() }
}

///|
pub fn TabBarFlags::value(self : TabBarFlags) -> Int {
  self.bits
}

///|
/// Creates a Dear ImGui context and makes it current.
pub fn Context::create() -> Context {
  let raw = @bindings.im_gui_create_context(@bindings.ImFontAtlas::null())
  guard !raw.is_null() else { abort("Dear ImGui context creation failed") }
  @bindings.im_gui_set_current_context(raw)
  { raw, }
}

///|
/// Destroys the native context.
pub fn Context::destroy(self : Context) -> Unit {
  @bindings.im_gui_destroy_context(self.raw)
}

///|
/// Makes this context current.
pub fn Context::make_current(self : Context) -> Unit {
  @bindings.im_gui_set_current_context(self.raw)
}

///|
/// Returns the raw context handle.
pub fn Context::raw(self : Context) -> @bindings.ImGuiContext {
  self.raw
}

///|
/// Clears the current context.
pub fn clear_current_context() -> Unit {
  @bindings.im_gui_set_current_context(@bindings.ImGuiContext::null())
}

///|
/// Returns true when a current context exists.
pub fn has_current_context() -> Bool {
  !@bindings.im_gui_get_current_context().is_null()
}

///|
/// Returns the Dear ImGui version number from the generated binding constants.
pub fn dear_imgui_version_number() -> Int {
  @bindings.imgui_version_num()
}

///|
/// Starts a new Dear ImGui frame.
pub fn new_frame() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_new_frame()
}

///|
/// Ends the current frame without rendering.
pub fn end_frame() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_end_frame()
}

///|
/// Renders the current frame and returns draw data when available.
pub fn render() -> DrawData raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_render()
  @bindings.im_gui_get_draw_data()
}

///|
/// Returns the Dear ImGui frame count.
pub fn frame_count() -> Int {
  @bindings.im_gui_get_frame_count()
}

///|
/// Starts an ImGui window.
pub fn begin_window(
  title : String,
  flags? : WindowFlags = WindowFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_begin(utf8(title), None, flags.value())
}

///|
/// Ends the current ImGui window.
pub fn end_window() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_end()
}

///|
/// Adds a text item.
pub fn text(value : String) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
/// Adds a button and returns whether it was activated.
pub fn button(label : String) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_button(utf8(label))
}

///|
/// Adds a checkbox and returns the updated value.
pub fn checkbox(
  label : String,
  checked : Bool,
) -> CheckboxResult raise ImGuiError {
  ensure_current_context()
  let value = Ref(checked)
  let changed = @bindings.im_gui_checkbox(utf8(label), Some(value))
  { changed, checked: value.val }
}

///|
/// Adds a floating point slider and returns the updated value.
pub fn slider_float(
  label : String,
  value : Float,
  min : Float,
  max : Float,
) -> FloatEditResult raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  let changed = @bindings.im_gui_slider_float(
    utf8(label),
    Some(current),
    min,
    max,
  )
  { changed, value: current.val }
}

///|
/// Keeps the next item on the same line.
pub fn same_line() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_same_line()
}

///|
/// Adds a visual separator.
pub fn separator() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_separator()
}

///|
/// Starts a menu bar.
pub fn begin_menu_bar() -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_begin_menu_bar()
}

///|
/// Ends the current menu bar.
pub fn end_menu_bar() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_end_menu_bar()
}

///|
/// Starts a menu.
pub fn begin_menu(
  label : String,
  enabled? : Bool = true,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_begin_menu_ex(utf8(label), enabled)
}

///|
/// Ends the current menu.
pub fn end_menu() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_end_menu()
}

///|
/// Adds a menu item and returns whether it was activated.
pub fn menu_item(
  label : String,
  selected? : Bool = false,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_menu_item_ex(utf8(label), None, selected, true)
}

///|
/// Starts a tree node.
pub fn tree_node(
  label : String,
  flags? : TreeNodeFlags = TreeNodeFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_tree_node_ex(utf8(label), flags.value())
}

///|
/// Ends the current tree node.
pub fn tree_pop() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_tree_pop()
}

///|
/// Adds a collapsing header.
pub fn collapsing_header(
  label : String,
  flags? : TreeNodeFlags = TreeNodeFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_collapsing_header(utf8(label), flags.value())
}

///|
/// Adds a selectable item.
pub fn selectable(
  label : String,
  selected? : Bool = false,
  flags? : SelectableFlags = SelectableFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_selectable_ex(
    utf8(label),
    selected,
    flags.value(),
    @bindings.ImVec2::null(),
  )
}

///|
/// Starts a table.
pub fn begin_table(
  name : String,
  columns : Int,
  flags? : TableFlags = TableFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_begin_table(utf8(name), columns, flags.value())
}

///|
/// Starts a new table row.
pub fn table_next_row() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_next_row()
}

///|
/// Moves to the next table column.
pub fn table_next_column() -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_next_column()
}

///|
/// Ends the current table.
pub fn end_table() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_end_table()
}

///|
/// Starts a tab bar.
pub fn begin_tab_bar(
  name : String,
  flags? : TabBarFlags = TabBarFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_begin_tab_bar(utf8(name), flags.value())
}

///|
/// Starts a tab item.
pub fn begin_tab_item(label : String) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_begin_tab_item(utf8(label), None, 0)
}

///|
/// Ends the current tab item.
pub fn end_tab_item() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_end_tab_item()
}

///|
/// Ends the current tab bar.
pub fn end_tab_bar() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_end_tab_bar()
}

///|
/// Adds Dear ImGui's demo window.
pub fn show_demo_window(open? : Bool = true) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = Ref(open)
  @bindings.im_gui_show_demo_window(Some(value))
}

///|
fn ensure_current_context() -> Unit raise ImGuiError {
  guard has_current_context() else { raise NoCurrentContext }
}

///|
fn utf8(value : String) -> Bytes {
  @encoding/utf8.encode(value)
}
