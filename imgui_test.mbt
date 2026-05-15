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

///|
test "safe generated wrapper coverage stays above 95 percent" {
  @debug.assert_eq(@imgui.safe_generated_total_symbols(), 760)
  @debug.assert_eq(@imgui.safe_generated_bound_symbols(), 725)
  @debug.assert_eq(@imgui.safe_generated_coverage_percent() >= 95.0, true)
}

///|
test "safe generated wrappers require a current context" {
  @imgui.clear_current_context()
  let result : Result[Unit, @imgui.ImGuiError] = try? @imgui.im_gui_text_unformatted(
    "missing context",
  )
  @debug.assert_eq(result, Err(NoCurrentContext))
}

///|
test "safe generated wrappers drive a Dear ImGui frame" {
  let context = @imgui.Context::create()
  defer context.destroy()
  try! @imgui.new_frame()
  @debug.assert_eq(try! @imgui.begin_window("Safe generated test"), true)
  try! @imgui.im_gui_text_unformatted("hello from safe generated")
  try! @imgui.im_gui_text_unformatted_ex("range wrapper uses full string")
  try! @imgui.im_gui_text("literal %s stays literal")
  try! @imgui.im_gui_label_text("Label", "literal %s stays literal")
  try! @imgui.im_gui_bullet_text("bullet %s stays literal")
  try! @imgui.im_gui_push_id_str("generated-id")
  try! @imgui.im_gui_pop_id()
  ignore(try! @imgui.im_gui_button("Generated button"))
  try! @imgui.end_window()
  try! @imgui.im_gui_render()
  @debug.assert_eq(@imgui.frame_count(), 1)
}
