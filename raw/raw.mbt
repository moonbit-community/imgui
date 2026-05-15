///|
/// Opaque Dear ImGui context handle.
#external
pub(all) type Context

///|
/// Opaque Dear ImGui IO handle.
#external
pub(all) type Io

///|
/// Opaque Dear ImGui style handle.
#external
pub(all) type Style

///|
/// Opaque Dear ImGui font atlas handle.
#external
pub(all) type FontAtlas

///|
/// Opaque Dear ImGui draw data handle.
#external
pub(all) type DrawData

///|
/// Opaque backend window handle.
#external
pub(all) type BackendWindow

///|
/// Raw ImGui window flags bitset.
pub(all) struct WindowFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// Raw ImGui input text flags bitset.
pub(all) struct InputTextFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// Raw ImGui tree node flags bitset.
pub(all) struct TreeNodeFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// Raw ImGui table flags bitset.
pub(all) struct TableFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// Raw ImGui tab bar flags bitset.
pub(all) struct TabBarFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// Raw ImGui selectable flags bitset.
pub(all) struct SelectableFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// Raw ImGui condition value.
pub(all) struct Cond {
  bits : Int
} derive(Eq, Debug)

///|
/// Raw bridge mode reported by the native stub.
pub(all) enum BridgeMode {
  HeadlessStub
  DearBindings
  NativeCocoa
} derive(Eq, Debug)

///|
/// Minimal backend options passed through the bridge.
pub(all) struct BackendOptions {
  title : String
  width : Int
  height : Int
  glsl_version : String
  vsync : Bool
} derive(Eq, Debug)

///|
/// Result of a raw checkbox call.
pub(all) struct CheckboxResult {
  changed : Bool
  checked : Bool
} derive(Eq, Debug)

///|
/// Result of a raw slider call.
pub(all) struct FloatEditResult {
  changed : Bool
  value : Double
} derive(Eq, Debug)

///|
/// Result of a raw input text call.
pub(all) struct TextEditResult {
  changed : Bool
  truncated : Bool
  value : String
} derive(Eq, Debug)

///|
pub fn WindowFlags::none() -> WindowFlags {
  { bits: 0 }
}

///|
pub fn WindowFlags::no_title_bar() -> WindowFlags {
  { bits: 1 }
}

///|
pub fn WindowFlags::no_resize() -> WindowFlags {
  { bits: 2 }
}

///|
pub fn WindowFlags::no_move() -> WindowFlags {
  { bits: 4 }
}

///|
pub fn WindowFlags::no_scrollbar() -> WindowFlags {
  { bits: 8 }
}

///|
pub fn WindowFlags::menu_bar() -> WindowFlags {
  { bits: 1024 }
}

///|
pub fn WindowFlags::always_auto_resize() -> WindowFlags {
  { bits: 64 }
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
  { bits: 0 }
}

///|
pub fn InputTextFlags::chars_decimal() -> InputTextFlags {
  { bits: 1 }
}

///|
pub fn InputTextFlags::chars_hexadecimal() -> InputTextFlags {
  { bits: 2 }
}

///|
pub fn InputTextFlags::read_only() -> InputTextFlags {
  { bits: 16384 }
}

///|
pub fn InputTextFlags::value(self : InputTextFlags) -> Int {
  self.bits
}

///|
pub fn InputTextFlags::combine(
  self : InputTextFlags,
  other : InputTextFlags,
) -> InputTextFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn TreeNodeFlags::none() -> TreeNodeFlags {
  { bits: 0 }
}

///|
pub fn TreeNodeFlags::selected() -> TreeNodeFlags {
  { bits: 1 }
}

///|
pub fn TreeNodeFlags::framed() -> TreeNodeFlags {
  { bits: 2 }
}

///|
pub fn TreeNodeFlags::default_open() -> TreeNodeFlags {
  { bits: 32 }
}

///|
pub fn TreeNodeFlags::leaf() -> TreeNodeFlags {
  { bits: 256 }
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
pub fn TableFlags::none() -> TableFlags {
  { bits: 0 }
}

///|
pub fn TableFlags::resizable() -> TableFlags {
  { bits: 1 }
}

///|
pub fn TableFlags::reorderable() -> TableFlags {
  { bits: 2 }
}

///|
pub fn TableFlags::borders() -> TableFlags {
  { bits: 1920 }
}

///|
pub fn TableFlags::row_bg() -> TableFlags {
  { bits: 64 }
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
  { bits: 0 }
}

///|
pub fn TabBarFlags::reorderable() -> TabBarFlags {
  { bits: 1 }
}

///|
pub fn TabBarFlags::auto_select_new_tabs() -> TabBarFlags {
  { bits: 2 }
}

///|
pub fn TabBarFlags::value(self : TabBarFlags) -> Int {
  self.bits
}

///|
pub fn TabBarFlags::combine(
  self : TabBarFlags,
  other : TabBarFlags,
) -> TabBarFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn SelectableFlags::none() -> SelectableFlags {
  { bits: 0 }
}

///|
pub fn SelectableFlags::dont_close_popups() -> SelectableFlags {
  { bits: 1 }
}

///|
pub fn SelectableFlags::span_all_columns() -> SelectableFlags {
  { bits: 2 }
}

///|
pub fn SelectableFlags::value(self : SelectableFlags) -> Int {
  self.bits
}

///|
pub fn SelectableFlags::combine(
  self : SelectableFlags,
  other : SelectableFlags,
) -> SelectableFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn Cond::none() -> Cond {
  { bits: 0 }
}

///|
pub fn Cond::always() -> Cond {
  { bits: 1 }
}

///|
pub fn Cond::once() -> Cond {
  { bits: 2 }
}

///|
pub fn Cond::first_use_ever() -> Cond {
  { bits: 4 }
}

///|
pub fn Cond::appearing() -> Cond {
  { bits: 8 }
}

///|
pub fn Cond::value(self : Cond) -> Int {
  self.bits
}

///|
pub fn bridge_mode() -> BridgeMode {
  if raw_bridge_mode() == 2 {
    NativeCocoa
  } else if raw_bridge_mode() == 1 {
    DearBindings
  } else {
    HeadlessStub
  }
}

///|
pub fn bridge_version() -> Int {
  raw_bridge_version()
}

///|
pub fn dear_imgui_version_number() -> Int {
  raw_dear_imgui_version_number()
}

///|
pub fn create_context() -> Context {
  raw_create_context()
}

///|
pub fn destroy_context(context : Context) -> Unit {
  raw_destroy_context(context)
}

///|
pub fn set_current_context(context : Context) -> Unit {
  raw_set_current_context(context)
}

///|
pub fn clear_current_context() -> Unit {
  raw_clear_current_context()
}

///|
pub fn has_current_context() -> Bool {
  raw_has_current_context() == 1
}

///|
pub fn get_io() -> Io {
  raw_get_io()
}

///|
pub fn get_style() -> Style {
  raw_get_style()
}

///|
pub fn get_font_atlas() -> FontAtlas {
  raw_get_font_atlas()
}

///|
pub fn new_frame() -> Unit {
  raw_new_frame()
}

///|
pub fn end_frame() -> Unit {
  raw_end_frame()
}

///|
pub fn render() -> Unit {
  raw_render()
}

///|
pub fn get_draw_data() -> DrawData {
  raw_get_draw_data()
}

///|
pub fn frame_count() -> Int {
  raw_frame_count()
}

///|
pub fn begin_window(
  title : String,
  flags? : WindowFlags = WindowFlags::none(),
) -> Bool {
  let bytes = @encoding/utf8.encode(title)
  raw_begin_window(bytes, 0, bytes.length(), bytes.length(), flags.value()) == 1
}

///|
pub fn end_window() -> Unit {
  raw_end_window()
}

///|
pub fn text(value : String) -> Unit {
  let bytes = @encoding/utf8.encode(value)
  raw_text(bytes, 0, bytes.length(), bytes.length())
}

///|
pub fn button(label : String) -> Bool {
  let bytes = @encoding/utf8.encode(label)
  raw_button(bytes, 0, bytes.length(), bytes.length()) == 1
}

///|
pub fn checkbox(label : String, checked : Bool) -> CheckboxResult {
  let bytes = @encoding/utf8.encode(label)
  let result = raw_checkbox(
    bytes,
    0,
    bytes.length(),
    bytes.length(),
    if checked {
      1
    } else {
      0
    },
  )
  { changed: (result & 2) != 0, checked: (result & 1) == 1 }
}

///|
pub fn slider_float(
  label : String,
  value : Double,
  min : Double,
  max : Double,
) -> FloatEditResult {
  let bytes = @encoding/utf8.encode(label)
  let next = raw_slider_float(
    bytes,
    0,
    bytes.length(),
    bytes.length(),
    value,
    min,
    max,
  )
  { changed: next != value, value: next }
}

///|
pub fn input_text(
  label : String,
  value : String,
  flags? : InputTextFlags = InputTextFlags::none(),
  capacity? : Int = value.length() + 1024,
) -> TextEditResult {
  let label_bytes = @encoding/utf8.encode(label)
  let value_bytes = @encoding/utf8.encode(value)
  let output_len = if capacity > value_bytes.length() + 1 {
    capacity
  } else {
    value_bytes.length() + 1
  }
  let output = Bytes::new(output_len)
  let result = raw_input_text(
    label_bytes,
    0,
    label_bytes.length(),
    label_bytes.length(),
    value_bytes,
    0,
    value_bytes.length(),
    value_bytes.length(),
    flags.value(),
    output,
    output_len,
  )
  let next_len = result >> 2
  let next = @encoding/utf8.decode_lossy(output.view(end=next_len))
  { changed: (result & 1) == 1, truncated: (result & 2) == 2, value: next }
}

///|
pub fn same_line() -> Unit {
  raw_same_line()
}

///|
pub fn separator() -> Unit {
  raw_separator()
}

///|
pub fn begin_menu_bar() -> Bool {
  raw_begin_menu_bar() == 1
}

///|
pub fn end_menu_bar() -> Unit {
  raw_end_menu_bar()
}

///|
pub fn begin_menu(label : String, enabled? : Bool = true) -> Bool {
  let bytes = @encoding/utf8.encode(label)
  raw_begin_menu(
    bytes,
    0,
    bytes.length(),
    bytes.length(),
    if enabled {
      1
    } else {
      0
    },
  ) ==
  1
}

///|
pub fn end_menu() -> Unit {
  raw_end_menu()
}

///|
pub fn menu_item(label : String, selected? : Bool = false) -> Bool {
  let bytes = @encoding/utf8.encode(label)
  raw_menu_item(
    bytes,
    0,
    bytes.length(),
    bytes.length(),
    if selected {
      1
    } else {
      0
    },
  ) ==
  1
}

///|
pub fn tree_node(
  label : String,
  flags? : TreeNodeFlags = TreeNodeFlags::none(),
) -> Bool {
  let bytes = @encoding/utf8.encode(label)
  raw_tree_node(bytes, 0, bytes.length(), bytes.length(), flags.value()) == 1
}

///|
pub fn tree_pop() -> Unit {
  raw_tree_pop()
}

///|
pub fn collapsing_header(
  label : String,
  flags? : TreeNodeFlags = TreeNodeFlags::none(),
) -> Bool {
  let bytes = @encoding/utf8.encode(label)
  raw_collapsing_header(bytes, 0, bytes.length(), bytes.length(), flags.value()) ==
  1
}

///|
pub fn selectable(
  label : String,
  selected? : Bool = false,
  flags? : SelectableFlags = SelectableFlags::none(),
) -> Bool {
  let bytes = @encoding/utf8.encode(label)
  raw_selectable(
    bytes,
    0,
    bytes.length(),
    bytes.length(),
    if selected {
      1
    } else {
      0
    },
    flags.value(),
  ) ==
  1
}

///|
pub fn begin_table(
  name : String,
  columns : Int,
  flags? : TableFlags = TableFlags::none(),
) -> Bool {
  let bytes = @encoding/utf8.encode(name)
  raw_begin_table(
    bytes,
    0,
    bytes.length(),
    bytes.length(),
    columns,
    flags.value(),
  ) ==
  1
}

///|
pub fn table_next_row() -> Unit {
  raw_table_next_row()
}

///|
pub fn table_next_column() -> Bool {
  raw_table_next_column() == 1
}

///|
pub fn end_table() -> Unit {
  raw_end_table()
}

///|
pub fn begin_tab_bar(
  name : String,
  flags? : TabBarFlags = TabBarFlags::none(),
) -> Bool {
  let bytes = @encoding/utf8.encode(name)
  raw_begin_tab_bar(bytes, 0, bytes.length(), bytes.length(), flags.value()) ==
  1
}

///|
pub fn begin_tab_item(label : String) -> Bool {
  let bytes = @encoding/utf8.encode(label)
  raw_begin_tab_item(bytes, 0, bytes.length(), bytes.length()) == 1
}

///|
pub fn end_tab_item() -> Unit {
  raw_end_tab_item()
}

///|
pub fn end_tab_bar() -> Unit {
  raw_end_tab_bar()
}

///|
pub fn set_next_window_size(
  width : Double,
  height : Double,
  cond? : Cond = Cond::none(),
) -> Unit {
  raw_set_next_window_size(width, height, cond.value())
}

///|
pub fn show_demo_window(open? : Bool = true) -> Unit {
  raw_show_demo_window(if open { 1 } else { 0 })
}

///|
pub fn backend_create_window(options : BackendOptions) -> BackendWindow {
  let title = @encoding/utf8.encode(options.title)
  let glsl = @encoding/utf8.encode(options.glsl_version)
  raw_backend_create_window(
    title,
    0,
    title.length(),
    title.length(),
    options.width,
    options.height,
    glsl,
    0,
    glsl.length(),
    glsl.length(),
    if options.vsync {
      1
    } else {
      0
    },
  )
}

///|
pub fn backend_window_is_null(window : BackendWindow) -> Bool {
  raw_backend_window_is_null(window) == 1
}

///|
pub fn backend_null_window() -> BackendWindow {
  raw_backend_null_window()
}

///|
pub fn backend_should_close(window : BackendWindow) -> Bool {
  raw_backend_should_close(window) == 1
}

///|
pub fn backend_poll_events(window : BackendWindow) -> Unit {
  raw_backend_poll_events(window)
}

///|
pub fn backend_new_frame(window : BackendWindow) -> Bool {
  raw_backend_new_frame(window) == 1
}

///|
pub fn backend_render(window : BackendWindow, draw_data : DrawData) -> Bool {
  raw_backend_render(window, draw_data) == 1
}

///|
pub fn backend_destroy_window(window : BackendWindow) -> Unit {
  raw_backend_destroy_window(window)
}

///|
extern "C" fn raw_bridge_mode() -> Int = "moonbit_imgui_bridge_mode"

///|
extern "C" fn raw_bridge_version() -> Int = "moonbit_imgui_bridge_version"

///|
extern "C" fn raw_dear_imgui_version_number() -> Int = "moonbit_imgui_version_number"

///|
extern "C" fn raw_create_context() -> Context = "moonbit_imgui_create_context"

///|
extern "C" fn raw_destroy_context(context : Context) -> Unit = "moonbit_imgui_destroy_context"

///|
extern "C" fn raw_set_current_context(context : Context) -> Unit = "moonbit_imgui_set_current_context"

///|
extern "C" fn raw_clear_current_context() -> Unit = "moonbit_imgui_clear_current_context"

///|
extern "C" fn raw_has_current_context() -> Int = "moonbit_imgui_has_current_context"

///|
extern "C" fn raw_get_io() -> Io = "moonbit_imgui_get_io"

///|
extern "C" fn raw_get_style() -> Style = "moonbit_imgui_get_style"

///|
extern "C" fn raw_get_font_atlas() -> FontAtlas = "moonbit_imgui_get_font_atlas"

///|
extern "C" fn raw_new_frame() -> Unit = "moonbit_imgui_new_frame"

///|
extern "C" fn raw_end_frame() -> Unit = "moonbit_imgui_end_frame"

///|
extern "C" fn raw_render() -> Unit = "moonbit_imgui_render"

///|
extern "C" fn raw_get_draw_data() -> DrawData = "moonbit_imgui_get_draw_data"

///|
extern "C" fn raw_frame_count() -> Int = "moonbit_imgui_frame_count"

///|
#borrow(title)
extern "C" fn raw_begin_window(
  title : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  flags : Int,
) -> Int = "moonbit_imgui_begin"

///|
extern "C" fn raw_end_window() -> Unit = "moonbit_imgui_end"

///|
#borrow(value)
extern "C" fn raw_text(
  value : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
) -> Unit = "moonbit_imgui_text"

///|
#borrow(label)
extern "C" fn raw_button(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
) -> Int = "moonbit_imgui_button"

///|
#borrow(label)
extern "C" fn raw_checkbox(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  checked : Int,
) -> Int = "moonbit_imgui_checkbox"

///|
#borrow(label)
extern "C" fn raw_slider_float(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  value : Double,
  min : Double,
  max : Double,
) -> Double = "moonbit_imgui_slider_float"

///|
#borrow(label, value, output)
extern "C" fn raw_input_text(
  label : Bytes,
  label_offset : Int,
  label_len : Int,
  label_total_len : Int,
  value : Bytes,
  value_offset : Int,
  value_len : Int,
  value_total_len : Int,
  flags : Int,
  output : Bytes,
  output_len : Int,
) -> Int = "moonbit_imgui_input_text"

///|
extern "C" fn raw_same_line() -> Unit = "moonbit_imgui_same_line"

///|
extern "C" fn raw_separator() -> Unit = "moonbit_imgui_separator"

///|
extern "C" fn raw_begin_menu_bar() -> Int = "moonbit_imgui_begin_menu_bar"

///|
extern "C" fn raw_end_menu_bar() -> Unit = "moonbit_imgui_end_menu_bar"

///|
#borrow(label)
extern "C" fn raw_begin_menu(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  enabled : Int,
) -> Int = "moonbit_imgui_begin_menu"

///|
extern "C" fn raw_end_menu() -> Unit = "moonbit_imgui_end_menu"

///|
#borrow(label)
extern "C" fn raw_menu_item(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  selected : Int,
) -> Int = "moonbit_imgui_menu_item"

///|
#borrow(label)
extern "C" fn raw_tree_node(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  flags : Int,
) -> Int = "moonbit_imgui_tree_node"

///|
extern "C" fn raw_tree_pop() -> Unit = "moonbit_imgui_tree_pop"

///|
#borrow(label)
extern "C" fn raw_collapsing_header(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  flags : Int,
) -> Int = "moonbit_imgui_collapsing_header"

///|
#borrow(label)
extern "C" fn raw_selectable(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  selected : Int,
  flags : Int,
) -> Int = "moonbit_imgui_selectable"

///|
#borrow(name)
extern "C" fn raw_begin_table(
  name : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  columns : Int,
  flags : Int,
) -> Int = "moonbit_imgui_begin_table"

///|
extern "C" fn raw_table_next_row() -> Unit = "moonbit_imgui_table_next_row"

///|
extern "C" fn raw_table_next_column() -> Int = "moonbit_imgui_table_next_column"

///|
extern "C" fn raw_end_table() -> Unit = "moonbit_imgui_end_table"

///|
#borrow(name)
extern "C" fn raw_begin_tab_bar(
  name : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
  flags : Int,
) -> Int = "moonbit_imgui_begin_tab_bar"

///|
#borrow(label)
extern "C" fn raw_begin_tab_item(
  label : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
) -> Int = "moonbit_imgui_begin_tab_item"

///|
extern "C" fn raw_end_tab_item() -> Unit = "moonbit_imgui_end_tab_item"

///|
extern "C" fn raw_end_tab_bar() -> Unit = "moonbit_imgui_end_tab_bar"

///|
extern "C" fn raw_set_next_window_size(
  width : Double,
  height : Double,
  cond : Int,
) -> Unit = "moonbit_imgui_set_next_window_size"

///|
extern "C" fn raw_show_demo_window(open : Int) -> Unit = "moonbit_imgui_show_demo_window"

///|
#borrow(title, glsl)
extern "C" fn raw_backend_create_window(
  title : Bytes,
  title_offset : Int,
  title_len : Int,
  title_total_len : Int,
  width : Int,
  height : Int,
  glsl : Bytes,
  glsl_offset : Int,
  glsl_len : Int,
  glsl_total_len : Int,
  vsync : Int,
) -> BackendWindow = "moonbit_imgui_backend_create_window"

///|
extern "C" fn raw_backend_window_is_null(window : BackendWindow) -> Int = "moonbit_imgui_backend_window_is_null"

///|
extern "C" fn raw_backend_null_window() -> BackendWindow = "moonbit_imgui_backend_null_window"

///|
extern "C" fn raw_backend_should_close(window : BackendWindow) -> Int = "moonbit_imgui_backend_should_close"

///|
extern "C" fn raw_backend_poll_events(window : BackendWindow) -> Unit = "moonbit_imgui_backend_poll_events"

///|
extern "C" fn raw_backend_new_frame(window : BackendWindow) -> Int = "moonbit_imgui_backend_new_frame"

///|
extern "C" fn raw_backend_render(
  window : BackendWindow,
  draw_data : DrawData,
) -> Int = "moonbit_imgui_backend_render"

///|
extern "C" fn raw_backend_destroy_window(window : BackendWindow) -> Unit = "moonbit_imgui_backend_destroy_window"
