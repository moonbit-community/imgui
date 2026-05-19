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
/// Root UI builder for scoped, callback-style Dear ImGui calls.
struct Ui {}

///|
/// UI operations available inside a window.
struct WindowUi {}

///|
/// UI operations available inside a menu bar.
struct MenuBarUi {}

///|
/// UI operations available inside a menu.
struct MenuUi {}

///|
/// UI operations available inside a tab bar.
struct TabBarUi {}

///|
/// UI operations available inside a tab item.
struct TabItemUi {}

///|
/// UI operations available inside a table.
struct TableUi {}

///|
/// Rendered Dear ImGui draw data.
struct DrawData {
  raw : @bindings.ImDrawData
}

///|
/// ImGui window flags bitset.
pub(all) struct WindowFlags {
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
/// Renders the current frame and returns draw data when available.
pub fn render() -> DrawData raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_render()
  { raw: @bindings.im_gui_get_draw_data() }
}

///|
/// Returns the generated binding handle for backend interop.
pub fn DrawData::raw(self : DrawData) -> @bindings.ImDrawData {
  self.raw
}

///|
/// Returns the Dear ImGui frame count.
pub fn frame_count() -> Int {
  @bindings.im_gui_get_frame_count()
}

///|
/// Returns a root UI builder.
pub fn ui() -> Ui {
  Ui::{  }
}

///|
/// Opens a window, runs `body` when visible, and always closes the ImGui scope.
pub fn Ui::window(
  _self : Ui,
  title : String,
  flags? : WindowFlags = WindowFlags::none(),
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin(utf8(title), None, flags.value())
  defer @bindings.im_gui_end()
  if active {
    body(WindowUi::{  })
  }
}

///|
/// Emits text inside a window.
pub fn WindowUi::text(
  _self : WindowUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
/// Runs `body` when the button is activated.
pub fn WindowUi::button(
  _self : WindowUi,
  label : String,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_button(utf8(label)) {
    body()
  }
}

///|
/// Runs `body` with the updated checked value when the checkbox changes.
pub fn WindowUi::checkbox(
  _self : WindowUi,
  label : String,
  checked : Bool,
  body : (Bool) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = Ref(checked)
  if @bindings.im_gui_checkbox(utf8(label), Some(value)) {
    body(value.val)
  }
}

///|
/// Runs `body` with the updated value when the slider changes.
pub fn WindowUi::slider_float(
  _self : WindowUi,
  label : String,
  value : Float,
  min : Float,
  max : Float,
  body : (Float) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_slider_float(utf8(label), Some(current), min, max) {
    body(current.val)
  }
}

///|
/// Keeps the next window item on the same line.
pub fn WindowUi::same_line(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_same_line()
}

///|
/// Adds a separator inside a window.
pub fn WindowUi::separator(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_separator()
}

///|
/// Opens a menu bar and closes it automatically.
pub fn WindowUi::menu_bar(
  _self : WindowUi,
  body : (MenuBarUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_menu_bar()
  if active {
    defer @bindings.im_gui_end_menu_bar()
    body(MenuBarUi::{  })
  }
}

///|
/// Opens a tab bar and closes it automatically.
pub fn WindowUi::tab_bar(
  _self : WindowUi,
  name : String,
  flags? : TabBarFlags = TabBarFlags::none(),
  body : (TabBarUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_tab_bar(utf8(name), flags.value())
  if active {
    defer @bindings.im_gui_end_tab_bar()
    body(TabBarUi::{  })
  }
}

///|
/// Opens a table and closes it automatically.
pub fn WindowUi::table(
  _self : WindowUi,
  name : String,
  columns : Int,
  flags? : TableFlags = TableFlags::none(),
  body : (TableUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_table(utf8(name), columns, flags.value())
  if active {
    defer @bindings.im_gui_end_table()
    body(TableUi::{  })
  }
}

///|
/// Opens a menu from a menu bar and closes it automatically.
pub fn MenuBarUi::menu(
  _self : MenuBarUi,
  label : String,
  enabled? : Bool = true,
  body : (MenuUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_menu_ex(utf8(label), enabled)
  if active {
    defer @bindings.im_gui_end_menu()
    body(MenuUi::{  })
  }
}

///|
/// Runs `body` when a menu item is activated.
pub fn MenuBarUi::menu_item(
  _self : MenuBarUi,
  label : String,
  selected? : Bool = false,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_menu_item_ex(utf8(label), None, selected, true) {
    body()
  }
}

///|
/// Runs `body` when a menu item is activated.
pub fn MenuUi::menu_item(
  _self : MenuUi,
  label : String,
  selected? : Bool = false,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_menu_item_ex(utf8(label), None, selected, true) {
    body()
  }
}

///|
/// Opens a tab item and closes it automatically.
pub fn TabBarUi::tab_item(
  _self : TabBarUi,
  label : String,
  body : (TabItemUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_tab_item(utf8(label), None, 0)
  if active {
    defer @bindings.im_gui_end_tab_item()
    body(TabItemUi::{  })
  }
}

///|
/// Emits text inside a tab item.
pub fn TabItemUi::text(
  _self : TabItemUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
/// Adds a separator inside a tab item.
pub fn TabItemUi::separator(_self : TabItemUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_separator()
}

///|
/// Opens a table inside a tab item and closes it automatically.
pub fn TabItemUi::table(
  _self : TabItemUi,
  name : String,
  columns : Int,
  flags? : TableFlags = TableFlags::none(),
  body : (TableUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_table(utf8(name), columns, flags.value())
  if active {
    defer @bindings.im_gui_end_table()
    body(TableUi::{  })
  }
}

///|
/// Starts a new table row.
pub fn TableUi::next_row(_self : TableUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_next_row()
}

///|
/// Moves to the next table column.
pub fn TableUi::next_column(_self : TableUi) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_next_column()
}

///|
/// Emits text inside a table.
pub fn TableUi::text(_self : TableUi, value : String) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
/// Adds a selectable item inside a table.
pub fn TableUi::selectable(
  _self : TableUi,
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
fn ensure_current_context() -> Unit raise ImGuiError {
  guard has_current_context() else { raise NoCurrentContext }
}

///|
fn utf8(value : String) -> Bytes {
  @encoding/utf8.encode(value)
}
