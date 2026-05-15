///|
fn main {
  let options = @backend.AppOptions::default()
    .title("MoonBit Dear ImGui Demo")
    .size(960, 640)
  match @imgui.bridge_mode() {
    HeadlessStub => {
      println("MoonBit Dear ImGui demo is running in headless stub mode.")
      println(
        "No native window will open until a platform backend is available.",
      )
      println(
        "Running one synthetic ImGui frame to validate the MoonBit API and FFI bridge.",
      )
    }
    DearBindings => println("Starting MoonBit Dear ImGui native window demo.")
    NativeCocoa => println("Starting MoonBit ImGui Cocoa window demo.")
  }
  @backend.run(
    () => {
      @imgui.set_next_window_size(
        420.0,
        280.0,
        cond=@raw.Cond::first_use_ever(),
      )
      if @imgui.begin_window("MoonBit Dear ImGui") {
        @imgui.text("Native MoonBit binding backed by Dear ImGui")
        @imgui.separator()
        ignore(@imgui.button("Button"))
        ignore(@imgui.checkbox("Enabled", true))
        ignore(@imgui.slider_float("Value", 0.5, 0.0, 1.0))
        if @imgui.begin_table("Status", 2, flags=@raw.TableFlags::borders()) {
          @imgui.table_next_row()
          ignore(@imgui.table_next_column())
          @imgui.text("Bridge")
          ignore(@imgui.table_next_column())
          match @imgui.bridge_mode() {
            HeadlessStub => @imgui.text("HeadlessStub")
            DearBindings => @imgui.text("DearBindings")
            NativeCocoa => @imgui.text("NativeCocoa")
          }
          @imgui.end_table()
        }
      }
      @imgui.end_window()
      @imgui.show_demo_window()
    },
    options~,
  ) catch {
    BackendCreationFailed(title) =>
      abort("imgui demo failed: could not create backend window '\{title}'")
    BackendWindowDestroyed(title) =>
      abort("imgui demo failed: backend window '\{title}' was destroyed")
    BackendFrameFailed(title) =>
      abort("imgui demo failed: could not start backend frame for '\{title}'")
    BackendRenderFailed(title) =>
      abort("imgui demo failed: could not render backend frame for '\{title}'")
    NoCurrentContext =>
      abort("imgui demo failed: no current Dear ImGui context")
  }
  match @imgui.bridge_mode() {
    HeadlessStub => println("Headless demo frame completed.")
    DearBindings => println("Native demo closed.")
    NativeCocoa => println("Native Cocoa demo closed.")
  }
}
