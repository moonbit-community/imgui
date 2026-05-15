# moonbit-community/imgui

`moonbit-community/imgui` provides native MoonBit bindings for the public Dear
ImGui API. The package is split into a generated raw layer, a generated safe
wrapper that covers 95.39% of the Dear Bindings functions, and a smaller
hand-written wrapper that is practical for application code.

This checkout vendors Dear ImGui 1.92.8 source under `raw/upstream/imgui` and
uses the official ImGui core plus the OSX and OpenGL2 backends for the native
demo on macOS. The generated raw package covers every public symbol emitted by
`dear_bindings` for the pinned `imgui.h`: defines, enum values, typedefs,
opaque structs, struct field accessors, and all 760 generated C functions. The
generated safe layer exposes 725 of those functions with context checks and
converts MoonBit UTF-16 `String` values to UTF-8 `const char*` inputs.
Overloads that take `const char*` begin/end ranges expose a single full MoonBit
`String` and pass a null end pointer to Dear ImGui.

Running `moon run imgui/examples/demo --target native` opens a native macOS
window and renders both the MoonBit sample window and the official Dear ImGui
demo window. The window stays open until closed.

## Packages

- `moonbit-community/imgui/raw`: low-level C ABI bridge, opaque handles, flags,
  and direct widget calls.
- `moonbit-community/imgui/raw/generated`: complete generated Dear Bindings
  surface for advanced users and generator validation.
- `moonbit-community/imgui`: context lifecycle, generated safe wrappers, and
  MoonBit-friendly widget helpers that raise `ImGuiError` when a current
  context is required.
- `moonbit-community/imgui/backend/cocoa_opengl2`: macOS Cocoa + OpenGL2
  lifecycle wrapper.
- `moonbit-community/imgui/examples/demo`: native windowed demo.

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
    @imgui.text("Cocoa + OpenGL2 lifecycle")
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

## Generated Safe Example

```moonbit nocheck
let context = @imgui.Context::create()
defer context.destroy()

try! @imgui.new_frame()
if try! @imgui.begin_window("Generated safe API") {
  try! @imgui.im_gui_text_unformatted("String arguments are converted safely")
  ignore(try! @imgui.im_gui_button("Generated button"))
}
try! @imgui.end_window()
try! @imgui.im_gui_render()
```

Executable packages that depend on this module must currently repeat the native
link block because MoonBit does not propagate dependency linker settings:

```moonbit nocheck
options(
  link: {
    "native": {
      "cc": "/usr/bin/cc",
      "cc-flags": "-fblocks -Wno-deprecated-declarations",
      "cc-link-flags": "-framework AppKit -framework OpenGL -framework GameController -lc++",
    },
  },
  "is-main": true,
)
```

For automated framebuffer verification, set `MOONBIT_IMGUI_CAPTURE` to a PPM
path before running the demo:

```bash
MOONBIT_IMGUI_CAPTURE=/tmp/moonbit-imgui-frame.ppm \
  moon run imgui/examples/demo --target native
```

The bridge writes one rendered frame after the ImGui draw data becomes non-empty
and then closes the demo window.

## Regeneration

The generator contract lives in `tools/generate_bindings.py`. With vendored
`dear_bindings` metadata, run:

```bash
python3 tools/generate_bindings.py \
  --metadata raw/upstream/dear_bindings/dcimgui.json \
  --moonbit-out raw/generated/generated.mbt \
  --cpp-out raw/generated_bridge.cpp \
  --coverage-out raw/generated_coverage.md
```

The generated safe wrapper is derived from the same metadata:

```bash
python3 tools/generate_safe_wrappers.py \
  --metadata raw/upstream/dear_bindings/dcimgui.json \
  --safe-out safe_generated.mbt \
  --coverage-out safe_generated_coverage.md \
  --min-coverage 95
```

The vendored Dear Bindings output lives under `raw/upstream/dear_bindings`.
Regenerate it from the pinned Dear ImGui `imgui.h` before running the MoonBit
generator after an upstream upgrade.

## Release Notes

- Only the native target is supported.
- The included native backend is macOS-only and currently uses OpenGL2 because
  it has no external system package dependency.
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
- Dear ImGui source is MIT licensed; the vendored license is preserved at
  `raw/upstream/imgui/LICENSE.txt`.
- Dear Bindings is MIT licensed; the vendored license is preserved at
  `raw/upstream/dear_bindings/LICENSE.txt`.
