# moonbit-community/imgui

MoonBit bindings for Dear ImGui on the native backend.

The top-level `moonbit-community/imgui` package provides a scoped API for
building immediate-mode UI from MoonBit. It is designed for application code:
windows, menus, tabs, popups, tables, and widgets are used through trailing
callbacks, and matching Dear ImGui scope close calls are handled automatically.

## Example

```moonbit nocheck
fn main {
  let state = State::new()
  @starter.run_forever(title="MoonBit Dear ImGui") <| ui => {
    ui.window("MoonBit Dear ImGui", flags=[MenuBar], style=[
      Rounding(6.0),
      Text(White),
    ]) <| ui => {
      ui.menu_bar() <| ui => {
        ui.menu_item("Increment counter") <| () => {
          state.counter = state.counter + 1
        }
      }

      ui.text("Hello from MoonBit")
      ui.checkbox("Enabled", state.enabled) <| value => { state.enabled = value }
      ui.slider_float("Value", state.value, 0.0, 1.0) <| value => {
        state.value = value
      }
      ui.button("Run", style=[
        Background(Blue),
        HoveredBg(Cyan),
        ActiveBg(Green),
        Rounding(4.0),
      ]) <| () => {
        state.counter = state.counter + 1
      }
    }
  }
}
```

## Scoped UI

- `ui.window(...) <| ui => { ... }` opens a window and closes it automatically.
- `ui.main_menu_bar(...)`, `ui.menu_bar(...)`, `ui.tab_bar(...)`,
  `ui.table(...)`, `ui.popup(...)`, `ui.popup_modal(...)`,
  `ui.popup_context_item(...)`, `ui.tooltip(...)`, `ui.item_tooltip(...)`,
  `ui.combo(...)`, `ui.group(...)`, `ui.disabled(...)`, `ui.with_id(...)`,
  and `ui.tree_node(...)` close their scopes automatically.
- Widgets with values pass the updated value directly to the callback:
  `checkbox(...) <| value => { ... }`, `slider_float4(...) <| value => { ... }`,
  `drag_int_range2(...) <| value => { ... }`, `input_text(...) <| value => { ... }`,
  and `color_edit4(...) <| value => { ... }`.
- Buttons and menu items run their callback only when activated.
- Composable flags are passed as enum arrays, for example
  `flags=[@imgui.WindowFlag::MenuBar, @imgui.WindowFlag::NoSavedSettings]`.
- Scoped style sheets are passed as enum arrays, for example
  `style=[Text(White), Background(Hex("#223344")), SelectedBg(Cyan), SliderGrab(Blue), TextLink(Green), Rounding(6.0)]`.

## Packages

- `moonbit-community/imgui`: user-facing API.
- `moonbit-community/imgui/starter`: one-function GLFW/OpenGL3 window starter.

Low-level packages are available for advanced users who need direct backend or
generated C API access:

- `moonbit-community/imgui/bindings`: generated Dear ImGui C API bindings.
- `moonbit-community/imgui/bindings/glfw`: GLFW platform backend bindings.
- `moonbit-community/imgui/bindings/opengl3`: OpenGL3 renderer backend bindings.

## Custom Backends

Applications may provide their own window and renderer backend. A custom
backend should create a context, queue input through `@imgui.io()`, start a new
frame, render the MoonBit UI, and consume the returned draw data:

```moonbit nocheck
let io = try! @imgui.io()
io.add_focus_event(true)
io.add_mouse_pos_event(x, y)
io.add_mouse_button_event(@imgui.MouseButton::left(), down)
io.add_mouse_wheel_event(wheel_x, wheel_y)
io.add_key_event(A, down)
io.add_input_text(text)

try! @imgui.new_frame()
try! render_ui(state)
let draw_data = try! @imgui.render()
renderer.render(draw_data)
```

## Run The Window Example

Initialize submodules first:

```bash
git submodule update --init --recursive
```

Install GLFW. The starter API is the same across platforms, but native window
support depends on the host C/C++ toolchain and system libraries. The current
starter has been smoke-tested on macOS. Ubuntu, native Windows, and MSYS2 MinGW
are configured by the module-level `--moonbit-unstable-prebuild` script, but
should be treated as expected support until they are validated on those hosts.

macOS with Homebrew:

```bash
brew install glfw
```

Ubuntu:

```bash
sudo apt install libglfw3-dev libgl1-mesa-dev
```

Windows with MSYS2 MinGW:

```bash
pacman -S mingw-w64-x86_64-python mingw-w64-x86_64-glfw
```

Native Windows with Visual Studio Build Tools:

1. Open a Developer PowerShell or Developer Command Prompt so `cl` is on `PATH`.
2. Install Python so the prebuild config script can run.
3. Make GLFW available to the linker. Either set `GLFW_LIB_DIR` to the directory
   containing `glfw3.lib`, or set `VCPKG_ROOT` after installing GLFW with vcpkg.

The native Windows script branch emits MSVC-style flags and links against
`glfw3.lib`, `opengl32.lib`, `gdi32.lib`, `user32.lib`, and `shell32.lib`.

The prebuild config script is a Python script, so a Python runtime must be
available to `moon` when building the starter or the window example.

Then run the GLFW/OpenGL3 example:

```bash
moon run examples/glfw_opengl3 --target native
```

The example opens a native window and renders MoonBit-authored interactive UI:
checkboxes, scalar and multi-component sliders, drag controls, text inputs,
color editors, popups, a modal, context menus, menus, tabs, tables, columns,
item/window state queries, and a secondary window.

The module-level `--moonbit-unstable-prebuild` script emits native link
configuration from the host toolchain. This keeps platform-specific flags out
of examples and user code.

## Validate

```bash
moon check --target native
moon test --target native
```

Dear ImGui source is MIT licensed. Dear Bindings is MIT licensed. The MoonBit
wrapper code in this repository is Apache-2.0 licensed.
