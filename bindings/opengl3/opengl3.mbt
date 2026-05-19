///|
/// Initializes the Dear ImGui OpenGL3 renderer backend with the default GLSL
/// version.
pub extern "C" fn initialize() -> Bool = "cImGui_ImplOpenGL3_Init"

///|
/// Initializes the Dear ImGui OpenGL3 renderer backend with an explicit GLSL
/// version string, such as `#version 150`.
#borrow(glsl_version)
pub extern "C" fn init_ex(glsl_version : Bytes) -> Bool = "cImGui_ImplOpenGL3_InitEx"

///|
/// Shuts down the Dear ImGui OpenGL3 renderer backend.
pub extern "C" fn shutdown() -> Unit = "cImGui_ImplOpenGL3_Shutdown"

///|
/// Starts a new OpenGL3 renderer backend frame.
pub extern "C" fn new_frame() -> Unit = "cImGui_ImplOpenGL3_NewFrame"

///|
pub fn color_buffer_bit() -> UInt {
  0x00004000U
}

///|
pub extern "C" fn viewport(x : Int, y : Int, width : Int, height : Int) -> Unit = "glViewport"

///|
pub extern "C" fn clear_color(
  red : Float,
  green : Float,
  blue : Float,
  alpha : Float,
) -> Unit = "glClearColor"

///|
pub extern "C" fn clear(mask : UInt) -> Unit = "glClear"

///|
/// Renders Dear ImGui draw data with the OpenGL3 renderer backend.
#borrow(draw_data)
pub extern "C" fn render_draw_data(draw_data : @bindings.ImDrawData) -> Unit = "cImGui_ImplOpenGL3_RenderDrawData"

///|
pub extern "C" fn create_device_objects() -> Bool = "cImGui_ImplOpenGL3_CreateDeviceObjects"

///|
pub extern "C" fn destroy_device_objects() -> Unit = "cImGui_ImplOpenGL3_DestroyDeviceObjects"

///|
#borrow(texture)
pub extern "C" fn update_texture(texture : @bindings.ImTextureData) -> Unit = "cImGui_ImplOpenGL3_UpdateTexture"
