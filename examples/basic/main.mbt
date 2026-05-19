///|
fn main {
  println("Dear ImGui version: \{@imgui.version_number()}")
  println("Has current context before create: \{@imgui.has_current_context()}")

  let context = @imgui.Context::create()
  defer context.destroy()
  println("Has current context: \{@imgui.has_current_context()}")

  @imgui.clear_current_context()
  println("Has current context after clear: \{@imgui.has_current_context()}")
}
