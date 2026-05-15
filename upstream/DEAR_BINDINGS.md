# Dear ImGui upstream pin

This module is designed to generate the raw MoonBit bindings from
`dear_bindings` metadata and the Dear ImGui public API (`imgui.h`).

The native bridge vendors Dear ImGui 1.92.8 source under `raw/upstream/imgui`
and vendors the matching Dear Bindings C ABI under
`raw/upstream/dear_bindings`. The macOS demo uses Dear ImGui's official OSX
platform backend and OpenGL2 renderer backend.

Pinned upstream:

- Repository: `https://github.com/ocornut/imgui`
- Commit: `b2546a5c93090c70610046fe547b946ee3d8d986`
- Version: `1.92.8`
- Version number: `19281`

Pinned Dear Bindings:

- Repository: `https://github.com/dearimgui/dear_bindings`
- Commit: `c9ff64913915df41c0f4beef485b98a1c685eda5`
- Generated files: `dcimgui.h`, `dcimgui.cpp`, `dcimgui.json`

The generator consumes `dcimgui.json` and emits the raw MoonBit declarations,
generated ABI bridge, and coverage report. Regenerate bindings after each
upstream Dear ImGui upgrade.
