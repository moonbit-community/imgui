///|
test "safe api requires a current context" {
  @imgui.clear_current_context()
  let result : Result[Unit, @imgui.ImGuiError] = try? @imgui.new_frame()
  @debug.assert_eq(result, Err(NoCurrentContext))
}

///|
test "callback api requires a current context" {
  @imgui.clear_current_context()
  let result : Result[Unit, @imgui.ImGuiError] = try? (@imgui.ui().window(
    "Missing context",
  ) <| _ => { () })
  @debug.assert_eq(result, Err(NoCurrentContext))
}

///|
test "context lifecycle" {
  let context = @imgui.Context::create()
  @debug.assert_eq(@imgui.has_current_context(), true)
  context.destroy()
  @imgui.clear_current_context()
  @debug.assert_eq(@imgui.has_current_context(), false)
}

///|
test "io input event api" {
  let context = @imgui.Context::create()
  let io = try! @imgui.io()
  io.set_app_accepting_events(true)
  io.add_focus_event(true)
  io.add_key_event(A, true)
  io.add_key_event(A, false)
  io.add_key_analog_event(GamepadL2, true, 0.5)
  io.set_key_event_native_data(A, 65, 4)
  io.add_mouse_source_event(Mouse)
  io.add_mouse_pos_event(12.0, 24.0)
  io.add_mouse_button_event(@imgui.MouseButton::left(), true)
  io.add_mouse_button_event(@imgui.MouseButton::left(), false)
  io.add_mouse_wheel_event(0.0, 1.0)
  io.add_input_character(0x41U)
  io.add_input_character_utf16(0x03BBU)
  io.add_input_text("MoonBit")
  io.clear_events_queue()
  io.clear_input_keys()
  io.clear_input_mouse()
  context.destroy()
  @imgui.clear_current_context()
}
