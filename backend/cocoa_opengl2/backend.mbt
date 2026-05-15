///|
/// Backend configuration for the Cocoa + OpenGL2 bridge.
pub(all) struct AppOptions {
  title : String
  width : Int
  height : Int
  glsl_version : String
  vsync : Bool
  max_frames : Int
} derive(Eq, Debug)

///|
/// Owned backend window.
pub(all) struct Window {
  mut raw : @raw.BackendWindow
  title : String
}

///|
/// Default backend options suitable for a desktop demo.
pub fn AppOptions::default() -> AppOptions {
  {
    title: "MoonBit Dear ImGui",
    width: 1280,
    height: 720,
    glsl_version: "#version 130",
    vsync: true,
    max_frames: 0,
  }
}

///|
/// Updates the window title.
pub fn AppOptions::title(self : AppOptions, title : String) -> AppOptions {
  { ..self, title, }
}

///|
/// Updates the initial window size.
pub fn AppOptions::size(
  self : AppOptions,
  width : Int,
  height : Int,
) -> AppOptions {
  { ..self, width, height }
}

///|
/// Updates the GLSL version string. The Cocoa + OpenGL2 backend keeps this for
/// API compatibility and ignores the value.
pub fn AppOptions::glsl_version(
  self : AppOptions,
  glsl_version : String,
) -> AppOptions {
  { ..self, glsl_version, }
}

///|
/// Enables or disables vertical sync.
pub fn AppOptions::vsync(self : AppOptions, vsync : Bool) -> AppOptions {
  { ..self, vsync, }
}

///|
/// Limits the render loop to a fixed frame count. Zero means backend-controlled.
pub fn AppOptions::max_frames(
  self : AppOptions,
  max_frames : Int,
) -> AppOptions {
  { ..self, max_frames, }
}

///|
/// Creates a backend window.
pub fn Window::create(options : AppOptions) -> Window raise @imgui.ImGuiError {
  guard options.width > 0 && options.height > 0 else {
    raise @imgui.BackendCreationFailed(options.title)
  }
  let raw_options : @raw.BackendOptions = {
    title: options.title,
    width: options.width,
    height: options.height,
    glsl_version: options.glsl_version,
    vsync: options.vsync,
  }
  let raw = @raw.backend_create_window(raw_options)
  guard !@raw.backend_window_is_null(raw) else {
    raise @imgui.BackendCreationFailed(options.title)
  }
  { raw, title: options.title }
}

///|
/// Returns the raw backend window handle for advanced users.
pub fn Window::raw(self : Window) -> @raw.BackendWindow {
  self.raw
}

///|
/// Returns whether the backend requested shutdown.
pub fn Window::should_close(self : Window) -> Bool {
  @raw.backend_window_is_null(self.raw) || @raw.backend_should_close(self.raw)
}

///|
/// Polls backend events.
pub fn Window::poll_events(self : Window) -> Unit {
  @raw.backend_poll_events(self.raw)
}

///|
/// Starts a backend frame.
pub fn Window::new_frame(self : Window) -> Unit raise @imgui.ImGuiError {
  guard !@raw.backend_window_is_null(self.raw) else {
    raise @imgui.BackendWindowDestroyed(self.title)
  }
  guard @raw.backend_new_frame(self.raw) else {
    raise @imgui.BackendFrameFailed(self.title)
  }
}

///|
/// Renders draw data through the backend.
pub fn Window::render(
  self : Window,
  draw_data : @raw.DrawData,
) -> Unit raise @imgui.ImGuiError {
  guard !@raw.backend_window_is_null(self.raw) else {
    raise @imgui.BackendWindowDestroyed(self.title)
  }
  guard @raw.backend_render(self.raw, draw_data) else {
    raise @imgui.BackendRenderFailed(self.title)
  }
}

///|
/// Destroys the backend window.
pub fn Window::destroy(self : Window) -> Unit {
  if !@raw.backend_window_is_null(self.raw) {
    @raw.backend_destroy_window(self.raw)
    self.raw = @raw.backend_null_window()
  }
}

///|
/// Runs an ImGui application with a Cocoa + OpenGL2 lifecycle.
pub fn run(
  render : () -> Unit raise @imgui.ImGuiError,
  options? : AppOptions = AppOptions::default(),
) -> Unit raise @imgui.ImGuiError {
  let context = @imgui.Context::create()
  defer context.destroy()
  let window = Window::create(options)
  defer window.destroy()
  let mut frames = 0
  while !window.should_close() {
    if options.max_frames > 0 && frames >= options.max_frames {
      break
    }
    window.poll_events()
    window.new_frame()
    render()
    let draw_data = @imgui.render()
    window.render(draw_data)
    frames += 1
  }
}
