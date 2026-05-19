# moonbit-community/imgui

Native MoonBit bindings for Dear ImGui.

This repository intentionally exposes two library packages:

- `moonbit-community/imgui/bindings`: generated, mechanical extern bindings for
  the C API emitted by `dear_bindings`.
- `moonbit-community/imgui`: a small user-facing wrapper built on top of
  `bindings`.

`bindings` does not contain hand-written C, C++, or MoonBit helper code. It is
generated from `bindings/dear_bindings/dcimgui.json` and follows MoonBit native
ABI rules directly: `Bytes` for non-null UTF-8 `char*`, `Ref[T]` for non-null
primitive `T*`, `Option[Ref[T]]` for nullable primitive `T*`, and direct
`#external` handle types for C pointers represented by external types. The
generated runtime source only provides a null external handle constructor used
by `T::null()`.

The generated Dear Bindings C API output is kept in
`bindings/dear_bindings/`. Dear ImGui and the Dear Bindings generator are pinned
as git submodules under `bindings/upstream/`.

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

## Packages

### `moonbit-community/imgui/bindings`

Generated direct extern declarations for the Dear Bindings C API. The package
also links the generated `dcimgui.cpp` file and upstream Dear ImGui source
files. Unsupported ABI shapes are reported in
`bindings/generated_coverage.md` instead of being patched with custom C++ glue.

### `moonbit-community/imgui`

User-facing convenience API with context lifecycle, common widgets, basic
bitflag wrappers, and context checks.

## Build

Initialize submodules before building:

```bash
git submodule update --init --recursive
```

Check the module:

```bash
moon check --target native
```

Run tests:

```bash
moon test --target native
```

Run the basic executable example:

```bash
moon run examples/basic --target native
```

## Regeneration

Regenerate the MoonBit extern declarations after updating
`bindings/dear_bindings/dcimgui.json`:

```bash
python3 tools/generate_bindings.py \
  --metadata bindings/dear_bindings/dcimgui.json \
  --moonbit-out bindings/generated.mbt \
  --coverage-out bindings/generated_coverage.md \
  --c-out bindings/generated_runtime.cpp
```

## Scope

- `imgui.h` is in scope.
- `imgui_internal.h` is out of scope.
- C varargs and C++ struct-by-value returns are not ABI-direct with the supplied
  MoonBit ABI and are listed as unsupported in the generated coverage report.
- No backend package is included. Applications can bind or provide their own
  platform and renderer integration on top of `imgui/bindings`.

Dear ImGui source is MIT licensed. Dear Bindings is MIT licensed. The MoonBit
wrapper code in this repository is Apache-2.0 licensed.
