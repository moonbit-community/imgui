///|
test "cocoa backend opens and closes a native window" {
  let options = @cocoa_opengl2.AppOptions::default()
    .title("Backend test")
    .size(320, 200)
  let window = try! @cocoa_opengl2.Window::create(options)
  @debug.assert_eq(window.should_close(), false)
  window.poll_events()
  @debug.assert_eq(window.should_close(), false)
  window.destroy()
  @debug.assert_eq(window.should_close(), true)
  let after_destroy : Result[Unit, @imgui.ImGuiError] = try? window.new_frame()
  @debug.assert_eq(after_destroy, Err(BackendWindowDestroyed("Backend test")))
  window.destroy()
}

///|
test "cocoa backend reports creation failures" {
  let first = try! @cocoa_opengl2.Window::create(
    @cocoa_opengl2.AppOptions::default().title("First backend test"),
  )
  let second : Result[@cocoa_opengl2.Window, @imgui.ImGuiError] = try? @cocoa_opengl2.Window::create(
    @cocoa_opengl2.AppOptions::default().title("Second backend test"),
  )
  match second {
    Err(BackendCreationFailed("Second backend test")) => ()
    _ => abort("expected second backend window creation to fail")
  }
  first.destroy()
}

///|
test "run executes one native frame" {
  let mut rendered = false
  let options = @cocoa_opengl2.AppOptions::default().max_frames(1)
  try! @cocoa_opengl2.run(
    () => {
      rendered = true
      if @imgui.begin_window("Backend run") {
        @imgui.text("frame")
      }
      @imgui.end_window()
    },
    options~,
  )
  @debug.assert_eq(rendered, true)
}
