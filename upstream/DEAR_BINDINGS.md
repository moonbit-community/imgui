# Dear ImGui upstream pin

This module is designed to generate the MoonBit `imgui/bindings` package from
`dear_bindings` metadata and the Dear ImGui public API (`imgui.h`).

Dear ImGui 1.92.8 source is pinned as a git submodule under
`bindings/upstream/imgui`. The Dear Bindings generator is pinned as a git
submodule under `bindings/upstream/dear_bindings`. The matching Dear Bindings C
ABI output lives under `bindings/dear_bindings`.

Pinned upstream:

- Repository: `https://github.com/ocornut/imgui`
- Commit: `8936b58fe26e8c3da834b8f60b06511d537b4c63`
- Version: `1.92.8`
- Version number: `19281`

Pinned Dear Bindings:

- Repository: `https://github.com/dearimgui/dear_bindings`
- Commit: `c9ff64913915df41c0f4beef485b98a1c685eda5`
- Generator commit: `c9ff64913915df41c0f4beef485b98a1c685eda5`
- Generated files: `bindings/dear_bindings/dcimgui.h`, `bindings/dear_bindings/dcimgui.cpp`, `bindings/dear_bindings/dcimgui.json`

The generator consumes `dcimgui.json` and emits direct MoonBit extern
declarations, the generated null-handle C support file, and a coverage report.
Regenerate bindings after each upstream Dear ImGui upgrade.
