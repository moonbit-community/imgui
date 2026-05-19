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
    @opengl3.render_draw_data(draw_data.raw())
    @glfw.swap_buffers(window)
  }
}

///|
fn render_ui(state : DemoState) -> Unit raise @imgui.ImGuiError {
  let ui = @imgui.ui()
  ui.window("MoonBit ImGui controls", flags=@imgui.WindowFlags::menu_bar()) <| ui => {
    ui.menu_bar() <| ui => {
      ui.menu_item("Increment counter") <| () => {
        state.counter = state.counter + 1
      }
      ui.menu_item("Toggle details", selected=state.show_another) <| () => {
        state.show_another = !state.show_another
      }
    }

    ui.text("This window is rendered from MoonBit through Dear ImGui.")

    ui.checkbox("Show another window", state.show_another) <| value => {
      state.show_another = value
    }

    ui.checkbox("Enabled", state.enabled) <| value => { state.enabled = value }

    ui.checkbox("Show live metrics", state.show_metrics) <| value => {
      state.show_metrics = value
    }

    ui.slider_float("Float value", state.slider, 0.0, 1.0) <| value => {
      state.slider = value
    }

    ui.button("Increment counter") <| () => {
      state.counter = state.counter + 1
    }
    ui.same_line()
    ui.text("counter = \{state.counter}")

    ui.separator()
    ui.tab_bar("main-tabs") <| ui => {
      ui.tab_item("State") <| ui => {
        ui.text("enabled = \{state.enabled}")
        ui.text("slider = \{state.slider}")
        ui.text("selected row = \{state.selected_row}")
      }
      ui.tab_item("Rows") <| ui => { render_rows(ui, state) }
    }

    if state.show_metrics {
      ui.separator()
      ui.text("frame = \{@imgui.frame_count()}")
    }
  }

  if state.show_another {
    ui.window("Another MoonBit window") <| ui => {
      ui.text("This window can be toggled from the main controls.")
      ui.button("Close") <| () => { state.show_another = false }
    }
  }
}

///|
fn render_rows(
  ui : @imgui.TabItemUi,
  state : DemoState,
) -> Unit raise @imgui.ImGuiError {
  ui.table(
    "interactive-table",
    2,
    flags=@imgui.TableFlags::borders().combine(@imgui.TableFlags::row_bg()),
  ) <| ui => {
    render_row(ui, state, 1, "First")
    render_row(ui, state, 2, "Second")
    render_row(ui, state, 3, "Third")
  }
}

///|
fn render_row(
  ui : @imgui.TableUi,
  state : DemoState,
  index : Int,
  label : String,
) -> Unit raise @imgui.ImGuiError {
  ui.next_row()
  ignore(ui.next_column())
  if ui.selectable(label, selected=state.selected_row == index) {
    state.selected_row = index
  }
  ignore(ui.next_column())
  ui.text("row \{index}")
}

///|
fn utf8(value : String) -> Bytes {
  @encoding/utf8.encode(value)
}
