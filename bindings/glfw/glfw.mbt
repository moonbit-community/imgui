///|
/// Opaque GLFW window handle.
#external
pub(all) type Window

///|
/// Opaque GLFW monitor handle.
#external
pub(all) type Monitor

///|
pub extern "C" fn Window::null() -> Window = "moonbit_imgui_null"

///|
#borrow(self)
pub extern "C" fn Window::is_null(self : Window) -> Bool = "moonbit_is_null"

///|
pub extern "C" fn Monitor::null() -> Monitor = "moonbit_imgui_null"

///|
#borrow(self)
pub extern "C" fn Monitor::is_null(self : Monitor) -> Bool = "moonbit_is_null"

///|
pub fn true_value() -> Int {
  1
}

///|
pub fn context_version_major() -> Int {
  0x00022002
}

///|
pub fn context_version_minor() -> Int {
  0x00022003
}

///|
pub fn opengl_forward_compat() -> Int {
  0x00022006
}

///|
pub fn opengl_profile() -> Int {
  0x00022008
}

///|
pub fn opengl_core_profile() -> Int {
  0x00032001
}

///|
pub fn iconified() -> Int {
  0x00020002
}

///|
pub fn visible() -> Int {
  0x00020004
}

///|
pub fn floating() -> Int {
  0x00020007
}

///|
pub extern "C" fn initialize() -> Bool = "glfwInit"

///|
pub extern "C" fn terminate() -> Unit = "glfwTerminate"

///|
pub extern "C" fn window_hint(hint : Int, value : Int) -> Unit = "glfwWindowHint"

///|
#borrow(title, monitor, share)
pub extern "C" fn create_window(
  width : Int,
  height : Int,
  title : Bytes,
  monitor : Monitor,
  share : Window,
) -> Window = "glfwCreateWindow"

///|
#borrow(window)
pub extern "C" fn destroy_window(window : Window) -> Unit = "glfwDestroyWindow"

///|
#borrow(window)
pub extern "C" fn set_window_pos(window : Window, x : Int, y : Int) -> Unit = "glfwSetWindowPos"

///|
#borrow(window)
pub extern "C" fn show_window(window : Window) -> Unit = "glfwShowWindow"

///|
#borrow(window)
pub extern "C" fn focus_window(window : Window) -> Unit = "glfwFocusWindow"

///|
#borrow(window)
pub extern "C" fn window_should_close(window : Window) -> Bool = "glfwWindowShouldClose"

///|
#borrow(window)
pub extern "C" fn get_window_attrib(window : Window, attrib : Int) -> Int = "glfwGetWindowAttrib"

///|
#borrow(window, width, height)
pub extern "C" fn get_framebuffer_size(
  window : Window,
  width : Ref[Int],
  height : Ref[Int],
) -> Unit = "glfwGetFramebufferSize"

///|
pub extern "C" fn poll_events() -> Unit = "glfwPollEvents"

///|
#borrow(window)
pub extern "C" fn make_context_current(window : Window) -> Unit = "glfwMakeContextCurrent"

///|
#borrow(window)
pub extern "C" fn swap_buffers(window : Window) -> Unit = "glfwSwapBuffers"

///|
pub extern "C" fn swap_interval(interval : Int) -> Unit = "glfwSwapInterval"

///|
#borrow(window)
pub extern "C" fn imgui_init_for_open_gl(
  window : Window,
  install_callbacks : Bool,
) -> Bool = "cImGui_ImplGlfw_InitForOpenGL"

///|
pub extern "C" fn imgui_shutdown() -> Unit = "cImGui_ImplGlfw_Shutdown"

///|
pub extern "C" fn imgui_new_frame() -> Unit = "cImGui_ImplGlfw_NewFrame"

///|
pub extern "C" fn sleep(milliseconds : Int) -> Unit = "cImGui_ImplGlfw_Sleep"
