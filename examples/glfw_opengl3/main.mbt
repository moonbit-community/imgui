///|
struct DemoState {
  mut show_another : Bool
  mut show_modal : Bool
  mut enabled : Bool
  mut slider : Float
  mut int_slider : Int
  mut drag_float_value : Float
  mut drag_int_value : Int
  mut input_float_value : Float
  mut input_int_value : Int
  mut input_double_value : Double
  mut counter : Int
  mut selected_row : Int
  mut selected_item : Int
  mut combo_index : Int
  mut radio_choice : Int
  mut show_metrics : Bool
  mut progress : Float
  mut color : @imgui.Vec4
  mut picker : @imgui.Vec4
  mut text_value : String
  mut hint_value : String
  mut multi_value : String
  text_buffer : Bytes
  hint_buffer : Bytes
  multi_buffer : Bytes
}

///|
fn DemoState::new() -> DemoState {
  {
    show_another: false,
    show_modal: false,
    enabled: true,
    slider: 0.42,
    int_slider: 4,
    drag_float_value: 2.5,
    drag_int_value: 8,
    input_float_value: 1.25,
    input_int_value: 12,
    input_double_value: 3.14159,
    counter: 0,
    selected_row: 1,
    selected_item: 0,
    combo_index: 0,
    radio_choice: 0,
    show_metrics: true,
    progress: 0.35,
    color: @imgui.Vec4::rgba(0.20, 0.55, 0.95, 1.0),
    picker: @imgui.Vec4::rgba(0.95, 0.45, 0.20, 1.0),
    text_value: "",
    hint_value: "",
    multi_value: "",
    text_buffer: Bytes::make(128, b'\x00'),
    hint_buffer: Bytes::make(128, b'\x00'),
    multi_buffer: Bytes::make(256, b'\x00'),
  }
}

///|
fn main {
  guard @glfw.initialize() else { abort("failed to initialize GLFW") }
  defer @glfw.terminate()

  @glfw.window_hint(@glfw.context_version_major(), 3)
  @glfw.window_hint(@glfw.context_version_minor(), 2)
  @glfw.window_hint(@glfw.opengl_profile(), @glfw.opengl_core_profile())
  @glfw.window_hint(@glfw.opengl_forward_compat(), @glfw.true_value())
  @glfw.window_hint(@glfw.visible(), @glfw.true_value())
  @glfw.window_hint(@glfw.floating(), @glfw.true_value())

  let window = @glfw.create_window(
    1180,
    820,
    utf8("MoonBit Dear ImGui GLFW/OpenGL3"),
    @glfw.Monitor::null(),
    @glfw.Window::null(),
  )
  guard !window.is_null() else { abort("failed to create GLFW window") }
  defer @glfw.destroy_window(window)

  @glfw.set_window_pos(window, 80, 60)
  @glfw.show_window(window)
  @glfw.focus_window(window)
  @glfw.make_context_current(window)
  @glfw.swap_interval(1)

  let context = @imgui.Context::create()
  defer context.destroy()

  let style = @imgui.style() catch {
    _ => abort("failed to get Dear ImGui style")
  }
  style.colors_dark()

  guard @glfw.imgui_init_for_open_gl(window, true) else {
    abort("failed to initialize Dear ImGui GLFW backend")
  }
  defer @glfw.imgui_shutdown()

  guard @opengl3.init_ex(utf8("#version 150")) else {
    abort("failed to initialize Dear ImGui OpenGL3 backend")
  }
  defer @opengl3.shutdown()

  let state = DemoState::new()
  while !@glfw.window_should_close(window) {
    @glfw.poll_events()
    if @glfw.get_window_attrib(window, @glfw.iconified()) != 0 {
      @glfw.sleep(10)
      continue
    }

    @opengl3.new_frame()
    @glfw.imgui_new_frame()
    @imgui.new_frame() catch {
      _ => abort("failed to start Dear ImGui frame")
    }

    render_ui(state) catch {
      _ => abort("failed to render Dear ImGui UI")
    }

    let draw_data = @imgui.render() catch {
      _ => abort("failed to render Dear ImGui frame")
    }
    let framebuffer_width = Ref(0)
    let framebuffer_height = Ref(0)
    @glfw.get_framebuffer_size(window, framebuffer_width, framebuffer_height)
    @opengl3.viewport(0, 0, framebuffer_width.val, framebuffer_height.val)
    @opengl3.clear_color(0.08, 0.09, 0.10, 1.0)
    @opengl3.clear(@opengl3.color_buffer_bit())
    @opengl3.render_draw_data(draw_data)
    @glfw.swap_buffers(window)
  }
}

///|
fn render_ui(state : DemoState) -> Unit raise @imgui.ImGuiError {
  touch_value_api()
  let io = @imgui.io()
  io.set_app_accepting_events(true)

  let style = @imgui.style()
  let font = @imgui.font()
  let ui = @imgui.ui()
  ui.window(
    "MoonBit ImGui controls",
    flags=@imgui.WindowFlags::menu_bar().combine(
      @imgui.WindowFlags::horizontal_scrollbar(),
    ),
  ) <| ui => {
    ui.menu_bar() <| bar => {
      bar.menu("Actions") <| menu => {
        menu.menu_item("Increment counter") <| () => {
          state.counter = state.counter + 1
        }
        menu.menu_item("Toggle details", selected=state.show_another) <| () => {
          state.show_another = !state.show_another
        }
      }
      bar.menu_item("Open popup") <| () => { ui.open_popup("MoonBit popup") }
      bar.menu_item("Open modal", selected=state.show_modal) <| () => {
        state.show_modal = true
        ui.open_popup("MoonBit modal")
      }
    }

    render_text_and_layout(ui, state)
    render_controls(ui, state)
    render_scopes(ui, state, style, font)
    render_tabs(ui, state)

    ui.popup("MoonBit popup") <| popup => {
      popup.text("Popup rendered by MoonBit.")
      popup.separator()
      popup.button("Close popup") <| () => { popup.close() }
    }
    state.show_modal = ui.popup_modal(
        "MoonBit modal",
        state.show_modal,
        flags=@imgui.WindowFlags::always_auto_resize(),
      ) <| popup => {
        popup.text("Modal scope is closed automatically.")
        popup.button("Accept") <| () => {
          state.show_modal = false
          popup.close()
        }
      }

    if state.show_metrics {
      ui.separator()
      ui.text("frame = \{@imgui.frame_count()}")
      ui.text("font size = \{@imgui.font_size()}")
      ui.text("current font is null = \{font.is_null()}")
    }
  }

  if state.show_another {
    ui.window(
      "Another MoonBit window",
      flags=@imgui.WindowFlags::no_saved_settings(),
    ) <| ui => {
      ui.text("This window can be toggled from the main controls.")
      ui.button("Close") <| () => { state.show_another = false }
    }
  }
}

///|
fn render_text_and_layout(
  ui : @imgui.WindowUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.separator_text("Text and layout")
  ui.text("This window is rendered from MoonBit through Dear ImGui.")
  ui.text_disabled("Disabled text")
  ui.text_wrapped(
    "Wrapped text uses the active ImGui wrap settings and keeps the API in MoonBit.",
  )
  ui.label_text("Counter", "\{state.counter}")
  ui.bullet()
  ui.same_line()
  ui.bullet_text("Bullet text")
  ui.same_line_ex(360.0, 8.0)
  ui.small_button("Small +1") <| () => { state.counter = state.counter + 1 }
  ui.new_line()
  ui.spacing()
  ui.indent(width=18.0)
  ui.text("Indented content")
  ui.unindent(width=18.0)
  ui.align_text_to_frame_padding()
  ui.text("Aligned text")
  ui.set_next_item_width(220.0)
  ui.input_text("Editable text", state.text_buffer) <| value => {
    state.text_value = value
  }
  ui.set_next_item_allow_overlap()
  ui.button("Overlap target") <| () => { state.counter = state.counter + 1 }
  if ui.is_item_hovered() {
    ui.tooltip() <| tooltip => { tooltip.text("Tooltip scope") }
  }
  ui.set_tooltip("SetTooltipUnformatted on the last item")
  ui.with_text_wrap_pos(520.0) <| ui => {
    ui.text_wrapped("This text is inside a pushed text wrap scope.")
  }
}

///|
fn render_controls(
  ui : @imgui.WindowUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.separator_text("Controls")
  ui.checkbox("Show another window", state.show_another) <| value => {
    state.show_another = value
  }
  ui.same_line()
  ui.checkbox("Enabled", state.enabled) <| value => { state.enabled = value }
  ui.same_line()
  ui.checkbox("Show metrics", state.show_metrics) <| value => {
    state.show_metrics = value
  }

  ui.radio_button("Radio A", state.radio_choice == 0) <| () => {
    state.radio_choice = 0
  }
  ui.same_line()
  ui.radio_int("Radio B", state.radio_choice, 1) <| value => {
    state.radio_choice = value
  }

  ui.button("Advance progress") <| () => {
    state.progress = state.progress + 0.10
    if state.progress > 1.0 {
      state.progress = 0.0
    }
  }

  ui.slider_float(
    "Float slider",
    state.slider,
    0.0,
    1.0,
    flags=@imgui.SliderFlags::always_clamp(),
  ) <| value => { state.slider = value }
  ui.slider_int("Int slider", state.int_slider, 0, 10) <| value => {
    state.int_slider = value
  }
  ui.drag_float(
    "Drag float",
    state.drag_float_value,
    speed=0.05,
    min=0.0,
    max=10.0,
  ) <| value => { state.drag_float_value = value }
  ui.drag_int("Drag int", state.drag_int_value, speed=0.2, min=0, max=30) <| value => {
    state.drag_int_value = value
  }
  ui.input_float("Input float", state.input_float_value, step=0.1) <| value => {
    state.input_float_value = value
  }
  ui.input_int("Input int", state.input_int_value) <| value => {
    state.input_int_value = value
  }
  ui.input_double("Input double", state.input_double_value) <| value => {
    state.input_double_value = value
  }
  ui.input_text_with_hint(
    "Text with hint",
    "type here",
    state.hint_buffer,
    flags=@imgui.InputTextFlags::enter_returns_true(),
  ) <| value => { state.hint_value = value }
  ui.input_text_multiline("Multiline text", state.multi_buffer) <| value => {
    state.multi_value = value
  }
  ui.label_text("Plain text value", state.text_value)
  ui.label_text("Hint text value", state.hint_value)
  ui.label_text("Multiline value", state.multi_value)

  ui.color_edit3("Color edit RGB", state.color) <| value => {
    state.color = value
  }
  ui.color_edit4("Color edit RGBA", state.color) <| value => {
    state.color = value
  }
  ui.set_color_edit_options(
    @imgui.ColorEditFlags::display_rgb().combine(
      @imgui.ColorEditFlags::picker_hue_bar(),
    ),
  )
  ui.collapsing_header(
    "Color pickers",
    flags=@imgui.TreeNodeFlags::default_open(),
  ) <| ui => {
    ui.color_picker3("Picker RGB", state.picker) <| value => {
      state.picker = value
    }
    ui.color_picker4("Picker RGBA", state.picker) <| value => {
      state.picker = value
    }
  }
}

///|
fn render_scopes(
  ui : @imgui.WindowUi,
  state : DemoState,
  style : @imgui.Style,
  font : @imgui.Font,
) -> Unit raise @imgui.ImGuiError {
  ui.separator_text("Scopes")
  ui.with_id("style-buttons") <| ui => {
    ui.group() <| ui => {
      ui.button("Dark") <| () => { style.colors_dark() }
      ui.same_line()
      ui.button("Light") <| () => { style.colors_light() }
      ui.same_line()
      ui.button("Classic") <| () => { style.colors_classic() }
      ui.same_line()
      ui.button("Scale 1.00") <| () => { style.scale_all_sizes(1.0) }
    }
  }
  ui.with_id_int(7) <| ui => {
    ui.disabled(disabled=!state.enabled) <| ui => {
      ui.button("Disabled-aware button") <| () => {
        state.counter = state.counter + 1
      }
    }
  }
  ui.with_style_color_u32(@imgui.ColorId::button(), 0xFF3DA5FFU) <| ui => {
    ui.button("Packed color button") <| () => {
      state.counter = state.counter + 1
    }
  }
  ui.with_style_var_float(@imgui.StyleVar::frame_rounding(), 3.0) <| ui => {
    ui.button("Rounded via style var") <| () => {
      state.counter = state.counter + 1
    }
  }
  ui.with_font(font, size=@imgui.font_size()) <| ui => {
    ui.text("Current font scope")
  }

  ui.combo(
    "Combo",
    combo_label(state.combo_index),
    flags=@imgui.ComboFlags::height_regular(),
  ) <| combo => {
    combo.selectable("First", selected=state.combo_index == 0) <| () => {
      state.combo_index = 0
    }
    combo.selectable("Second", selected=state.combo_index == 1) <| () => {
      state.combo_index = 1
    }
    combo.selectable("Third", selected=state.combo_index == 2) <| () => {
      state.combo_index = 2
    }
  }

  ui.set_next_item_open(true, cond=@imgui.Cond::first_use_ever())
  ui.tree_node(
    "Tree node",
    flags=@imgui.TreeNodeFlags::default_open().combine(
      @imgui.TreeNodeFlags::open_on_arrow(),
    ),
  ) <| tree => {
    tree.text("Tree node text")
    tree.bullet_text("Tree bullet text")
  }

  ui.button("Open popup") <| () => { ui.open_popup("MoonBit popup") }
  ui.same_line()
  ui.button("Open modal") <| () => {
    state.show_modal = true
    ui.open_popup("MoonBit modal")
  }
  let popup_open = ui.is_popup_open("MoonBit popup")
  ui.text("popup open = \{popup_open}")
  ui.selectable("Selectable command", selected=state.selected_item == 9) <| () => {
    state.selected_item = 9
  }
}

///|
fn render_tabs(
  ui : @imgui.WindowUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.separator_text("Tabs and tables")
  ui.tab_bar(
    "main-tabs",
    flags=@imgui.TabBarFlags::reorderable().combine(
      @imgui.TabBarFlags::draw_selected_overline(),
    ),
  ) <| tabs => {
    tabs.tab_item("State", flags=@imgui.TabItemFlags::no_reorder()) <| tab => {
      tab.text("enabled = \{state.enabled}")
      tab.text("slider = \{state.slider}")
      tab.text("selected row = \{state.selected_row}")
      tab.separator()
      render_rows_from_tab(tab, state)
    }
    tabs.tab_item("Table") <| tab => {
      tab.text("Table rendered from a tab item.")
      render_rows_from_tab(tab, state)
    }
  }

  let table_flags = @imgui.TableFlags::borders()
    .combine(@imgui.TableFlags::row_bg())
    .combine(@imgui.TableFlags::hideable())
  ui.table("window-table", 3, flags=table_flags) <| table => {
    render_table(table, state)
  }
}

///|
fn render_rows_from_tab(
  ui : @imgui.TabItemUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.table(
    "tab-table",
    2,
    flags=@imgui.TableFlags::borders().combine(@imgui.TableFlags::row_bg()),
  ) <| table => {
    table.setup_column("Name")
    table.setup_column("Value")
    table.headers_row()
    render_row(table, state, 1, "First")
    render_row(table, state, 2, "Second")
    render_row(table, state, 3, "Third")
  }
}

///|
fn render_table(
  table : @imgui.TableUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  table.setup_column("Item", flags=@imgui.TableColumnFlags::width_stretch())
  table.setup_column(
    "Value",
    flags=@imgui.TableColumnFlags::width_fixed(),
    init_width_or_weight=120.0,
  )
  table.setup_column(
    "Meta",
    flags=@imgui.TableColumnFlags::width_fixed(),
    init_width_or_weight=120.0,
  )
  table.setup_scroll_freeze(0, 1)
  table.headers_row()
  table.header("Manual header")
  table.set_column_enabled(2, true)
  render_row(table, state, 1, "Alpha")
  render_row(table, state, 2, "Beta")
  render_row(table, state, 3, "Gamma")
  table.next_row(flags=@imgui.TableRowFlags::headers())
  ignore(table.set_column_index(0))
  table.text("columns = \{table.column_count()}")
  ignore(table.set_column_index(1))
  table.text("column = \{table.column_index()}")
  ignore(table.set_column_index(2))
  table.set_bg_color(@imgui.TableBgTarget::cell_bg(), 0x333333FFU)
  table.text("hovered = \{table.hovered_column()}")
  ignore(table.column_flags(0).value())
  ignore(table.row_index())
}

///|
fn render_row(
  table : @imgui.TableUi,
  state : DemoState,
  index : Int,
  label : String,
) -> Unit raise @imgui.ImGuiError {
  table.next_row()
  ignore(table.next_column())
  if table.selectable(
      label,
      selected=state.selected_row == index,
      flags=@imgui.SelectableFlags::span_all_columns(),
    ) {
    state.selected_row = index
  }
  ignore(table.next_column())
  table.text("row \{index}")
  ignore(table.next_column())
  table.text("active = \{state.selected_row == index}")
}

///|
fn combo_label(index : Int) -> String {
  if index == 1 {
    "Second"
  } else if index == 2 {
    "Third"
  } else {
    "First"
  }
}

///|
fn touch_value_api() -> Unit {
  let mut bits = 0
  for
    value in [
      @imgui.WindowFlags::none(),
      @imgui.WindowFlags::no_title_bar(),
      @imgui.WindowFlags::no_resize(),
      @imgui.WindowFlags::no_move(),
      @imgui.WindowFlags::no_scrollbar(),
      @imgui.WindowFlags::no_scroll_with_mouse(),
      @imgui.WindowFlags::no_collapse(),
      @imgui.WindowFlags::always_auto_resize(),
      @imgui.WindowFlags::no_background(),
      @imgui.WindowFlags::no_saved_settings(),
      @imgui.WindowFlags::no_mouse_inputs(),
      @imgui.WindowFlags::menu_bar(),
      @imgui.WindowFlags::horizontal_scrollbar(),
      @imgui.WindowFlags::no_focus_on_appearing(),
      @imgui.WindowFlags::no_bring_to_front_on_focus(),
      @imgui.WindowFlags::always_vertical_scrollbar(),
      @imgui.WindowFlags::always_horizontal_scrollbar(),
      @imgui.WindowFlags::no_nav_inputs(),
      @imgui.WindowFlags::no_nav_focus(),
      @imgui.WindowFlags::unsaved_document(),
      @imgui.WindowFlags::no_nav(),
      @imgui.WindowFlags::no_decoration(),
      @imgui.WindowFlags::no_inputs(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.SelectableFlags::none(),
      @imgui.SelectableFlags::no_auto_close_popups(),
      @imgui.SelectableFlags::span_all_columns(),
      @imgui.SelectableFlags::allow_double_click(),
      @imgui.SelectableFlags::disabled(),
      @imgui.SelectableFlags::allow_overlap(),
      @imgui.SelectableFlags::highlight(),
      @imgui.SelectableFlags::select_on_nav(),
      @imgui.SelectableFlags::dont_close_popups(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.TableFlags::none(),
      @imgui.TableFlags::resizable(),
      @imgui.TableFlags::reorderable(),
      @imgui.TableFlags::hideable(),
      @imgui.TableFlags::sortable(),
      @imgui.TableFlags::no_saved_settings(),
      @imgui.TableFlags::context_menu_in_body(),
      @imgui.TableFlags::row_bg(),
      @imgui.TableFlags::borders_inner_h(),
      @imgui.TableFlags::borders_outer_h(),
      @imgui.TableFlags::borders_inner_v(),
      @imgui.TableFlags::borders_outer_v(),
      @imgui.TableFlags::borders_h(),
      @imgui.TableFlags::borders_v(),
      @imgui.TableFlags::borders_inner(),
      @imgui.TableFlags::borders_outer(),
      @imgui.TableFlags::borders(),
      @imgui.TableFlags::no_borders_in_body(),
      @imgui.TableFlags::no_borders_in_body_until_resize(),
      @imgui.TableFlags::sizing_fixed_fit(),
      @imgui.TableFlags::sizing_fixed_same(),
      @imgui.TableFlags::sizing_stretch_prop(),
      @imgui.TableFlags::sizing_stretch_same(),
      @imgui.TableFlags::no_host_extend_x(),
      @imgui.TableFlags::no_host_extend_y(),
      @imgui.TableFlags::no_keep_columns_visible(),
      @imgui.TableFlags::precise_widths(),
      @imgui.TableFlags::no_clip(),
      @imgui.TableFlags::pad_outer_x(),
      @imgui.TableFlags::no_pad_outer_x(),
      @imgui.TableFlags::no_pad_inner_x(),
      @imgui.TableFlags::scroll_x(),
      @imgui.TableFlags::scroll_y(),
      @imgui.TableFlags::sort_multi(),
      @imgui.TableFlags::sort_tristate(),
      @imgui.TableFlags::highlight_hovered_column(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.TabBarFlags::none(),
      @imgui.TabBarFlags::reorderable(),
      @imgui.TabBarFlags::auto_select_new_tabs(),
      @imgui.TabBarFlags::tab_list_popup_button(),
      @imgui.TabBarFlags::no_close_with_middle_mouse_button(),
      @imgui.TabBarFlags::no_tab_list_scrolling_buttons(),
      @imgui.TabBarFlags::no_tooltip(),
      @imgui.TabBarFlags::draw_selected_overline(),
      @imgui.TabBarFlags::fitting_policy_mixed(),
      @imgui.TabBarFlags::fitting_policy_shrink(),
      @imgui.TabBarFlags::fitting_policy_scroll(),
      @imgui.TabBarFlags::fitting_policy_resize_down(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.TabItemFlags::none(),
      @imgui.TabItemFlags::unsaved_document(),
      @imgui.TabItemFlags::set_selected(),
      @imgui.TabItemFlags::no_close_with_middle_mouse_button(),
      @imgui.TabItemFlags::no_push_id(),
      @imgui.TabItemFlags::no_tooltip(),
      @imgui.TabItemFlags::no_reorder(),
      @imgui.TabItemFlags::leading(),
      @imgui.TabItemFlags::trailing(),
      @imgui.TabItemFlags::no_assumed_closure(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.PopupFlags::none(),
      @imgui.PopupFlags::mouse_button_left(),
      @imgui.PopupFlags::mouse_button_right(),
      @imgui.PopupFlags::mouse_button_middle(),
      @imgui.PopupFlags::no_reopen(),
      @imgui.PopupFlags::no_open_over_existing_popup(),
      @imgui.PopupFlags::no_open_over_items(),
      @imgui.PopupFlags::any_popup_id(),
      @imgui.PopupFlags::any_popup_level(),
      @imgui.PopupFlags::any_popup(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.TreeNodeFlags::none(),
      @imgui.TreeNodeFlags::selected(),
      @imgui.TreeNodeFlags::framed(),
      @imgui.TreeNodeFlags::allow_overlap(),
      @imgui.TreeNodeFlags::no_tree_push_on_open(),
      @imgui.TreeNodeFlags::no_auto_open_on_log(),
      @imgui.TreeNodeFlags::default_open(),
      @imgui.TreeNodeFlags::open_on_double_click(),
      @imgui.TreeNodeFlags::open_on_arrow(),
      @imgui.TreeNodeFlags::leaf(),
      @imgui.TreeNodeFlags::bullet(),
      @imgui.TreeNodeFlags::frame_padding(),
      @imgui.TreeNodeFlags::span_avail_width(),
      @imgui.TreeNodeFlags::span_full_width(),
      @imgui.TreeNodeFlags::span_label_width(),
      @imgui.TreeNodeFlags::span_all_columns(),
      @imgui.TreeNodeFlags::label_span_all_columns(),
      @imgui.TreeNodeFlags::nav_left_jumps_to_parent(),
      @imgui.TreeNodeFlags::collapsing_header(),
      @imgui.TreeNodeFlags::draw_lines_none(),
      @imgui.TreeNodeFlags::draw_lines_full(),
      @imgui.TreeNodeFlags::draw_lines_to_nodes(),
      @imgui.TreeNodeFlags::nav_left_jumps_back_here(),
      @imgui.TreeNodeFlags::span_text_width(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.ComboFlags::none(),
      @imgui.ComboFlags::popup_align_left(),
      @imgui.ComboFlags::height_small(),
      @imgui.ComboFlags::height_regular(),
      @imgui.ComboFlags::height_large(),
      @imgui.ComboFlags::height_largest(),
      @imgui.ComboFlags::no_arrow_button(),
      @imgui.ComboFlags::no_preview(),
      @imgui.ComboFlags::width_fit_preview(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.InputTextFlags::none(),
      @imgui.InputTextFlags::chars_decimal(),
      @imgui.InputTextFlags::chars_hexadecimal(),
      @imgui.InputTextFlags::chars_uppercase(),
      @imgui.InputTextFlags::chars_no_blank(),
      @imgui.InputTextFlags::auto_select_all(),
      @imgui.InputTextFlags::enter_returns_true(),
      @imgui.InputTextFlags::callback_completion(),
      @imgui.InputTextFlags::callback_history(),
      @imgui.InputTextFlags::callback_always(),
      @imgui.InputTextFlags::callback_char_filter(),
      @imgui.InputTextFlags::allow_tab_input(),
      @imgui.InputTextFlags::ctrl_enter_for_new_line(),
      @imgui.InputTextFlags::no_horizontal_scroll(),
      @imgui.InputTextFlags::always_overwrite(),
      @imgui.InputTextFlags::read_only(),
      @imgui.InputTextFlags::password(),
      @imgui.InputTextFlags::no_undo_redo(),
      @imgui.InputTextFlags::chars_scientific(),
      @imgui.InputTextFlags::callback_resize(),
      @imgui.InputTextFlags::callback_edit(),
      @imgui.InputTextFlags::escape_clears_all(),
      @imgui.InputTextFlags::display_empty_ref_val(),
      @imgui.InputTextFlags::parse_empty_ref_val(),
      @imgui.InputTextFlags::elide_left(),
      @imgui.InputTextFlags::word_wrap(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.SliderFlags::none(),
      @imgui.SliderFlags::logarithmic(),
      @imgui.SliderFlags::no_round_to_format(),
      @imgui.SliderFlags::no_input(),
      @imgui.SliderFlags::wrap_around(),
      @imgui.SliderFlags::clamp_on_input(),
      @imgui.SliderFlags::clamp_zero_range(),
      @imgui.SliderFlags::no_speed_tweaks(),
      @imgui.SliderFlags::color_markers(),
      @imgui.SliderFlags::always_clamp(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.ColorEditFlags::none(),
      @imgui.ColorEditFlags::no_alpha(),
      @imgui.ColorEditFlags::no_picker(),
      @imgui.ColorEditFlags::no_options(),
      @imgui.ColorEditFlags::no_small_preview(),
      @imgui.ColorEditFlags::no_inputs(),
      @imgui.ColorEditFlags::no_tooltip(),
      @imgui.ColorEditFlags::no_label(),
      @imgui.ColorEditFlags::no_side_preview(),
      @imgui.ColorEditFlags::no_drag_drop(),
      @imgui.ColorEditFlags::no_border(),
      @imgui.ColorEditFlags::no_color_markers(),
      @imgui.ColorEditFlags::alpha_opaque(),
      @imgui.ColorEditFlags::alpha_no_bg(),
      @imgui.ColorEditFlags::alpha_preview_half(),
      @imgui.ColorEditFlags::alpha_bar(),
      @imgui.ColorEditFlags::hdr(),
      @imgui.ColorEditFlags::display_rgb(),
      @imgui.ColorEditFlags::display_hsv(),
      @imgui.ColorEditFlags::display_hex(),
      @imgui.ColorEditFlags::uint8(),
      @imgui.ColorEditFlags::float(),
      @imgui.ColorEditFlags::picker_hue_bar(),
      @imgui.ColorEditFlags::picker_hue_wheel(),
      @imgui.ColorEditFlags::input_rgb(),
      @imgui.ColorEditFlags::input_hsv(),
      @imgui.ColorEditFlags::alpha_preview(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.TableColumnFlags::none(),
      @imgui.TableColumnFlags::disabled(),
      @imgui.TableColumnFlags::default_hide(),
      @imgui.TableColumnFlags::default_sort(),
      @imgui.TableColumnFlags::width_stretch(),
      @imgui.TableColumnFlags::width_fixed(),
      @imgui.TableColumnFlags::no_resize(),
      @imgui.TableColumnFlags::no_reorder(),
      @imgui.TableColumnFlags::no_hide(),
      @imgui.TableColumnFlags::no_clip(),
      @imgui.TableColumnFlags::no_sort(),
      @imgui.TableColumnFlags::no_sort_ascending(),
      @imgui.TableColumnFlags::no_sort_descending(),
      @imgui.TableColumnFlags::no_header_label(),
      @imgui.TableColumnFlags::no_header_width(),
      @imgui.TableColumnFlags::prefer_sort_ascending(),
      @imgui.TableColumnFlags::prefer_sort_descending(),
      @imgui.TableColumnFlags::indent_enable(),
      @imgui.TableColumnFlags::indent_disable(),
      @imgui.TableColumnFlags::angled_header(),
      @imgui.TableColumnFlags::is_enabled(),
      @imgui.TableColumnFlags::is_visible(),
      @imgui.TableColumnFlags::is_sorted(),
      @imgui.TableColumnFlags::is_hovered(),
    ] {
    bits = bits | value.value()
  }
  for value in [@imgui.TableRowFlags::none(), @imgui.TableRowFlags::headers()] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.TableBgTarget::none(),
      @imgui.TableBgTarget::row_bg0(),
      @imgui.TableBgTarget::row_bg1(),
      @imgui.TableBgTarget::cell_bg(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.StyleVar::alpha(),
      @imgui.StyleVar::disabled_alpha(),
      @imgui.StyleVar::window_rounding(),
      @imgui.StyleVar::window_border_size(),
      @imgui.StyleVar::child_rounding(),
      @imgui.StyleVar::child_border_size(),
      @imgui.StyleVar::popup_rounding(),
      @imgui.StyleVar::popup_border_size(),
      @imgui.StyleVar::frame_rounding(),
      @imgui.StyleVar::frame_border_size(),
      @imgui.StyleVar::indent_spacing(),
      @imgui.StyleVar::scrollbar_size(),
      @imgui.StyleVar::scrollbar_rounding(),
      @imgui.StyleVar::scrollbar_padding(),
      @imgui.StyleVar::grab_min_size(),
      @imgui.StyleVar::grab_rounding(),
      @imgui.StyleVar::image_rounding(),
      @imgui.StyleVar::image_border_size(),
      @imgui.StyleVar::tab_rounding(),
      @imgui.StyleVar::tab_border_size(),
      @imgui.StyleVar::tab_min_width_base(),
      @imgui.StyleVar::tab_min_width_shrink(),
      @imgui.StyleVar::tab_bar_border_size(),
      @imgui.StyleVar::tab_bar_overline_size(),
      @imgui.StyleVar::table_angled_headers_angle(),
      @imgui.StyleVar::tree_lines_size(),
      @imgui.StyleVar::tree_lines_rounding(),
      @imgui.StyleVar::drag_drop_target_rounding(),
      @imgui.StyleVar::separator_size(),
      @imgui.StyleVar::separator_text_border_size(),
      @imgui.StyleVar::count(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.Cond::none(),
      @imgui.Cond::always(),
      @imgui.Cond::once(),
      @imgui.Cond::first_use_ever(),
      @imgui.Cond::appearing(),
    ] {
    bits = bits | value.value()
  }
  for
    value in [
      @imgui.ColorId::text(),
      @imgui.ColorId::text_disabled(),
      @imgui.ColorId::window_bg(),
      @imgui.ColorId::child_bg(),
      @imgui.ColorId::popup_bg(),
      @imgui.ColorId::border(),
      @imgui.ColorId::border_shadow(),
      @imgui.ColorId::frame_bg(),
      @imgui.ColorId::frame_bg_hovered(),
      @imgui.ColorId::frame_bg_active(),
      @imgui.ColorId::title_bg(),
      @imgui.ColorId::title_bg_active(),
      @imgui.ColorId::title_bg_collapsed(),
      @imgui.ColorId::menu_bar_bg(),
      @imgui.ColorId::scrollbar_bg(),
      @imgui.ColorId::scrollbar_grab(),
      @imgui.ColorId::scrollbar_grab_hovered(),
      @imgui.ColorId::scrollbar_grab_active(),
      @imgui.ColorId::check_mark(),
      @imgui.ColorId::checkbox_selected_bg(),
      @imgui.ColorId::slider_grab(),
      @imgui.ColorId::slider_grab_active(),
      @imgui.ColorId::button(),
      @imgui.ColorId::button_hovered(),
      @imgui.ColorId::button_active(),
      @imgui.ColorId::header(),
      @imgui.ColorId::header_hovered(),
      @imgui.ColorId::header_active(),
      @imgui.ColorId::separator(),
      @imgui.ColorId::separator_hovered(),
      @imgui.ColorId::separator_active(),
      @imgui.ColorId::resize_grip(),
      @imgui.ColorId::resize_grip_hovered(),
      @imgui.ColorId::resize_grip_active(),
      @imgui.ColorId::tab(),
      @imgui.ColorId::tab_active(),
      @imgui.ColorId::tab_hovered(),
      @imgui.ColorId::tab_selected(),
      @imgui.ColorId::tab_selected_overline(),
      @imgui.ColorId::tab_dimmed(),
      @imgui.ColorId::tab_dimmed_selected(),
      @imgui.ColorId::tab_dimmed_selected_overline(),
      @imgui.ColorId::tab_unfocused(),
      @imgui.ColorId::tab_unfocused_active(),
      @imgui.ColorId::plot_lines(),
      @imgui.ColorId::plot_lines_hovered(),
      @imgui.ColorId::plot_histogram(),
      @imgui.ColorId::plot_histogram_hovered(),
      @imgui.ColorId::table_header_bg(),
      @imgui.ColorId::table_border_strong(),
      @imgui.ColorId::table_border_light(),
      @imgui.ColorId::table_row_bg(),
      @imgui.ColorId::table_row_bg_alt(),
      @imgui.ColorId::text_link(),
      @imgui.ColorId::text_selected_bg(),
      @imgui.ColorId::tree_lines(),
      @imgui.ColorId::drag_drop_target(),
      @imgui.ColorId::drag_drop_target_bg(),
      @imgui.ColorId::unsaved_marker(),
      @imgui.ColorId::nav_cursor(),
      @imgui.ColorId::nav_highlight(),
      @imgui.ColorId::nav_windowing_highlight(),
      @imgui.ColorId::nav_windowing_dim_bg(),
      @imgui.ColorId::modal_window_dim_bg(),
      @imgui.ColorId::input_text_cursor(),
      @imgui.ColorId::count(),
    ] {
    bits = bits | value.value()
  }
  ignore(bits)
}

///|
fn utf8(value : String) -> Bytes {
  @encoding/utf8.encode(value)
}
