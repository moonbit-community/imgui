# moonbit-community/imgui

`moonbit-community/imgui` provides native MoonBit bindings for the public Dear
ImGui API. The top-level package is the user-facing MoonBit API: it exposes
context lifecycle, common widgets, typed flags, and backend-friendly helpers
without leaking generated C pointer wrappers.

This checkout pins Dear ImGui 1.92.8 as a git submodule under
`raw/upstream/imgui` and pins the Dear Bindings generator as a git submodule
under `raw/upstream/dear_bindings`. It uses the official ImGui core plus
Cocoa/OpenGL2 and GLFW/OpenGL3 backends for native demos. The generated raw
package covers every public symbol emitted by
`dear_bindings` for the pinned `imgui.h`: defines, enum values, typedefs,
opaque structs, struct field accessors, and all 760 generated C functions. The
advanced generated safe package exposes 725 of those functions with context
checks for coverage validation and lower-level integrations. The top-level
`moonbit-community/imgui` package strips Dear ImGui's C namespace prefixes, so
application code uses names such as `@imgui.button` and
`@imgui.begin_window`. Exact C ABI names such as `im_gui_button` remain
available only in `raw/generated`.

Running `moon run examples/demo --target native` from this repository opens a
native macOS Cocoa window. `moon run examples/translated_demo --target native`
opens a larger MoonBit translation of the official demo patterns without
calling `ImGui_ShowDemoWindow` or upstream `imgui_demo.cpp`. On Ubuntu, install
GLFW and Mesa development packages, then run
`moon run examples/demo_glfw --target native`. The windows stay open until
closed.

Clone this repository with submodules, or initialize them before building:

```bash
git submodule update --init --recursive
```

## Packages

- `moonbit-community/imgui/raw`: low-level C ABI bridge, opaque handles, flags,
  and direct widget calls.
- `moonbit-community/imgui/raw/generated`: complete generated Dear Bindings
  surface for advanced users and generator validation.
- `moonbit-community/imgui/advanced`: generated safe wrappers over
  `raw/generated`. This package is for advanced users and may expose raw
  generated handle and pointer types.
- `moonbit-community/imgui`: context lifecycle and MoonBit-friendly widget
  helpers that raise `ImGuiError` when a current context is required.
- `moonbit-community/imgui/backend/cocoa_opengl2`: macOS Cocoa + OpenGL2
  lifecycle wrapper.
- `moonbit-community/imgui/backend/glfw_opengl3`: GLFW + OpenGL3 lifecycle
  wrapper for Ubuntu/Linux and Windows.
- `moonbit-community/imgui/examples/demo`: macOS native windowed demo.
- `moonbit-community/imgui/examples/demo_glfw`: GLFW + OpenGL3 native windowed
  demo.
- `moonbit-community/imgui/examples/translated_demo`: macOS native translated
  demo that exercises menus, widgets, inputs, selection, layout, popups,
  tables, draw lists, style data, and text from MoonBit binding calls.

## Example

```moonbit nocheck
let context = @imgui.Context::create()
defer context.destroy()

try! @imgui.new_frame()
if try! @imgui.begin_window("MoonBit Dear ImGui") {
  try! @imgui.text("Hello from MoonBit")
  ignore(try! @imgui.button("Run"))
}
try! @imgui.end_window()
ignore(try! @imgui.render())
```

## Backend Example

```moonbit nocheck
let options = @backend.AppOptions::default()
  .title("MoonBit Dear ImGui Demo")
  .size(960, 640)
  .max_frames(1)

try! @backend.run(() => {
  if @imgui.begin_window("Demo") {
    @imgui.text("Backend lifecycle")
  }
  @imgui.end_window()
}, options~)
```

## Generated Raw Example

```moonbit nocheck
let context = @generated.im_gui_create_context(@generated.null_im_font_atlas())
defer @generated.im_gui_destroy_context(context)
@generated.im_gui_set_current_context(context)

let io = @generated.im_gui_get_io()
let size = @generated.im_vec2_new(640.0, 480.0)
defer @generated.im_vec2_free(size)
@generated.im_gui_io_field_set_display_size(io, size)
@generated.im_gui_io_field_set_delta_time(io, 1.0 / 60.0)
ignore(@generated.im_font_atlas_build(@generated.im_gui_io_field_get_fonts(io)))

@generated.im_gui_new_frame()
@generated.with_cstring("Generated raw API", fn(title) {
  if @generated.im_gui_begin(title, @generated.null_bool_ptr(), 0) {
    @generated.with_cstring("Hello from raw/generated", fn(text) {
      @generated.im_gui_text_unformatted(text)
    })
  }
  @generated.im_gui_end()
})
@generated.im_gui_render()
```

## Advanced Generated Safe Example

```moonbit nocheck
let context = @imgui.Context::create()
defer context.destroy()

try! @imgui.new_frame()
if try! @imgui.begin_window("Generated safe API") {
  try! @advanced.text_unformatted("String arguments are converted safely")
  ignore(try! @advanced.button_generated("Generated button"))
}
try! @imgui.end_window()
try! @advanced.render_generated()
```

Executable packages that depend on a backend must currently repeat the native
link block because MoonBit does not propagate dependency linker settings.

For macOS Cocoa + OpenGL2:

```moonbit nocheck
options(
  link: {
    "native": {
      "cc": "cc",
      "cc-flags": "-fblocks -Wno-deprecated-declarations",
      "cc-link-flags": "-framework AppKit -framework OpenGL -framework GameController -lstdc++",
    },
  },
  "is-main": true,
)
```

For Ubuntu GLFW + OpenGL3:

```bash
sudo apt install build-essential pkg-config libglfw3-dev libgl1-mesa-dev
moon run examples/demo_glfw --target native
```

```moonbit nocheck
options(
  link: {
    "native": {
      "cc": "cc",
      "cc-flags": "-Wno-deprecated-declarations",
      "cc-link-flags": "-lglfw -lGL -ldl -lpthread -lstdc++",
    },
  },
  "is-main": true,
)
```

For Windows with MSYS2/MinGW GLFW + OpenGL3, install the matching GLFW package
for your toolchain and use the GLFW backend package. A typical MinGW link block
uses:

```moonbit nocheck
options(
  link: {
    "native": {
      "cc": "cc",
      "cc-flags": "-Wno-deprecated-declarations",
      "cc-link-flags": "-lglfw3 -lopengl32 -lgdi32 -limm32 -lshell32 -lstdc++",
    },
  },
  "is-main": true,
)
```

For automated framebuffer verification, set `MOONBIT_IMGUI_CAPTURE` to a PPM
path before running the demo:

```bash
MOONBIT_IMGUI_CAPTURE=/tmp/moonbit-imgui-frame.ppm \
  moon run examples/demo --target native
MOONBIT_IMGUI_CAPTURE=/tmp/moonbit-imgui-translated.ppm \
  moon run examples/translated_demo --target native
```

The bridge writes one rendered frame after the ImGui draw data becomes non-empty
and then closes the demo window.

## Validation

`moon check --target native` type-checks the full module without requiring
optional system GLFW headers or libraries. Full `moon test --target native`
also links the GLFW demo package, so it requires the Ubuntu or Windows GLFW
development setup above. On a machine without GLFW, validate the portable core
and macOS backend with:

```bash
moon test --target native raw
moon test --target native raw/generated
moon test --target native backend/cocoa_opengl2
MOONBIT_IMGUI_CAPTURE=/tmp/moonbit-imgui-frame.ppm \
  moon run examples/demo --target native
```

## Regeneration

The generator contract lives in `tools/generate_bindings.py`. With generated
`dear_bindings` metadata, run:

```bash
python3 tools/generate_bindings.py \
  --metadata raw/dear_bindings/dcimgui.json \
  --moonbit-out raw/generated/generated.mbt \
  --cpp-out raw/generated_bridge.cpp \
  --coverage-out raw/generated_coverage.md
```

The generated safe wrapper is derived from the same metadata:

```bash
python3 tools/generate_safe_wrappers.py \
  --metadata raw/dear_bindings/dcimgui.json \
  --safe-out advanced/safe_generated.mbt \
  --coverage-out safe_generated_coverage.md \
  --min-coverage 95
```

The generated Dear Bindings C ABI output lives under `raw/dear_bindings`.
Regenerate it with the pinned Dear Bindings submodule and pinned Dear ImGui
`imgui.h` before running the MoonBit generator after an upstream upgrade.

## Release Notes

- Only the native target is supported.
- The Cocoa backend is macOS-only and uses OpenGL2 because it has no external
  system package dependency on macOS.
- The GLFW backend targets Ubuntu/Linux and Windows with OpenGL3 and requires
  system GLFW/OpenGL development libraries.
- `imgui_internal.h` is intentionally out of scope for this package.
- Callback-heavy APIs are exposed in the generated raw layer as opaque function
  pointers; MoonBit callback thunks are not part of the safe generated wrapper
  yet.
- C varargs functions are routed through generated literal-text shims that call
  Dear Bindings unformatted helpers; `va_list` entry points remain raw-only.
- Optional `ImStr` helpers raise `RawBindingUnavailable` because `ImStr` is not
  present in the pinned `imgui.h` build.
- The generated raw package includes helper allocation functions for common
  pointer parameters such as `bool*`, `int*`, `float*`, `double*`, `size_t*`,
  `ImVec2*`, `ImVec4*`, `const char*`, `const char**`, and `void**`.
- The raw layer remains available for advanced users when the safe wrapper does
  not yet cover a public API.
- Dear ImGui source is MIT licensed; its submodule license is preserved at
  `raw/upstream/imgui/LICENSE.txt`.
- Dear Bindings is MIT licensed; its submodule license is preserved at
  `raw/upstream/dear_bindings/LICENSE.txt`, and the generated C ABI output
  keeps its license copy at `raw/dear_bindings/LICENSE.txt`.
