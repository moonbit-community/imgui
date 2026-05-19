///|
struct DemoState {
  widget_check : @gen.BoolPtr
  widget_radio : @gen.IntPtr
  widget_slider : @gen.FloatPtr
  widget_input : @gen.IntPtr
  widget_combo : @gen.IntPtr
  input_float : @gen.FloatPtr
  input_int : @gen.IntPtr
  input_double : @gen.DoublePtr
  window_flags : @gen.IntPtr
  selection_combo : @gen.IntPtr
  mut widget_text : String
  mut simple_text : String
  mut unicode_text : String
  mut selected_row : Int
}

///|
fn DemoState::new() -> DemoState {
  {
    widget_check: @gen.bool_ptr_new(true),
    widget_radio: @gen.int_ptr_new(1),
    widget_slider: @gen.float_ptr_new(0.42),
    widget_input: @gen.int_ptr_new(7),
    widget_combo: @gen.int_ptr_new(1),
    input_float: @gen.float_ptr_new(0.25),
    input_int: @gen.int_ptr_new(42),
    input_double: @gen.double_ptr_new(0.125),
    window_flags: @gen.int_ptr_new(@gen.im_gui_window_flags_no_resize()),
    selection_combo: @gen.int_ptr_new(0),
    widget_text: "MoonBit owns this buffer",
    simple_text: "editable UTF-8 text",
    unicode_text: "hello MoonBit",
    selected_row: 2,
  }
}

///|
fn DemoState::destroy(self : DemoState) -> Unit {
  @gen.bool_ptr_free(self.widget_check)
  @gen.int_ptr_free(self.widget_radio)
  @gen.float_ptr_free(self.widget_slider)
  @gen.int_ptr_free(self.widget_input)
  @gen.int_ptr_free(self.widget_combo)
  @gen.float_ptr_free(self.input_float)
  @gen.int_ptr_free(self.input_int)
  @gen.double_ptr_free(self.input_double)
  @gen.int_ptr_free(self.window_flags)
  @gen.int_ptr_free(self.selection_combo)
}

///|
fn main {
  let options = @backend.AppOptions::default()
    .title("MoonBit Dear ImGui Translated Demo")
    .size(1120, 760)
  let state = DemoState::new()
  defer state.destroy()
  println("Starting MoonBit translated ImGui demo.")
  @backend.run(() => render_translated_demo(state), options~) catch {
    BackendCreationFailed(title) =>
      abort(
        "translated imgui demo failed: could not create backend window '\{title}'",
      )
    BackendWindowDestroyed(title) =>
      abort(
        "translated imgui demo failed: backend window '\{title}' was destroyed",
      )
    BackendFrameFailed(title) =>
      abort(
        "translated imgui demo failed: could not start backend frame for '\{title}'",
      )
    BackendRenderFailed(title) =>
      abort(
        "translated imgui demo failed: could not render backend frame for '\{title}'",
      )
    NoCurrentContext =>
      abort("translated imgui demo failed: no current Dear ImGui context")
  }
  println("MoonBit translated demo closed.")
}

///|
fn render_translated_demo(state : DemoState) -> Unit raise @imgui.ImGuiError {
  @imgui.set_next_window_size(900.0, 700.0, cond=@raw.Cond::first_use_ever())
  let flags = @gen.im_gui_window_flags_menu_bar()
  if @imgui.im_gui_begin(
      "Dear ImGui Demo (MoonBit translation)",
      @gen.null_bool_ptr(),
      flags,
    ) {
    render_main_menu_bar()
    @imgui.im_gui_text_wrapped(
      "This window is rendered by MoonBit calls into the generated Dear ImGui binding. It intentionally does not call ImGui_ShowDemoWindow or the upstream imgui_demo.cpp implementation.",
    )
    @imgui.im_gui_separator()
    render_status_strip()
    render_tabs(state)
  }
  @imgui.im_gui_end()
}

///|
fn render_main_menu_bar() -> Unit raise @imgui.ImGuiError {
  if @imgui.im_gui_begin_menu_bar() {
    if @imgui.im_gui_begin_menu("File") {
      ignore(@imgui.im_gui_menu_item_ex("New", "Ctrl+N", false, true))
      ignore(@imgui.im_gui_menu_item_ex("Open", "Ctrl+O", false, true))
      ignore(@imgui.im_gui_menu_item_ex("Save", "Ctrl+S", false, true))
      @imgui.im_gui_separator()
      ignore(@imgui.im_gui_menu_item_ex("Quit", "Alt+F4", false, false))
      @imgui.im_gui_end_menu()
    }
    if @imgui.im_gui_begin_menu("Examples") {
      ignore(@imgui.im_gui_menu_item("Main menu bar"))
      ignore(@imgui.im_gui_menu_item("Console"))
      ignore(@imgui.im_gui_menu_item("Log"))
      ignore(@imgui.im_gui_menu_item("Property editor"))
      @imgui.im_gui_end_menu()
    }
    if @imgui.im_gui_begin_menu("Tools") {
      ignore(@imgui.im_gui_menu_item("Metrics"))
      ignore(@imgui.im_gui_menu_item("Style editor"))
      ignore(@imgui.im_gui_menu_item("ID stack tool"))
      @imgui.im_gui_end_menu()
    }
    @imgui.im_gui_end_menu_bar()
  }
}

///|
fn render_status_strip() -> Unit raise @imgui.ImGuiError {
  if @imgui.im_gui_begin_table(
      "binding status",
      3,
      @gen.im_gui_table_flags_borders() | @gen.im_gui_table_flags_row_bg(),
    ) {
    @imgui.im_gui_table_setup_column("Layer", 0)
    @imgui.im_gui_table_setup_column("Symbols", 0)
    @imgui.im_gui_table_setup_column("Evidence", 0)
    @imgui.im_gui_table_headers_row()
    @imgui.im_gui_table_next_row()
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("safe generated")
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text(
      "\{@imgui.safe_generated_bound_symbols()} / \{@imgui.safe_generated_total_symbols()}",
    )
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("this demo calls wrappers directly")
    @imgui.im_gui_table_next_row()
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("backend")
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("Cocoa + OpenGL2")
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("native frame is rendered by MoonBit lifecycle")
    @imgui.im_gui_end_table()
  }
}

///|
fn render_tabs(state : DemoState) -> Unit raise @imgui.ImGuiError {
  let tab_flags = @gen.im_gui_tab_bar_flags_reorderable()
  if @imgui.im_gui_begin_tab_bar("translated demo tabs", tab_flags) {
    if @imgui.begin_tab_item("Widgets") {
      render_widgets_tab(state)
      @imgui.end_tab_item()
    }
    if @imgui.begin_tab_item("Inputs") {
      render_inputs_tab(state)
      @imgui.end_tab_item()
    }
    if @imgui.begin_tab_item("Selection") {
      render_selection_tab(state)
      @imgui.end_tab_item()
    }
    if @imgui.begin_tab_item("Layout") {
      render_layout_tab()
      @imgui.end_tab_item()
    }
    if @imgui.begin_tab_item("Popups") {
      render_popups_tab()
      @imgui.end_tab_item()
    }
    if @imgui.begin_tab_item("Tables") {
      render_tables_tab()
      @imgui.end_tab_item()
    }
    if @imgui.begin_tab_item("Draw") {
      render_draw_tab()
      @imgui.end_tab_item()
    }
    if @imgui.begin_tab_item("Style") {
      render_style_tab()
      @imgui.end_tab_item()
    }
    if @imgui.begin_tab_item("Text") {
      render_text_tab()
      @imgui.end_tab_item()
    }
    @imgui.im_gui_end_tab_bar()
  }
}

///|
fn render_widgets_tab(state : DemoState) -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_separator_text("Basic widgets")
  ignore(@imgui.im_gui_button("Button"))
  @imgui.im_gui_same_line()
  ignore(@imgui.im_gui_small_button("Small button"))
  if @imgui.im_gui_is_item_hovered(@gen.im_gui_hovered_flags_none()) {
    @imgui.im_gui_set_tooltip("Tooltip rendered from MoonBit")
  }

  ignore(@imgui.im_gui_checkbox("checkbox", state.widget_check))
  let checked = @gen.bool_ptr_get(state.widget_check)
  @imgui.im_gui_same_line()
  @imgui.im_gui_text("value=\{checked}")
  ignore(@imgui.im_gui_radio_button_int_ptr("radio a", state.widget_radio, 0))
  @imgui.im_gui_same_line()
  ignore(@imgui.im_gui_radio_button_int_ptr("radio b", state.widget_radio, 1))
  @imgui.im_gui_same_line()
  ignore(@imgui.im_gui_radio_button_int_ptr("radio c", state.widget_radio, 2))

  ignore(
    @imgui.im_gui_slider_float_ex(
      "slider float",
      state.widget_slider,
      0.0,
      1.0,
      "%.3f",
      0,
    ),
  )
  ignore(
    @imgui.im_gui_drag_float_ex(
      "drag float",
      state.widget_slider,
      0.01,
      0.0,
      1.0,
      "%.3f",
      0,
    ),
  )
  ignore(@imgui.im_gui_input_int_ex("input int", state.widget_input, 1, 100, 0))

  let text_result = @imgui.input_text("input text", state.widget_text)
  if text_result.changed {
    state.widget_text = text_result.value
    @imgui.im_gui_text("input changed")
  }

  ignore(
    @imgui.im_gui_combo(
      "combo",
      state.widget_combo,
      "AAAA\u{0000}BBBB\u{0000}CCCC\u{0000}\u{0000}",
    ),
  )
  @imgui.im_gui_text(
    "radio=\{@gen.int_ptr_get(state.widget_radio)} input=\{@gen.int_ptr_get(state.widget_input)} combo=\{@gen.int_ptr_get(state.widget_combo)}",
  )

  let progress_size = @gen.im_vec2_new(-1.0, 0.0)
  defer @gen.im_vec2_free(progress_size)
  @imgui.im_gui_progress_bar(0.68, progress_size, "68%")

  let button_color = @gen.im_vec4_new(0.2, 0.6, 0.95, 1.0)
  defer @gen.im_vec4_free(button_color)
  ignore(@imgui.im_gui_color_button("color button", button_color, 0))
}

///|
fn render_inputs_tab(state : DemoState) -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_separator_text("Input, drag, and slider widgets")
  @imgui.im_gui_push_item_width(260.0)

  ignore(@imgui.im_gui_drag_float("drag float", state.input_float))
  ignore(
    @imgui.im_gui_drag_int_ex("drag int", state.input_int, 1.0, 0, 100, "%d", 0),
  )
  ignore(
    @imgui.im_gui_slider_float("slider float", state.input_float, 0.0, 1.0),
  )
  ignore(@imgui.im_gui_slider_int("slider int", state.input_int, 0, 100))
  ignore(
    @imgui.im_gui_slider_angle_ex(
      "slider angle",
      state.input_float,
      -90.0,
      90.0,
      "%.0f deg",
      0,
    ),
  )
  ignore(
    @imgui.im_gui_input_float_ex(
      "input float",
      state.input_float,
      0.1,
      1.0,
      "%.3f",
      0,
    ),
  )
  ignore(@imgui.im_gui_input_int("input int", state.input_int))
  ignore(@imgui.im_gui_input_double("input double", state.input_double))
  @imgui.im_gui_pop_item_width()

  @imgui.im_gui_separator_text("Text input wrappers")
  let simple = @imgui.input_text("MoonBit input", state.simple_text)
  if simple.changed {
    state.simple_text = simple.value
    @imgui.im_gui_text("simple input changed")
  }
  let wrapped = @imgui.input_text("Unicode input", state.unicode_text)
  if wrapped.changed {
    state.unicode_text = wrapped.value
  }
  @imgui.im_gui_text_wrapped(
    "Current value copied back through the wrapper: \{state.unicode_text}",
  )

  @imgui.im_gui_separator_text("Flag editors")
  ignore(
    @imgui.im_gui_checkbox_flags_int_ptr(
      "NoResize bit",
      state.window_flags,
      @gen.im_gui_window_flags_no_resize(),
    ),
  )
  ignore(
    @imgui.im_gui_checkbox_flags_int_ptr(
      "NoMove bit",
      state.window_flags,
      @gen.im_gui_window_flags_no_move(),
    ),
  )
  @imgui.im_gui_text(
    "Edited flags value: \{@gen.int_ptr_get(state.window_flags)}",
  )
}

///|
fn render_selection_tab(state : DemoState) -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_separator_text("Combo boxes")
  let combo_size = @gen.im_vec2_new(0.0, 0.0)
  defer @gen.im_vec2_free(combo_size)
  let combo_index = @gen.int_ptr_get(state.selection_combo)
  if @imgui.im_gui_begin_combo("BeginCombo", combo_label(combo_index), 0) {
    let mut i = 0
    while i < 3 {
      let selected = combo_index == i
      if @imgui.im_gui_selectable_ex(combo_label(i), selected, 0, combo_size) {
        @gen.int_ptr_set(state.selection_combo, i)
      }
      if selected {
        @imgui.im_gui_set_item_default_focus()
      }
      i += 1
    }
    @imgui.im_gui_end_combo()
  }
  ignore(
    @imgui.im_gui_combo(
      "Combo multi-string",
      state.selection_combo,
      "One\u{0000}Two\u{0000}Three\u{0000}\u{0000}",
    ),
  )

  @imgui.im_gui_separator_text("List boxes and selectable rows")
  let list_size = @gen.im_vec2_new(-1.0, 130.0)
  defer @gen.im_vec2_free(list_size)
  let row_size = @gen.im_vec2_new(0.0, 0.0)
  defer @gen.im_vec2_free(row_size)
  if @imgui.im_gui_begin_list_box("ListBox", list_size) {
    let mut i = 0
    while i < 8 {
      @imgui.im_gui_push_id_int(i)
      let selected = state.selected_row == i
      if @imgui.im_gui_selectable_ex(
          "Selectable row \{i}",
          selected,
          @gen.im_gui_selectable_flags_allow_double_click(),
          row_size,
        ) {
        state.selected_row = i
      }
      if selected {
        @imgui.im_gui_same_line()
        @imgui.im_gui_text_disabled("selected")
      }
      if @imgui.im_gui_is_item_hovered(@gen.im_gui_hovered_flags_none()) {
        @imgui.im_gui_set_tooltip("Click to select row \{i}")
      }
      if @imgui.im_gui_is_item_clicked_ex(@gen.im_gui_mouse_button_left()) {
        @imgui.im_gui_set_tooltip("Row \{i} was clicked")
      }
      @imgui.im_gui_pop_id()
      i = i + 1
    }
    @imgui.im_gui_end_list_box()
  }
  @imgui.im_gui_text(
    "Selected combo=\{@gen.int_ptr_get(state.selection_combo)} row=\{state.selected_row}",
  )
}

///|
fn combo_label(index : Int) -> String {
  if index == 0 {
    "Alpha"
  } else if index == 1 {
    "Beta"
  } else {
    "Gamma"
  }
}

///|
fn render_layout_tab() -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_separator_text("Tree nodes and collapsing headers")
  @imgui.im_gui_set_next_item_open(true, @gen.im_gui_cond_once())
  if @imgui.im_gui_tree_node("Tree node") {
    @imgui.im_gui_bullet_text("Leaf item A")
    @imgui.im_gui_bullet_text("Leaf item B")
    if @imgui.im_gui_tree_node_ex(
        "Framed branch",
        @gen.im_gui_tree_node_flags_framed() |
        @gen.im_gui_tree_node_flags_default_open(),
      ) {
      @imgui.im_gui_text("Nested content")
      @imgui.im_gui_tree_pop()
    }
    @imgui.im_gui_tree_pop()
  }
  if @imgui.im_gui_collapsing_header(
      "Collapsing header",
      @gen.im_gui_tree_node_flags_default_open(),
    ) {
    @imgui.im_gui_text_wrapped(
      "This mirrors the official demo pattern: the header controls whether this block is drawn.",
    )
  }

  @imgui.im_gui_separator_text("Child windows and grouping")
  let child_size = @gen.im_vec2_new(0.0, 110.0)
  defer @gen.im_vec2_free(child_size)
  if @imgui.im_gui_begin_child("scrolling child", child_size, 1, 0) {
    let mut i = 0
    while i < 8 {
      @imgui.im_gui_text("scrollable line \{i}")
      i = i + 1
    }
  }
  @imgui.im_gui_end_child()

  @imgui.im_gui_begin_group()
  @imgui.im_gui_text("Grouped buttons")
  ignore(@imgui.im_gui_button("One"))
  @imgui.im_gui_same_line()
  ignore(@imgui.im_gui_button("Two"))
  @imgui.im_gui_same_line()
  ignore(@imgui.im_gui_arrow_button("Next", @gen.im_gui_dir_right()))
  @imgui.im_gui_end_group()

  @imgui.im_gui_separator_text("Disabled and style scopes")
  @imgui.im_gui_begin_disabled(true)
  ignore(@imgui.im_gui_button("Disabled"))
  @imgui.im_gui_end_disabled()
  @imgui.im_gui_push_style_var(@gen.im_gui_style_var_frame_rounding(), 6.0)
  ignore(@imgui.im_gui_button("Rounded by PushStyleVar"))
  @imgui.im_gui_pop_style_var()

  @imgui.im_gui_separator_text("Cursor helpers")
  let spacer = @gen.im_vec2_new(12.0, 12.0)
  defer @gen.im_vec2_free(spacer)
  @imgui.im_gui_dummy(spacer)
  @imgui.im_gui_same_line()
  @imgui.im_gui_text("Dummy reserved a 12x12 slot")
}

///|
fn render_popups_tab() -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_text_wrapped(
    "The official demo uses popups, modal windows, context menus, and tooltips. This tab exercises the same APIs directly.",
  )
  if @imgui.im_gui_button("Open popup") {
    @imgui.im_gui_open_popup("moonbit popup", 0)
  }
  if @imgui.im_gui_begin_popup("moonbit popup", 0) {
    @imgui.im_gui_text("Popup content")
    @imgui.im_gui_separator()
    ignore(@imgui.im_gui_selectable("Selectable row"))
    if @imgui.im_gui_button("Close") {
      @imgui.im_gui_close_current_popup()
    }
    @imgui.im_gui_end_popup()
  }

  @imgui.im_gui_separator()
  @imgui.im_gui_text("Right-click this line for a context menu.")
  if @imgui.im_gui_begin_popup_context_item_ex(
      "item context",
      @gen.im_gui_popup_flags_mouse_button_right(),
    ) {
    @imgui.im_gui_text("Context item popup")
    ignore(@imgui.im_gui_menu_item("Action"))
    @imgui.im_gui_end_popup()
  }

  if @imgui.im_gui_begin_item_tooltip() {
    @imgui.im_gui_text_wrapped(
      "Tooltip body created with BeginItemTooltip/EndTooltip.",
    )
    @imgui.im_gui_end_tooltip()
  }
}

///|
fn render_tables_tab() -> Unit raise @imgui.ImGuiError {
  let table_flags = @gen.im_gui_table_flags_borders() |
    @gen.im_gui_table_flags_row_bg() |
    @gen.im_gui_table_flags_resizable() |
    @gen.im_gui_table_flags_reorderable()
  if @imgui.im_gui_begin_table("feature matrix", 4, table_flags) {
    @imgui.im_gui_table_setup_column("API", 0)
    @imgui.im_gui_table_setup_column("Safe", 0)
    @imgui.im_gui_table_setup_column("Raw", 0)
    @imgui.im_gui_table_setup_column("Used here", 0)
    @imgui.im_gui_table_setup_scroll_freeze(0, 1)
    @imgui.im_gui_table_headers_row()
    table_row("Windows", "yes", "yes", "Begin/End")
    table_row("Widgets", "yes", "yes", "Button, Slider, Combo")
    table_row("Inputs", "yes", "yes", "Input, Drag, Flags")
    table_row("Selection", "yes", "yes", "ListBox, Selectable")
    table_row("Layout", "yes", "yes", "Child, Group, SameLine")
    table_row("Menus", "yes", "yes", "BeginMenu/MenuItem")
    table_row("Popups", "yes", "yes", "OpenPopup/BeginPopup")
    table_row("Tables", "yes", "yes", "BeginTable/TableSetupColumn")
    table_row("Draw lists", "yes", "yes", "Rect, Circle, Bezier, Text")
    table_row("Style", "yes", "yes", "GetStyle, ColorU32, PushStyle")
    let hovered = @imgui.im_gui_table_get_hovered_column()
    @imgui.im_gui_table_next_row()
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("Hovered column")
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("\{hovered}")
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("column count")
    ignore(@imgui.im_gui_table_next_column())
    @imgui.im_gui_text("\{@imgui.im_gui_table_get_column_count()}")
    @imgui.im_gui_end_table()
  }
}

///|
fn render_draw_tab() -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_separator_text("Draw list primitives")
  @imgui.im_gui_text_wrapped(
    "This canvas is drawn through ImDrawList from MoonBit, mirroring the custom rendering section of the official demo.",
  )
  let draw_list = @imgui.im_gui_get_window_draw_list()
  let origin = @imgui.im_gui_get_cursor_screen_pos()
  let x = @gen.im_vec2_field_get_x(origin)
  let y = @gen.im_vec2_field_get_y(origin)
  let canvas = @gen.im_vec2_new(620.0, 220.0)
  defer @gen.im_vec2_free(canvas)
  let p_min = @gen.im_vec2_new(x, y)
  defer @gen.im_vec2_free(p_min)
  let p_max = @gen.im_vec2_new(x + 620.0, y + 220.0)
  defer @gen.im_vec2_free(p_max)
  let bg = @imgui.im_gui_get_color_u32(@gen.im_gui_col_child_bg())
  let border = @imgui.im_gui_get_color_u32(@gen.im_gui_col_border())
  let line = @imgui.im_gui_get_color_u32(@gen.im_gui_col_plot_lines())
  let button = @imgui.im_gui_get_color_u32(@gen.im_gui_col_button())
  let header = @imgui.im_gui_get_color_u32(@gen.im_gui_col_header())
  let text = @imgui.im_gui_get_color_u32(@gen.im_gui_col_text())

  @imgui.im_draw_list_add_rect_filled(draw_list, p_min, p_max, bg)
  @imgui.im_draw_list_add_rect_ex(
    draw_list,
    p_min,
    p_max,
    border,
    4.0,
    1.0,
    @gen.im_draw_flags_round_corners_all(),
  )
  let line_a = @gen.im_vec2_new(x + 24.0, y + 36.0)
  defer @gen.im_vec2_free(line_a)
  let line_b = @gen.im_vec2_new(x + 180.0, y + 36.0)
  defer @gen.im_vec2_free(line_b)
  @imgui.im_draw_list_add_line_ex(draw_list, line_a, line_b, line, 2.0)

  let rect_a = @gen.im_vec2_new(x + 24.0, y + 60.0)
  defer @gen.im_vec2_free(rect_a)
  let rect_b = @gen.im_vec2_new(x + 180.0, y + 132.0)
  defer @gen.im_vec2_free(rect_b)
  @imgui.im_draw_list_add_rect_filled_ex(
    draw_list,
    rect_a,
    rect_b,
    button,
    6.0,
    @gen.im_draw_flags_round_corners_all(),
  )

  let circle = @gen.im_vec2_new(x + 260.0, y + 96.0)
  defer @gen.im_vec2_free(circle)
  @imgui.im_draw_list_add_circle_ex(draw_list, circle, 42.0, header, 32, 3.0)
  @imgui.im_draw_list_add_circle_filled(draw_list, circle, 20.0, button, 32)

  let tri_a = @gen.im_vec2_new(x + 350.0, y + 138.0)
  defer @gen.im_vec2_free(tri_a)
  let tri_b = @gen.im_vec2_new(x + 430.0, y + 58.0)
  defer @gen.im_vec2_free(tri_b)
  let tri_c = @gen.im_vec2_new(x + 500.0, y + 138.0)
  defer @gen.im_vec2_free(tri_c)
  @imgui.im_draw_list_add_triangle(draw_list, tri_a, tri_b, tri_c, line)

  let curve_a = @gen.im_vec2_new(x + 330.0, y + 172.0)
  defer @gen.im_vec2_free(curve_a)
  let curve_b = @gen.im_vec2_new(x + 390.0, y + 210.0)
  defer @gen.im_vec2_free(curve_b)
  let curve_c = @gen.im_vec2_new(x + 480.0, y + 136.0)
  defer @gen.im_vec2_free(curve_c)
  let curve_d = @gen.im_vec2_new(x + 560.0, y + 184.0)
  defer @gen.im_vec2_free(curve_d)
  @imgui.im_draw_list_add_bezier_cubic(
    draw_list, curve_a, curve_b, curve_c, curve_d, line, 3.0, 0,
  )

  let text_pos = @gen.im_vec2_new(x + 24.0, y + 168.0)
  defer @gen.im_vec2_free(text_pos)
  @imgui.im_draw_list_add_text(
    draw_list, text_pos, text, "ImDrawList primitives from MoonBit",
  )
  @imgui.im_gui_dummy(canvas)
}

///|
fn render_style_tab() -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_separator_text("Style and color data")
  let style = @imgui.im_gui_get_style()
  @imgui.im_gui_text("Alpha: \{@gen.im_gui_style_field_get_alpha(style)}")
  @imgui.im_gui_text(
    "Window rounding: \{@gen.im_gui_style_field_get_window_rounding(style)}",
  )
  @imgui.im_gui_text(
    "Frame rounding: \{@gen.im_gui_style_field_get_frame_rounding(style)}",
  )
  @imgui.im_gui_text(
    "Grab min size: \{@gen.im_gui_style_field_get_grab_min_size(style)}",
  )

  @imgui.im_gui_separator_text("Named colors")
  if @imgui.im_gui_begin_table(
      "style colors",
      3,
      @gen.im_gui_table_flags_borders() | @gen.im_gui_table_flags_row_bg(),
    ) {
    @imgui.im_gui_table_setup_column("Index", 0)
    @imgui.im_gui_table_setup_column("Name", 0)
    @imgui.im_gui_table_setup_column("Preview", 0)
    @imgui.im_gui_table_headers_row()
    let mut i = 0
    while i < 8 {
      @imgui.im_gui_table_next_row()
      ignore(@imgui.im_gui_table_next_column())
      @imgui.im_gui_text("\{i}")
      ignore(@imgui.im_gui_table_next_column())
      @imgui.im_gui_text(@imgui.im_gui_get_style_color_name(i))
      ignore(@imgui.im_gui_table_next_column())
      let color = @imgui.im_gui_get_style_color_vec4(i)
      ignore(@imgui.im_gui_color_button("color \{i}", color, 0))
      i = i + 1
    }
    @imgui.im_gui_end_table()
  }
}

///|
fn table_row(
  api : String,
  safe : String,
  raw : String,
  used : String,
) -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_table_next_row()
  ignore(@imgui.im_gui_table_next_column())
  @imgui.im_gui_text(api)
  ignore(@imgui.im_gui_table_next_column())
  @imgui.im_gui_text(safe)
  ignore(@imgui.im_gui_table_next_column())
  @imgui.im_gui_text(raw)
  ignore(@imgui.im_gui_table_next_column())
  @imgui.im_gui_text(used)
}

///|
fn render_text_tab() -> Unit raise @imgui.ImGuiError {
  @imgui.im_gui_separator_text("Text")
  @imgui.im_gui_text("Text")
  @imgui.im_gui_text_disabled("Disabled text")
  let tint = @gen.im_vec4_new(1.0, 0.55, 0.2, 1.0)
  defer @gen.im_vec4_free(tint)
  @imgui.im_gui_text_colored(tint, "Colored text")
  @imgui.im_gui_text_wrapped(
    "Wrapped text follows the same shape as the official demo and proves that the generated string conversion path is exercised.",
  )
  @imgui.im_gui_label_text("label", "value")
  @imgui.im_gui_bullet_text("Bullet text")
  ignore(@imgui.im_gui_text_link("Text link"))
  @imgui.im_gui_separator_text("Metrics")
  @imgui.im_gui_text("Dear ImGui version: \{@imgui.im_gui_get_version()}")
  @imgui.im_gui_text(
    "Safe wrapper coverage: \{@imgui.safe_generated_coverage_percent()}%",
  )
  @imgui.im_gui_text("Frame: \{@imgui.frame_count()}")
}
