///|
struct DemoState {
  mut show_another : Bool
  mut enabled : Bool
  mut slider : Float
  mut counter : Int
  mut selected_row : Int
  mut show_metrics : Bool
}

///|
fn DemoState::new() -> DemoState {
  {
    show_another: false,
    enabled: true,
    slider: 0.42,
    counter: 0,
    selected_row: 1,
    show_metrics: true,
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
    980,
    680,
    utf8("MoonBit Dear ImGui GLFW/OpenGL3"),
    @glfw.Monitor::null(),
    @glfw.Window::null(),
  )
  guard !window.is_null() else { abort("failed to create GLFW window") }
  defer @glfw.destroy_window(window)

  @glfw.set_window_pos(window, 120, 90)
  @glfw.show_window(window)
  @glfw.focus_window(window)
  @glfw.make_context_current(window)
  @glfw.swap_interval(1)

  let context = @imgui.Context::create()
  defer context.destroy()

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
  if @imgui.begin_window(
      "MoonBit ImGui controls",
      flags=@imgui.WindowFlags::menu_bar(),
    ) {
    if @imgui.begin_menu_bar() {
      if @imgui.begin_menu("Actions") {
        if @imgui.menu_item("Increment counter") {
          state.counter = state.counter + 1
        }
        if @imgui.menu_item("Toggle details", selected=state.show_another) {
          state.show_another = !state.show_another
        }
        @imgui.end_menu()
      }
      @imgui.end_menu_bar()
    }

    @imgui.text("This window is rendered from MoonBit through Dear ImGui.")

    let another = @imgui.checkbox("Show another window", state.show_another)
    if another.changed {
      state.show_another = another.checked
    }

    let enabled = @imgui.checkbox("Enabled", state.enabled)
    if enabled.changed {
      state.enabled = enabled.checked
    }

    let metrics = @imgui.checkbox("Show live metrics", state.show_metrics)
    if metrics.changed {
      state.show_metrics = metrics.checked
    }

    let slider = @imgui.slider_float("Float value", state.slider, 0.0, 1.0)
    if slider.changed {
      state.slider = slider.value
    }

    if @imgui.button("Increment counter") {
      state.counter = state.counter + 1
    }
    @imgui.same_line()
    @imgui.text("counter = \{state.counter}")

    @imgui.separator()
    if @imgui.begin_tab_bar("main-tabs") {
      if @imgui.begin_tab_item("State") {
        @imgui.text("enabled = \{state.enabled}")
        @imgui.text("slider = \{state.slider}")
        @imgui.text("selected row = \{state.selected_row}")
        @imgui.end_tab_item()
      }
      if @imgui.begin_tab_item("Rows") {
        render_rows(state)
        @imgui.end_tab_item()
      }
      @imgui.end_tab_bar()
    }

    if state.show_metrics {
      @imgui.separator()
      @imgui.text("frame = \{@imgui.frame_count()}")
    }
  }
  @imgui.end_window()

  if state.show_another {
    if @imgui.begin_window("Another MoonBit window") {
      @imgui.text("This window can be toggled from the main controls.")
      if @imgui.button("Close") {
        state.show_another = false
      }
    }
    @imgui.end_window()
  }
}

///|
fn render_rows(state : DemoState) -> Unit raise @imgui.ImGuiError {
  if @imgui.begin_table(
      "interactive-table",
      2,
      flags=@imgui.TableFlags::borders().combine(@imgui.TableFlags::row_bg()),
    ) {
    render_row(state, 1, "First")
    render_row(state, 2, "Second")
    render_row(state, 3, "Third")
    @imgui.end_table()
  }
}

///|
fn render_row(
  state : DemoState,
  index : Int,
  label : String,
) -> Unit raise @imgui.ImGuiError {
  @imgui.table_next_row()
  ignore(@imgui.table_next_column())
  if @imgui.selectable(label, selected=state.selected_row == index) {
    state.selected_row = index
  }
  ignore(@imgui.table_next_column())
  @imgui.text("row \{index}")
}

///|
fn utf8(value : String) -> Bytes {
  @encoding/utf8.encode(value)
}
