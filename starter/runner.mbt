///|
/// Opens a GLFW/OpenGL3 native window and runs a Dear ImGui frame loop.
///
/// The callback receives the top-level MoonBit UI object for each frame. The
/// same API is intended for macOS, Ubuntu, and Windows when GLFW and an
/// OpenGL 3 capable driver are available to the native toolchain.
pub fn run_forever(
  title? : String = "MoonBit Dear ImGui",
  width? : Int = 1280,
  height? : Int = 720,
  x? : Int = 80,
  y? : Int = 60,
  floating? : Bool = false,
  vsync? : Bool = true,
  clear_color? : @imgui.Vec4 = @imgui.Vec4::rgba(0.08, 0.09, 0.10, 1.0),
  body : (@imgui.Ui) -> Unit raise @imgui.ImGuiError,
) -> Unit raise @imgui.ImGuiError {
  guard @glfw.initialize() else { abort("failed to initialize GLFW") }
  defer @glfw.terminate()

  @glfw.window_hint(@glfw.context_version_major(), 3)
  @glfw.window_hint(@glfw.context_version_minor(), 2)
  @glfw.window_hint(@glfw.opengl_profile(), @glfw.opengl_core_profile())
  @glfw.window_hint(@glfw.opengl_forward_compat(), @glfw.true_value())
  @glfw.window_hint(@glfw.visible(), @glfw.true_value())
  if floating {
    @glfw.window_hint(@glfw.floating(), @glfw.true_value())
  }

  let window = @glfw.create_window(
    width,
    height,
    utf8(title),
    @glfw.Monitor::null(),
    @glfw.Window::null(),
  )
  guard !window.is_null() else { abort("failed to create GLFW window") }
  defer @glfw.destroy_window(window)

  @glfw.set_window_pos(window, x, y)
  @glfw.show_window(window)
  @glfw.focus_window(window)
  @glfw.make_context_current(window)
  @glfw.swap_interval(if vsync { 1 } else { 0 })

  let context = @imgui.Context::create()
  defer context.destroy()

  @imgui.style().colors_dark()

  guard @glfw.imgui_init_for_open_gl(window, true) else {
    abort("failed to initialize Dear ImGui GLFW backend")
  }
  defer @glfw.imgui_shutdown()

  guard @opengl3.init_ex(utf8("#version 150")) else {
    abort("failed to initialize Dear ImGui OpenGL3 backend")
  }
  defer @opengl3.shutdown()

  while !@glfw.window_should_close(window) {
    @glfw.poll_events()
    if @glfw.get_window_attrib(window, @glfw.iconified()) != 0 {
      @glfw.sleep(10)
      continue
    }

    @opengl3.new_frame()
    @glfw.imgui_new_frame()
    @imgui.new_frame()
    body(@imgui.ui())
    let draw_data = @imgui.render()
    let framebuffer_width = Ref(0)
    let framebuffer_height = Ref(0)
    @glfw.get_framebuffer_size(window, framebuffer_width, framebuffer_height)
    @opengl3.viewport(0, 0, framebuffer_width.val, framebuffer_height.val)
    @opengl3.clear_color(
      clear_color.x,
      clear_color.y,
      clear_color.z,
      clear_color.w,
    )
    @opengl3.clear(@opengl3.color_buffer_bit())
    @opengl3.render_draw_data(draw_data)
    @glfw.swap_buffers(window)
  }
}

///|
fn utf8(value : String) -> Bytes {
  @encoding/utf8.encode(value)
}
