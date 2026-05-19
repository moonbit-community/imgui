# moonbit-community/imgui

MoonBit bindings for Dear ImGui on the native backend.

The top-level `moonbit-community/imgui` package provides a scoped API for
building immediate-mode UI from MoonBit. It is designed for application code:
windows, menus, tabs, popups, tables, and widgets are used through trailing
callbacks, and matching Dear ImGui scope close calls are handled automatically.

## Example

```moonbit nocheck
let context = @imgui.Context::create()
defer context.destroy()

fn render_ui(state : State) -> Unit raise @imgui.ImGuiError {
  let ui = @imgui.ui()
  ui.window("MoonBit Dear ImGui", flags=@imgui.WindowFlags::menu_bar()) <| ui => {
    ui.menu_bar() <| ui => {
      ui.menu_item("Increment counter") <| () => {
        state.counter = state.counter + 1
      }
    }

    ui.text("Hello from MoonBit")
    ui.checkbox("Enabled", state.enabled) <| value => {
      state.enabled = value
    }
    ui.slider_float("Value", state.value, 0.0, 1.0) <| value => {
      state.value = value
    }
    ui.button("Run") <| () => {
      state.counter = state.counter + 1
    }
  }
}

try! @imgui.new_frame()
try! render_ui(state)
ignore(try! @imgui.render())
```

## Scoped UI

- `ui.window(...) <| ui => { ... }` opens a window and closes it automatically.
- `ui.menu_bar(...)`, `ui.tab_bar(...)`, `ui.table(...)`, `ui.popup(...)`,
  `ui.popup_modal(...)`, `ui.tooltip(...)`, `ui.combo(...)`, `ui.group(...)`,
  `ui.disabled(...)`, and `ui.tree_node(...)` close their scopes automatically.
- Widgets with values pass the updated value directly to the callback:
  `checkbox(...) <| value => { ... }`, `slider_float(...) <| value => { ... }`,
  `input_text(...) <| value => { ... }`, and `color_edit4(...) <| value => { ... }`.
- Buttons and menu items run their callback only when activated.
- Flags are exposed as typed bitsets such as `WindowFlags`, `TableFlags`,
  `InputTextFlags`, `SliderFlags`, and `ColorEditFlags`.

## Packages

- `moonbit-community/imgui`: user-facing API.
- `moonbit-community/imgui/bindings/glfw`: GLFW platform backend bindings.
- `moonbit-community/imgui/bindings/opengl3`: OpenGL3 renderer backend bindings.

The low-level generated binding package is available as
`moonbit-community/imgui/bindings` for advanced users who need direct access to
Dear ImGui C API symbols.

## Run The Window Example

Initialize submodules first:

```bash
git submodule update --init --recursive
```

Install GLFW. On macOS with Homebrew:

```bash
brew install glfw
```

Then run the GLFW/OpenGL3 example:

```bash
moon run examples/glfw_opengl3 --target native
```

The example opens a native window and renders MoonBit-authored interactive UI:
checkboxes, sliders, drag controls, text inputs, color editors, popups, a modal,
menus, tabs, tables, and a secondary window.

## Validate

```bash
moon check --target native
moon test --target native
```

## Design Notes

Binding generation, ABI rules, and package boundary details are documented in
`bindings/design.md`.

Dear ImGui source is MIT licensed. Dear Bindings is MIT licensed. The MoonBit
wrapper code in this repository is Apache-2.0 licensed.
