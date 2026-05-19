///|
test "safe generated wrapper coverage stays above 95 percent" {
  @debug.assert_eq(safe_generated_total_symbols(), 760)
  @debug.assert_eq(safe_generated_bound_symbols(), 725)
  @debug.assert_eq(safe_generated_coverage_percent() >= 95.0, true)
}

///|
test "safe generated wrappers require a current context" {
  @imgui.clear_current_context()
  let result : Result[Unit, @imgui.ImGuiError] = try? text_unformatted(
    "missing context",
  )
  @debug.assert_eq(result, Err(@imgui.NoCurrentContext))
}

///|
test "safe generated wrappers drive a Dear ImGui frame" {
  let context = @imgui.Context::create()
  defer context.destroy()
  try! @imgui.new_frame()
  @debug.assert_eq(try! @imgui.begin_window("Safe generated test"), true)
  try! text_unformatted("hello from safe generated")
  try! text_unformatted_ex("range wrapper uses full string")
  try! text_generated("literal %s stays literal")
  try! label_text("Label", "literal %s stays literal")
  try! bullet_text("bullet %s stays literal")
  try! push_id_str("generated-id")
  try! pop_id()
  ignore(try! button_generated("Generated button"))
  try! @imgui.end_window()
  ignore(try! @imgui.render())
  @debug.assert_eq(@imgui.frame_count(), 1)
}
