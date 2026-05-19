///|
test "safe api requires a current context" {
  @imgui.clear_current_context()
  let result : Result[Unit, @imgui.ImGuiError] = try? @imgui.new_frame()
  @debug.assert_eq(result, Err(NoCurrentContext))
}

///|
test "safe api drives a Dear ImGui frame" {
  let context = @imgui.Context::create()
  defer context.destroy()
  try! @imgui.new_frame()
  try! @imgui.set_next_window_size(320.0, 240.0)
  @debug.assert_eq(try! @imgui.begin_window("Safe test"), true)
  try! @imgui.text("hello")
  ignore(try! @imgui.button("Run"))
  @debug.assert_eq(try! @imgui.checkbox("Enabled", true), {
    changed: false,
    checked: true,
  })
  @debug.assert_eq(try! @imgui.input_text("Name", "moonbit 你好"), {
    changed: false,
    truncated: false,
    value: "moonbit 你好",
  })
  try! @imgui.end_window()
  ignore(try! @imgui.render())
  @debug.assert_eq(@imgui.frame_count(), 1)
}
