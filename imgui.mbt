///|
/// Errors raised by the safe Dear ImGui wrapper.
pub(all) suberror ImGuiError {
  /// The operation requires a current context.
  NoCurrentContext
  /// A backend window could not be created.
  BackendCreationFailed(String)
  /// A backend window was used after it had been destroyed.
  BackendWindowDestroyed(String)
  /// A backend frame could not be started.
  BackendFrameFailed(String)
  /// Backend draw data could not be rendered.
  BackendRenderFailed(String)
} derive(Eq, Debug)

///|
/// Owned Dear ImGui context.
pub(all) struct Context {
  raw : @raw.Context
}

///|
/// Creates a Dear ImGui context and makes it current.
pub fn Context::create() -> Context {
  { raw: @raw.create_context() }
}

///|
/// Destroys the native context.
pub fn Context::destroy(self : Context) -> Unit {
  @raw.destroy_context(self.raw)
}

///|
/// Makes this context current.
pub fn Context::make_current(self : Context) -> Unit {
  @raw.set_current_context(self.raw)
}

///|
/// Returns the raw context handle for advanced binding users.
pub fn Context::raw(self : Context) -> @raw.Context {
  self.raw
}

///|
/// Clears the current context.
pub fn clear_current_context() -> Unit {
  @raw.clear_current_context()
}

///|
/// Returns true when a current context exists.
pub fn has_current_context() -> Bool {
  @raw.has_current_context()
}

///|
/// Returns the active bridge mode.
pub fn bridge_mode() -> @raw.BridgeMode {
  @raw.bridge_mode()
}

///|
/// Returns the bridge ABI version.
pub fn bridge_version() -> Int {
  @raw.bridge_version()
}

///|
/// Returns the Dear ImGui version number the bridge was generated for.
pub fn dear_imgui_version_number() -> Int {
  @raw.dear_imgui_version_number()
}

///|
/// Starts a new Dear ImGui frame.
pub fn new_frame() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.new_frame()
}

///|
/// Ends the current frame without rendering.
pub fn end_frame() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.end_frame()
}

///|
/// Renders the current frame and returns draw data when available.
pub fn render() -> @raw.DrawData raise ImGuiError {
  ensure_current_context()
  @raw.render()
  @raw.get_draw_data()
}

///|
/// Returns the frame count reported by the bridge.
pub fn frame_count() -> Int {
  @raw.frame_count()
}

///|
/// Starts an ImGui window.
pub fn begin_window(
  title : String,
  flags? : @raw.WindowFlags = @raw.WindowFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.begin_window(title, flags~)
}

///|
/// Ends the current ImGui window.
pub fn end_window() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.end_window()
}

///|
/// Adds a text item.
pub fn text(value : String) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.text(value)
}

///|
/// Adds a button and returns whether it was activated.
pub fn button(label : String) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.button(label)
}

///|
/// Adds a checkbox and returns the updated value.
pub fn checkbox(
  label : String,
  checked : Bool,
) -> @raw.CheckboxResult raise ImGuiError {
  ensure_current_context()
  @raw.checkbox(label, checked)
}

///|
/// Adds a floating point slider and returns the updated value.
pub fn slider_float(
  label : String,
  value : Double,
  min : Double,
  max : Double,
) -> @raw.FloatEditResult raise ImGuiError {
  ensure_current_context()
  @raw.slider_float(label, value, min, max)
}

///|
/// Adds an input text control.
pub fn input_text(
  label : String,
  value : String,
  flags? : @raw.InputTextFlags = @raw.InputTextFlags::none(),
  capacity? : Int = value.length() + 1024,
) -> @raw.TextEditResult raise ImGuiError {
  ensure_current_context()
  @raw.input_text(label, value, flags~, capacity~)
}

///|
/// Keeps the next item on the same line.
pub fn same_line() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.same_line()
}

///|
/// Adds a visual separator.
pub fn separator() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.separator()
}

///|
/// Starts a menu bar.
pub fn begin_menu_bar() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.begin_menu_bar()
}

///|
/// Ends the current menu bar.
pub fn end_menu_bar() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.end_menu_bar()
}

///|
/// Starts a menu.
pub fn begin_menu(
  label : String,
  enabled? : Bool = true,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.begin_menu(label, enabled~)
}

///|
/// Ends the current menu.
pub fn end_menu() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.end_menu()
}

///|
/// Adds a menu item and returns whether it was activated.
pub fn menu_item(
  label : String,
  selected? : Bool = false,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.menu_item(label, selected~)
}

///|
/// Starts a tree node.
pub fn tree_node(
  label : String,
  flags? : @raw.TreeNodeFlags = @raw.TreeNodeFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.tree_node(label, flags~)
}

///|
/// Ends the current tree node.
pub fn tree_pop() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.tree_pop()
}

///|
/// Adds a collapsing header.
pub fn collapsing_header(
  label : String,
  flags? : @raw.TreeNodeFlags = @raw.TreeNodeFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.collapsing_header(label, flags~)
}

///|
/// Adds a selectable item.
pub fn selectable(
  label : String,
  selected? : Bool = false,
  flags? : @raw.SelectableFlags = @raw.SelectableFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.selectable(label, selected~, flags~)
}

///|
/// Starts a table.
pub fn begin_table(
  name : String,
  columns : Int,
  flags? : @raw.TableFlags = @raw.TableFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.begin_table(name, columns, flags~)
}

///|
/// Starts a new table row.
pub fn table_next_row() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.table_next_row()
}

///|
/// Moves to the next table column.
pub fn table_next_column() -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.table_next_column()
}

///|
/// Ends the current table.
pub fn end_table() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.end_table()
}

///|
/// Starts a tab bar.
pub fn begin_tab_bar(
  name : String,
  flags? : @raw.TabBarFlags = @raw.TabBarFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.begin_tab_bar(name, flags~)
}

///|
/// Starts a tab item.
pub fn begin_tab_item(label : String) -> Bool raise ImGuiError {
  ensure_current_context()
  @raw.begin_tab_item(label)
}

///|
/// Ends the current tab item.
pub fn end_tab_item() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.end_tab_item()
}

///|
/// Ends the current tab bar.
pub fn end_tab_bar() -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.end_tab_bar()
}

///|
/// Sets the size of the next window.
pub fn set_next_window_size(
  width : Double,
  height : Double,
  cond? : @raw.Cond = @raw.Cond::none(),
) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.set_next_window_size(width, height, cond~)
}

///|
/// Adds Dear ImGui's demo window.
pub fn show_demo_window(open? : Bool = true) -> Unit raise ImGuiError {
  ensure_current_context()
  @raw.show_demo_window(open~)
}

///|
fn ensure_current_context() -> Unit raise ImGuiError {
  guard @raw.has_current_context() else { raise NoCurrentContext }
}
