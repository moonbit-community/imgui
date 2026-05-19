///|
fn main {
  println("Dear ImGui version: \{@imgui.dear_imgui_version_number()}")

  let null_context = @bindings.ImGuiContext::null()
  println("Null context handle: \{null_context.is_null()}")

  let context = @imgui.Context::create()
  defer context.destroy()
  println("Created context: \{!context.raw().is_null()}")
  println("Has current context: \{@imgui.has_current_context()}")

  @imgui.clear_current_context()
  println("Has current context after clear: \{@imgui.has_current_context()}")
}
