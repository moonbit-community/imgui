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
  mut angle : Float
  mut float2 : @imgui.Float2
  mut float3 : @imgui.Float3
  mut float4 : @imgui.Float4
  mut int2 : @imgui.Int2
  mut int3 : @imgui.Int3
  mut int4 : @imgui.Int4
  mut drag_float2 : @imgui.Float2
  mut drag_float3 : @imgui.Float3
  mut drag_float4 : @imgui.Float4
  mut drag_int2 : @imgui.Int2
  mut drag_int3 : @imgui.Int3
  mut drag_int4 : @imgui.Int4
  mut float_range : @imgui.FloatRange
  mut int_range : @imgui.IntRange
  mut input_float2 : @imgui.Float2
  mut input_float3 : @imgui.Float3
  mut input_float4 : @imgui.Float4
  mut input_int2 : @imgui.Int2
  mut input_int3 : @imgui.Int3
  mut input_int4 : @imgui.Int4
  mut counter : Int
  mut selected_row : Int
  mut selected_item : Int
  mut combo_index : Int
  mut radio_choice : Int
  mut optional_tab_open : Bool
  mut header_open : Bool
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
    angle: 0.35,
    float2: @imgui.Float2::new(0.25, 0.75),
    float3: @imgui.Float3::new(0.10, 0.50, 0.90),
    float4: @imgui.Float4::new(0.15, 0.35, 0.65, 0.85),
    int2: @imgui.Int2::new(1, 2),
    int3: @imgui.Int3::new(1, 2, 3),
    int4: @imgui.Int4::new(1, 2, 3, 4),
    drag_float2: @imgui.Float2::new(1.0, 2.0),
    drag_float3: @imgui.Float3::new(1.0, 2.0, 3.0),
    drag_float4: @imgui.Float4::new(1.0, 2.0, 3.0, 4.0),
    drag_int2: @imgui.Int2::new(2, 4),
    drag_int3: @imgui.Int3::new(2, 4, 6),
    drag_int4: @imgui.Int4::new(2, 4, 6, 8),
    float_range: @imgui.FloatRange::new(0.20, 0.80),
    int_range: @imgui.IntRange::new(2, 8),
    input_float2: @imgui.Float2::new(0.0, 1.0),
    input_float3: @imgui.Float3::new(0.0, 1.0, 2.0),
    input_float4: @imgui.Float4::new(0.0, 1.0, 2.0, 3.0),
    input_int2: @imgui.Int2::new(10, 20),
    input_int3: @imgui.Int3::new(10, 20, 30),
    input_int4: @imgui.Int4::new(10, 20, 30, 40),
    counter: 0,
    selected_row: 1,
    selected_item: 0,
    combo_index: 0,
    radio_choice: 0,
    optional_tab_open: true,
    header_open: true,
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
  io.add_focus_event(true)

  let style = @imgui.style()
  let font = @imgui.font()
  let ui = @imgui.ui()
  ui.main_menu_bar() <| bar => {
    bar.menu_item("Main counter +1") <| () => {
      state.counter = state.counter + 1
    }
    bar.menu_item("Disabled main action", enabled=false) <| () => {
      state.counter = state.counter - 1
    }
  }
  ui.window("MoonBit - Overview", flags=[MenuBar, AlwaysAutoResize]) <| ui => {
    ui.menu_bar() <| bar => {
      bar.menu("Actions") <| menu => {
        menu.menu_item("Increment counter") <| () => {
          state.counter = state.counter + 1
        }
        menu.menu_item("Toggle details", selected=state.show_another) <| () => {
          state.show_another = !state.show_another
        }
        menu.menu_item("Toggle metrics", selected=state.show_metrics) <| () => {
          state.show_metrics = !state.show_metrics
        }
        menu.menu_item("Disabled nested action", enabled=false) <| () => {
          state.counter = state.counter - 1
        }
      }
    }
    render_overview(ui, state)
  }

  ui.window("MoonBit - Text and Layout", flags=[HorizontalScrollbar]) <| ui => {
    render_text_and_layout(ui, state)
  }

  ui.window("MoonBit - Values and Inputs", flags=[HorizontalScrollbar]) <| ui => {
    render_controls(ui, state)
  }

  ui.window("MoonBit - Styling", flags=[HorizontalScrollbar]) <| ui => {
    render_styling(ui, state, style, font)
  }

  ui.window("MoonBit - Scopes and Popups", flags=[HorizontalScrollbar]) <| ui => {
    render_scopes(ui, state)
    render_popup_scopes(ui, state)
  }

  ui.window("MoonBit - Tabs and Tables", flags=[HorizontalScrollbar]) <| ui => {
    render_tabs(ui, state)
  }

  if state.show_metrics {
    ui.window("MoonBit - Metrics", flags=[AlwaysAutoResize, NoSavedSettings]) <| ui => {
      render_metrics(ui, font)
    }
  }

  if state.show_another {
    ui.window("Another MoonBit window", flags=[NoSavedSettings]) <| ui => {
      ui.text("This window can be toggled from the overview window.")
      ui.button("Close") <| () => { state.show_another = false }
    }
  }
}

///|
fn demo_window_style() -> Array[@imgui.StyleSheet] {
  [
    Rounding(6.0),
    Background(Hex("#171B21")),
    HoveredBg(Hex("#263142")),
    ActiveBg(Hex("#2D5B89")),
    CollapsedBg(Hex("#15191F")),
    SelectedBg(Cyan),
    DimmedBg(Gray),
    DimmedSelectedBg(Blue),
    DropTargetBg(Yellow),
    ScrollbarGrab(Gray),
    ScrollbarGrabHovered(Cyan),
    ScrollbarGrabActive(Blue),
    SliderGrab(Cyan),
    SliderGrabActive(Blue),
    ResizeGrip(Gray),
    ResizeGripHovered(Cyan),
    ResizeGripActive(Blue),
  ]
}

///|
fn render_overview(
  ui : @imgui.WindowUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.text("MoonBit controls are split across separate Dear ImGui windows.")
  ui.separator()
  ui.label_text("Counter", "\{state.counter}")
  ui.label_text("Enabled", "\{state.enabled}")
  ui.label_text("Slider", "\{state.slider}")
  ui.checkbox("Show another window", state.show_another) <| value => {
    state.show_another = value
  }
  ui.checkbox("Show metrics window", state.show_metrics) <| value => {
    state.show_metrics = value
  }
  ui.button("Increment counter") <| () => { state.counter = state.counter + 1 }
}

///|
fn render_metrics(
  ui : @imgui.WindowUi,
  font : @imgui.Font,
) -> Unit raise @imgui.ImGuiError {
  ui.text("frame = \{@imgui.frame_count()}")
  ui.text("font size = \{@imgui.font_size()}")
  ui.text("current font is null = \{font.is_null()}")
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
  ui.same_line()
  ui.arrow_button("arrow-right", @imgui.Dir::right()) <| () => {
    state.counter = state.counter + 1
  }
  ui.text_link("Text link") <| () => { state.counter = state.counter + 1 }
  ui.same_line()
  ignore(ui.text_link_open_url("https://github.com/moonbit-community/imgui"))
  ui.new_line()
  ui.spacing()
  ui.indent(width=18.0)
  ui.text("Indented content")
  ui.unindent(width=18.0)
  ui.align_text_to_frame_padding()
  ui.text("Aligned text")
  let line_height = ui.text_line_height()
  let line_height_with_spacing = ui.text_line_height_with_spacing()
  let frame_height = ui.frame_height()
  let frame_height_with_spacing = ui.frame_height_with_spacing()
  ui.label_text(
    "Heights",
    "\{line_height}/\{line_height_with_spacing}/\{frame_height}/\{frame_height_with_spacing}",
  )
  ui.label_text("Item width", "\{ui.calc_item_width()}")
  let cursor_x = ui.cursor_pos_x()
  let cursor_y = ui.cursor_pos_y()
  ui.set_cursor_pos_x(cursor_x + 12.0)
  ui.text("Cursor X adjusted")
  ui.set_cursor_pos_x(cursor_x)
  ui.set_cursor_pos_y(cursor_y + ui.text_line_height_with_spacing())
  ui.text("Cursor Y adjusted")
  ui.set_window_font_scale(1.0)
  ui.set_nav_cursor_visible(true)
  let layout_id = ui.id("layout-id")
  let layout_int_id = ui.id_int(123)
  ui.label_text("Generated IDs", "\{layout_id}/\{layout_int_id}")
  ui.set_next_item_width(220.0)
  if @imgui.frame_count() == 1 {
    ui.set_keyboard_focus_here()
  }
  ui.input_text("Editable text", state.text_buffer) <| value => {
    state.text_value = value
  }
  ui.set_next_item_allow_overlap()
  ui.set_next_item_storage_id(layout_id)
  ui.set_next_item_selection_user_data(1L)
  ui.button("Overlap target") <| () => { state.counter = state.counter + 1 }
  ui.set_item_default_focus()
  if ui.is_item_clicked(button=@imgui.MouseButton::left()) {
    state.counter = state.counter + 1
  }
  let item_state = ui.item_state()
  let any_item_state = ui.any_item_state()
  let last_item_disabled = ui.has_item_flag(Disabled)
  ui.label_text(
    "Last item",
    "id=\{ui.item_id()} disabled=\{last_item_disabled} clicked=\{item_state.clicked} active=\{any_item_state.active}",
  )
  ui.item_tooltip() <| tooltip => { tooltip.text("Item tooltip scope") }
  ui.set_item_tooltip("SetItemTooltip on the last item")
  if ui.is_item_hovered(flags=[ForTooltip]) {
    ui.tooltip() <| tooltip => { tooltip.text("Tooltip scope") }
  }
  ui.set_tooltip("SetTooltipUnformatted on the last item")
  ui.with_text_wrap_pos(520.0) <| ui => {
    ui.text_wrapped("This text is inside a pushed text wrap scope.")
  }
  let window_state = ui.window_state()
  ui.label_text(
    "Window",
    "\{ui.window_width()}x\{ui.window_height()} focused=\{window_state.focused} hovered=\{ui.is_window_hovered(flags=[RootAndChildWindows])}",
  )
  ui.label_text(
    "Focus",
    "any=\{ui.is_window_focused(flags=[RootAndChildWindows])} appearing=\{window_state.appearing}",
  )
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

  ui.slider_float("Float slider", state.slider, 0.0, 1.0, flags=[AlwaysClamp]) <| value => {
    state.slider = value
  }
  ui.slider_int("Int slider", state.int_slider, 0, 10) <| value => {
    state.int_slider = value
  }
  ui.slider_angle("Angle slider", state.angle) <| value => {
    state.angle = value
  }
  ui.slider_float2("Float2 slider", state.float2, 0.0, 1.0) <| value => {
    state.float2 = value
  }
  ui.slider_float3("Float3 slider", state.float3, 0.0, 1.0) <| value => {
    state.float3 = value
  }
  ui.slider_float4("Float4 slider", state.float4, 0.0, 1.0) <| value => {
    state.float4 = value
  }
  ui.slider_int2("Int2 slider", state.int2, 0, 10) <| value => {
    state.int2 = value
  }
  ui.slider_int3("Int3 slider", state.int3, 0, 10) <| value => {
    state.int3 = value
  }
  ui.slider_int4("Int4 slider", state.int4, 0, 10) <| value => {
    state.int4 = value
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
  ui.drag_float2(
    "Drag float2",
    state.drag_float2,
    speed=0.05,
    min=0.0,
    max=10.0,
  ) <| value => { state.drag_float2 = value }
  ui.drag_float3(
    "Drag float3",
    state.drag_float3,
    speed=0.05,
    min=0.0,
    max=10.0,
  ) <| value => { state.drag_float3 = value }
  ui.drag_float4(
    "Drag float4",
    state.drag_float4,
    speed=0.05,
    min=0.0,
    max=10.0,
  ) <| value => { state.drag_float4 = value }
  ui.drag_int2("Drag int2", state.drag_int2, speed=0.2, min=0, max=30) <| value => {
    state.drag_int2 = value
  }
  ui.drag_int3("Drag int3", state.drag_int3, speed=0.2, min=0, max=30) <| value => {
    state.drag_int3 = value
  }
  ui.drag_int4("Drag int4", state.drag_int4, speed=0.2, min=0, max=30) <| value => {
    state.drag_int4 = value
  }
  ui.drag_float_range2(
    "Drag float range",
    state.float_range,
    speed=0.01,
    min=0.0,
    max=1.0,
  ) <| value => { state.float_range = value }
  ui.drag_int_range2(
    "Drag int range",
    state.int_range,
    speed=0.2,
    min=0,
    max=20,
  ) <| value => { state.int_range = value }
  ui.input_float("Input float", state.input_float_value, step=0.1) <| value => {
    state.input_float_value = value
  }
  ui.input_int("Input int", state.input_int_value) <| value => {
    state.input_int_value = value
  }
  ui.input_double("Input double", state.input_double_value) <| value => {
    state.input_double_value = value
  }
  ui.input_float2("Input float2", state.input_float2) <| value => {
    state.input_float2 = value
  }
  ui.input_float3("Input float3", state.input_float3) <| value => {
    state.input_float3 = value
  }
  ui.input_float4("Input float4", state.input_float4) <| value => {
    state.input_float4 = value
  }
  ui.input_int2("Input int2", state.input_int2) <| value => {
    state.input_int2 = value
  }
  ui.input_int3("Input int3", state.input_int3) <| value => {
    state.input_int3 = value
  }
  ui.input_int4("Input int4", state.input_int4) <| value => {
    state.input_int4 = value
  }
  ui.input_text_with_hint("Text with hint", "type here", state.hint_buffer, flags=[
    EnterReturnsTrue,
  ]) <| value => { state.hint_value = value }
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
  ui.set_color_edit_options([DisplayRgb, PickerHueBar])
  ui.collapsing_header("Color pickers", flags=[DefaultOpen]) <| ui => {
    ui.color_picker3("Picker RGB", state.picker) <| value => {
      state.picker = value
    }
    ui.color_picker4("Picker RGBA", state.picker) <| value => {
      state.picker = value
    }
  }
  state.header_open = ui.collapsing_header_open(
      "Closeable header",
      state.header_open,
      flags=[DefaultOpen],
    ) <| ui => { ui.text("The close button updates MoonBit state.") }
}

///|
fn render_scopes(
  ui : @imgui.WindowUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.separator_text("Scopes")
  ui.with_id_int(7) <| ui => {
    ui.disabled(disabled=!state.enabled) <| ui => {
      ui.button("Disabled-aware button") <| () => {
        state.counter = state.counter + 1
      }
    }
  }
  ui.with_item_flag(NoTabStop, true) <| ui => {
    ui.button("No tab stop item") <| () => { state.counter = state.counter + 1 }
  }
  ui.button_repeat(true) <| ui => {
    ui.small_button("Hold repeat +") <| () => {
      state.counter = state.counter + 1
    }
  }

  ui.combo("Combo", combo_label(state.combo_index), flags=[HeightRegular]) <| combo => {
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
  ui.tree_node("Tree node", flags=[DefaultOpen, OpenOnArrow]) <| tree => {
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
  ui.button("Right click item") <| () => { state.counter = state.counter + 1 }
  ui.open_popup_on_item_click()
  ui.popup_context_item() <| popup => {
    popup.text("Item context popup")
    popup.button("Close item popup") <| () => { popup.close() }
  }
  ui.popup_context_window() <| popup => {
    popup.text("Window context popup")
    popup.button("Close window popup") <| () => { popup.close() }
  }
  ui.popup_context_void() <| popup => {
    popup.text("Void context popup")
    popup.button("Close void popup") <| () => { popup.close() }
  }
  ui.selectable("Selectable command", selected=state.selected_item == 9) <| () => {
    state.selected_item = 9
  }
  ui.button("Keep window expanded") <| () => {
    ui.set_window_collapsed(false, cond=@imgui.Cond::always())
  }
  ui.same_line()
  ui.button("Focus by title") <| () => {
    ui.set_window_focus_by_name("MoonBit - Overview")
  }
  ui.same_line()
  ui.button("Focus current") <| () => { ui.set_window_focus() }
  let scroll = ui.scroll_state()
  ui.label_text(
    "Scroll",
    "\{scroll.x}/\{scroll.y} max=\{scroll.max_x}/\{scroll.max_y}",
  )
  ui.button("Scroll top-left") <| () => {
    ui.set_scroll_x(0.0)
    ui.set_scroll_y(0.0)
  }
  ui.same_line()
  ui.button("Scroll here") <| () => {
    ui.set_scroll_here_x()
    ui.set_scroll_here_y()
  }
  ui.columns(3) <| cols => {
    cols.set_column_width(0, 120.0)
    cols.text("Column A")
    cols.next_column()
    cols.set_column_offset(1, 140.0)
    cols.text("Column B")
    cols.next_column()
    let column = cols.column_state()
    cols.text("Column \{column.index + 1}/\{column.count}")
  }
}

///|
fn render_styling(
  ui : @imgui.WindowUi,
  state : DemoState,
  style : @imgui.Style,
  font : @imgui.Font,
) -> Unit raise @imgui.ImGuiError {
  ui.separator_text("Global style")
  ui.group() <| ui => {
    ui.button("Dark") <| () => { style.colors_dark() }
    ui.same_line()
    ui.button("Light") <| () => { style.colors_light() }
    ui.same_line()
    ui.button("Classic") <| () => { style.colors_classic() }
    ui.same_line()
    ui.button("Scale 1.00") <| () => { style.scale_all_sizes(1.0) }
  }
  ui.separator_text("Scoped StyleSheet")
  ui.text(
    "The style below is scoped, so global theme buttons above stay stable.",
  )
  ui.style(demo_window_style()) <| ui => {
    ui.text("demo_window_style() preview")
    ui.button("Styled preview +1") <| () => {
      state.counter = state.counter + 1
    }
  }
  ui.style([
    Background(Blue),
    HoveredBg(Cyan),
    ActiveBg(Green),
    Text(White),
    Rounding(5.0),
  ]) <| ui => {
    ui.button("Styled scope button") <| () => {
      state.counter = state.counter + 1
    }
  }
  ui.button("Direct button style", style=[
    Background(Hex("#223344")),
    HoveredBg(Hex("#31506B")),
    Rounding(8.0),
  ]) <| () => { state.counter = state.counter + 1 }
  ui.separator_text("Font scope")
  ui.with_font(font, size=@imgui.font_size()) <| ui => {
    ui.text("Current font scope")
  }
}

///|
fn render_popup_scopes(
  ui : @imgui.WindowUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.popup("MoonBit popup") <| popup => {
    popup.text("Popup rendered by MoonBit.")
    popup.separator()
    popup.button("Close popup") <| () => { popup.close() }
  }
  state.show_modal = ui.popup_modal("MoonBit modal", state.show_modal, flags=[
      AlwaysAutoResize,
    ]) <| popup => {
      popup.text("Modal scope is closed automatically.")
      popup.button("Accept") <| () => {
        state.show_modal = false
        popup.close()
      }
    }
}

///|
fn render_tabs(
  ui : @imgui.WindowUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.separator_text("Tabs and tables")
  ui.tab_bar("main-tabs", flags=[Reorderable, DrawSelectedOverline]) <| tabs => {
    tabs.tab_item("State", flags=[NoReorder]) <| tab => {
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
    state.optional_tab_open = tabs.tab_item_open(
        "Closeable",
        state.optional_tab_open,
      ) <| tab => { tab.text("This tab uses the open-state overload.") }
  }

  let table_flags : Array[@imgui.TableFlag] = [Borders, RowBg, Hideable]
  ui.table("window-table", 3, flags=table_flags) <| table => {
    render_table(table, state)
  }
}

///|
fn render_rows_from_tab(
  ui : @imgui.TabItemUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.table("tab-table", 2, flags=[Borders, RowBg]) <| table => {
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
  table.setup_column("Item", flags=[WidthStretch])
  table.setup_column("Value", flags=[WidthFixed], init_width_or_weight=120.0)
  table.setup_column(
    "Meta",
    flags=[WidthFixed, AngledHeader],
    init_width_or_weight=120.0,
  )
  table.setup_scroll_freeze(0, 1)
  table.angled_headers_row()
  table.headers_row()
  table.header("Manual header")
  table.set_column_enabled(2, true)
  render_row(table, state, 1, "Alpha")
  render_row(table, state, 2, "Beta")
  render_row(table, state, 3, "Gamma")
  table.next_row(flags=[Headers])
  ignore(table.set_column_index(0))
  table.text("columns = \{table.column_count()}")
  ignore(table.set_column_index(1))
  table.text("column = \{table.column_index()}")
  ignore(table.set_column_index(2))
  table.set_bg_color(@imgui.TableBgTarget::cell_bg(), Hex("#333333"))
  table.text("hovered = \{table.hovered_column()}")
  ignore(table.column_has_flag(0, IsVisible))
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
  if table.selectable(label, selected=state.selected_row == index, flags=[
      SpanAllColumns,
    ]) {
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
  let _ : Array[@imgui.WindowFlag] = [
    NoTitleBar,
    NoResize,
    NoMove,
    NoScrollbar,
    MenuBar,
    AlwaysAutoResize,
    NoScrollWithMouse,
    NoCollapse,
    NoBackground,
    NoSavedSettings,
    NoMouseInputs,
    HorizontalScrollbar,
    NoFocusOnAppearing,
    NoBringToFrontOnFocus,
    AlwaysVerticalScrollbar,
    AlwaysHorizontalScrollbar,
    NoNavInputs,
    NoNavFocus,
    UnsavedDocument,
    NoNav,
    NoDecoration,
    NoInputs,
  ]
  let _ : Array[@imgui.SelectableFlag] = [
    NoAutoClosePopups,
    SpanAllColumns,
    AllowDoubleClick,
    Disabled,
    AllowOverlap,
    Highlight,
    SelectOnNav,
    DontClosePopups,
  ]
  let _ : Array[@imgui.TableFlag] = [
    Resizable,
    Reorderable,
    Hideable,
    Sortable,
    NoSavedSettings,
    ContextMenuInBody,
    Borders,
    RowBg,
    BordersInnerH,
    BordersOuterH,
    BordersInnerV,
    BordersOuterV,
    BordersH,
    BordersV,
    BordersInner,
    BordersOuter,
    NoBordersInBody,
    NoBordersInBodyUntilResize,
    SizingFixedFit,
    SizingFixedSame,
    SizingStretchProp,
    SizingStretchSame,
    NoHostExtendX,
    NoHostExtendY,
    NoKeepColumnsVisible,
    PreciseWidths,
    NoClip,
    PadOuterX,
    NoPadOuterX,
    NoPadInnerX,
    ScrollX,
    ScrollY,
    SortMulti,
    SortTristate,
    HighlightHoveredColumn,
  ]
  let _ : Array[@imgui.TabBarFlag] = [
    Reorderable,
    AutoSelectNewTabs,
    TabListPopupButton,
    NoCloseWithMiddleMouseButton,
    NoTabListScrollingButtons,
    NoTooltip,
    DrawSelectedOverline,
    FittingPolicyMixed,
    FittingPolicyShrink,
    FittingPolicyScroll,
    FittingPolicyResizeDown,
  ]
  let _ : Array[@imgui.TabItemFlag] = [
    UnsavedDocument,
    SetSelected,
    NoCloseWithMiddleMouseButton,
    NoPushId,
    NoTooltip,
    NoReorder,
    Leading,
    Trailing,
    NoAssumedClosure,
  ]
  let _ : Array[@imgui.PopupFlag] = [
    MouseButtonLeft,
    MouseButtonRight,
    MouseButtonMiddle,
    NoReopen,
    NoOpenOverExistingPopup,
    NoOpenOverItems,
    AnyPopId,
    AnyPopupLevel,
    AnyPopup,
  ]
  let _ : Array[@imgui.TreeNodeFlag] = [
    Selected,
    Framed,
    AllowOverlap,
    NoTreePushOnOpen,
    NoAutoOpenOnLog,
    DefaultOpen,
    OpenOnDoubleClick,
    OpenOnArrow,
    Leaf,
    Bullet,
    FramePadding,
    SpanAvailWidth,
    SpanFullWidth,
    SpanLabelWidth,
    SpanAllColumns,
    LabelSpanAllColumns,
    NavLeftJumpsToParent,
    CollapsingHeader,
    DrawLinesNone,
    DrawLinesFull,
    DrawLinesToNodes,
    NavLeftJumpsBackHere,
    SpanTextWidth,
  ]
  let _ : Array[@imgui.ComboFlag] = [
    PopupAlignLeft,
    HeightSmall,
    HeightRegular,
    HeightLarge,
    HeightLargest,
    NoArrowButton,
    NoPreview,
    WidthFitPreview,
  ]
  let _ : Array[@imgui.InputTextFlag] = [
    CharsDecimal,
    CharsHexadecimal,
    CharsUppercase,
    CharsNoBlank,
    AutoSelectAll,
    EnterReturnsTrue,
    CallbackCompletion,
    CallbackHistory,
    CallbackAlways,
    CallbackCharFilter,
    AllowTabInput,
    CtrlEnterForNewLine,
    NoHorizontalScroll,
    AlwaysOverwrite,
    ReadOnly,
    Password,
    NoUndoRedo,
    CharsScientific,
    CallbackResize,
    CallbackEdit,
    EscapeClearsAll,
    DisplayEmptyRefVal,
    ParseEmptyRefVal,
    ElideLeft,
    WordWrap,
  ]
  let _ : Array[@imgui.SliderFlag] = [
    Logarithmic,
    NoRoundToFormat,
    NoInput,
    WrapAround,
    ClampOnInput,
    ClampZeroRange,
    NoSpeedTweaks,
    ColorMarkers,
    AlwaysClamp,
  ]
  let _ : Array[@imgui.ColorEditFlag] = [
    NoAlpha,
    NoPicker,
    NoOptions,
    NoSmallPreview,
    NoInputs,
    NoTooltip,
    NoLabel,
    NoSidePreview,
    NoDragDrop,
    NoBorder,
    NoColorMarkers,
    AlphaOpaque,
    AlphaNoBg,
    AlphaPreviewHalf,
    AlphaBar,
    Hdr,
    DisplayRgb,
    DisplayHsv,
    DisplayHex,
    UInt8,
    FloatMode,
    PickerHueBar,
    PickerHueWheel,
    InputRgb,
    InputHsv,
    AlphaPreview,
  ]
  let _ : Array[@imgui.ItemFlag] = [
    NoTabStop,
    NoNav,
    NoNavDefaultFocus,
    ButtonRepeat,
    AutoClosePopups,
    AllowDuplicateId,
    Disabled,
  ]
  let _ : Array[@imgui.FocusedFlag] = [
    ChildWindows,
    RootWindow,
    AnyWindow,
    NoPopupHierarchy,
    RootAndChildWindows,
  ]
  let _ : Array[@imgui.HoveredFlag] = [
    ChildWindows,
    RootWindow,
    AnyWindow,
    NoPopupHierarchy,
    AllowWhenBlockedByPopup,
    AllowWhenBlockedByActiveItem,
    AllowWhenOverlappedByItem,
    AllowWhenOverlappedByWindow,
    AllowWhenDisabled,
    NoNavOverride,
    AllowWhenOverlapped,
    RectOnly,
    RootAndChildWindows,
    ForTooltip,
    Stationary,
    DelayNone,
    DelayShort,
    DelayNormal,
    NoSharedDelay,
  ]
  let _ : Array[@imgui.ButtonFlag] = [
    MouseButtonLeft,
    MouseButtonRight,
    MouseButtonMiddle,
    EnableNav,
    AllowOverlap,
  ]
  let _ : Array[@imgui.TableColumnFlag] = [
    Disabled,
    DefaultHide,
    DefaultSort,
    WidthStretch,
    WidthFixed,
    NoResize,
    NoReorder,
    NoHide,
    NoClip,
    NoSort,
    NoSortAscending,
    NoSortDescending,
    NoHeaderLabel,
    NoHeaderWidth,
    PreferSortAscending,
    PreferSortDescending,
    IndentEnable,
    IndentDisable,
    AngledHeader,
    IsEnabled,
    IsVisible,
    IsSorted,
    IsHovered,
  ]
  let _ : Array[@imgui.TableRowFlag] = [Headers]

  let _ : Array[@imgui.MouseButton] = [
    @imgui.MouseButton::left(),
    @imgui.MouseButton::right(),
    @imgui.MouseButton::middle(),
  ]
  let _ : Array[@imgui.Dir] = [
    @imgui.Dir::none(),
    @imgui.Dir::left(),
    @imgui.Dir::right(),
    @imgui.Dir::up(),
    @imgui.Dir::down(),
  ]
  let _ : Array[@imgui.TableBgTarget] = [
    @imgui.TableBgTarget::none(),
    @imgui.TableBgTarget::row_bg0(),
    @imgui.TableBgTarget::row_bg1(),
    @imgui.TableBgTarget::cell_bg(),
  ]
  let _ : Array[@imgui.Cond] = [
    @imgui.Cond::none(),
    @imgui.Cond::always(),
    @imgui.Cond::once(),
    @imgui.Cond::first_use_ever(),
    @imgui.Cond::appearing(),
  ]
  let _ : Array[@imgui.Color] = [
    Rgb(1, 2, 3),
    Rgba(1, 2, 3, 0.5),
    Hex("#112233"),
    White,
    Black,
    Transparent,
    Red,
    Green,
    Blue,
    Yellow,
    Cyan,
    Magenta,
    Gray,
  ]
  let _ : Array[@imgui.StyleSheet] = [
    Text(White),
    TextDisabled(Gray),
    Background(Hex("#112233")),
    HoveredBg(Cyan),
    ActiveBg(Blue),
    CollapsedBg(Hex("#101820")),
    SelectedBg(Cyan),
    DimmedBg(Gray),
    DimmedSelectedBg(Blue),
    DropTargetBg(Yellow),
    ScrollbarGrab(Gray),
    ScrollbarGrabHovered(Cyan),
    ScrollbarGrabActive(Blue),
    SliderGrab(Cyan),
    SliderGrabActive(Blue),
    ResizeGrip(Gray),
    ResizeGripHovered(Cyan),
    ResizeGripActive(Blue),
    BorderShadow(Black),
    Separator(Gray),
    SeparatorHovered(Cyan),
    SeparatorActive(Blue),
    CheckMark(Green),
    TabSelectedOverline(Cyan),
    TabDimmedSelectedOverline(Gray),
    PlotLines(Green),
    PlotLinesHovered(Cyan),
    PlotHistogram(Blue),
    PlotHistogramHovered(Yellow),
    TextLink(Green),
    TreeLines(Gray),
    DragDropTarget(Yellow),
    UnsavedMarker(Magenta),
    NavCursor(Cyan),
    NavWindowingHighlight(Yellow),
    NavWindowingDimBackground(Rgba(0, 0, 0, 0.35)),
    ModalWindowDimBackground(Rgba(0, 0, 0, 0.45)),
    InputTextCursor(White),
    Border(Gray),
    Alpha(0.85),
    DisabledAlpha(0.45),
    Rounding(5.0),
    BorderSize(1.0),
    IndentSpacing(18.0),
    ScrollbarSize(14.0),
    ScrollbarPadding(2.0),
    GrabMinSize(8.0),
    TabMinWidthBase(40.0),
    TabMinWidthShrink(20.0),
    TabBarBorderSize(1.0),
    TabBarOverlineSize(2.0),
    TableAngledHeadersAngle(0.6),
    TreeLinesSize(1.0),
    SeparatorSize(1.0),
    SeparatorTextBorderSize(1.0),
  ]
  ignore(@imgui.Vec4::new(1.0, 1.0, 1.0, 1.0))
  ignore(@imgui.Vec4::white())
  ignore(@imgui.Vec4::transparent())
}

///|
fn utf8(value : String) -> Bytes {
  @encoding/utf8.encode(value)
}
