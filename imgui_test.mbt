///|
test "safe api requires a current context" {
  @imgui.clear_current_context()
  let result : Result[Unit, @imgui.ImGuiError] = try? @imgui.new_frame()
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
