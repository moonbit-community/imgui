# Dear ImGui upstream pin

This module is designed to generate the raw MoonBit bindings from
`dear_bindings` metadata and the Dear ImGui public API (`imgui.h`).

The native bridge pins Dear ImGui 1.92.8 source as a git submodule under
`raw/upstream/imgui` and pins the Dear Bindings generator as a git submodule
under `raw/upstream/dear_bindings`. The matching Dear Bindings C ABI output
lives under `raw/dear_bindings`. The macOS demo uses Dear ImGui's official OSX
platform backend and OpenGL2 renderer backend through package-local adapted
backend sources.

Pinned upstream:

- Repository: `https://github.com/ocornut/imgui`
- Commit: `8936b58fe26e8c3da834b8f60b06511d537b4c63`
- Version: `1.92.8`
- Version number: `19281`

Pinned Dear Bindings:

- Repository: `https://github.com/dearimgui/dear_bindings`
- Commit: `c9ff64913915df41c0f4beef485b98a1c685eda5`
- Generator commit: `c9ff64913915df41c0f4beef485b98a1c685eda5`
- Generated files: `raw/dear_bindings/dcimgui.h`, `raw/dear_bindings/dcimgui.cpp`, `raw/dear_bindings/dcimgui.json`

The generator consumes `dcimgui.json` and emits the raw MoonBit declarations,
generated ABI bridge, and coverage report. Regenerate bindings after each
upstream Dear ImGui upgrade.
