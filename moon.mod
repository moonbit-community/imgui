name = "moonbit-community/imgui"

version = "0.1.0"

readme = "README.mbt.md"

repository = "https://github.com/moonbit-community/imgui"

license = "Apache-2.0 AND MIT"

keywords = [ "imgui", "dear-imgui", "gui", "native", "ffi" ]

description = "Native MoonBit bindings for Dear ImGui public APIs"

preferred_target = "native"

options(
  "--moonbit-unstable-prebuild": "tools/prebuild_config.py",
)
