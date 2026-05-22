#!/usr/bin/env python3
"""Emit native link configuration for the Dear ImGui MoonBit module."""

from __future__ import annotations

import json
import os
import platform
import shlex
import shutil
import subprocess
import sys


def pkg_config(name: str) -> list[str] | None:
    if shutil.which("pkg-config") is None:
        return None
    exists = subprocess.run(
        ["pkg-config", "--exists", name],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
        check=False,
    )
    if exists.returncode != 0:
        return None
    result = subprocess.run(
        ["pkg-config", "--libs", name],
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
        text=True,
        check=True,
    )
    return shlex.split(result.stdout)


def system_name() -> str:
    env_os = os.environ.get("OS", "").lower()
    if env_os.startswith("windows"):
        return "windows"
    name = platform.system().lower()
    if name.startswith("darwin"):
        return "darwin"
    if name.startswith("windows") or name.startswith("msys") or name.startswith("mingw"):
        return "windows"
    return name


def quote_flags(flags: list[str]) -> str:
    return " ".join(shlex.quote(flag) for flag in flags)


def toolchain_name() -> str:
    if system_name() != "windows":
        return "gnu"
    if os.environ.get("MSYSTEM"):
        return "gnu"
    cc = os.environ.get("CC", "")
    cxx = os.environ.get("CXX", "")
    configured = f"{cc} {cxx}".lower()
    if "clang-cl" in configured or configured.endswith(" cl") or configured.endswith(" cl.exe"):
        return "msvc"
    if shutil.which("cl") is not None or shutil.which("clang-cl") is not None:
        return "msvc"
    return "gnu"


def include_flag(path: str) -> str:
    if toolchain_name() == "msvc":
        return f"/I{path}"
    return f"-I{path}"


def stub_flags(include_dirs: list[str]) -> list[str]:
    includes = [include_flag(path) for path in include_dirs]
    if toolchain_name() == "msvc":
        return [
            "/EHsc-",
            "/GR-",
            "/wd4244",
            "/wd4267",
            "/wd4819",
            "/wd4996",
            *includes,
        ]
    return [
        "-fno-exceptions",
        "-fno-rtti",
        "-fno-threadsafe-statics",
        "-Wno-deprecated-declarations",
        *includes,
    ]


def glfw_flags() -> list[str]:
    configured = pkg_config("glfw3")
    if configured is not None:
        return configured
    match system_name():
        case "darwin":
            return ["-L/opt/homebrew/lib", "-L/usr/local/lib", "-lglfw"]
        case "windows":
            if toolchain_name() == "msvc":
                flags = []
                glfw_lib_dir = os.environ.get("GLFW_LIB_DIR")
                if glfw_lib_dir:
                    flags.append(f"/LIBPATH:{glfw_lib_dir}")
                else:
                    vcpkg_root = os.environ.get("VCPKG_ROOT")
                    if vcpkg_root:
                        triplet = os.environ.get("VCPKG_DEFAULT_TRIPLET", "x64-windows")
                        lib_dir = os.path.join(vcpkg_root, "installed", triplet, "lib")
                        flags.append(f"/LIBPATH:{lib_dir}")
                return [
                    *flags,
                    "glfw3.lib",
                    "opengl32.lib",
                    "gdi32.lib",
                    "user32.lib",
                    "shell32.lib",
                ]
            return ["-lglfw3", "-lopengl32", "-lgdi32", "-luser32", "-lshell32"]
        case _:
            return ["-lglfw"]


def macos_sdk_path() -> str | None:
    if shutil.which("xcrun") is None:
        return None
    result = subprocess.run(
        ["xcrun", "--show-sdk-path"],
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
        text=True,
        check=False,
    )
    if result.returncode != 0:
        return None
    path = result.stdout.strip()
    return path if path else None


def macos_opengl_flags() -> list[str]:
    sdk = macos_sdk_path()
    if sdk is not None:
        tbd = os.path.join(
            sdk,
            "System/Library/Frameworks/OpenGL.framework/OpenGL.tbd",
        )
        if os.path.exists(tbd):
            return [tbd]
    return ["-framework", "OpenGL"]


def opengl_flags() -> list[str]:
    configured = pkg_config("gl")
    if configured is not None:
        return configured
    match system_name():
        case "darwin":
            return macos_opengl_flags()
        case "windows":
            if toolchain_name() == "msvc":
                return ["opengl32.lib"]
            return ["-lopengl32"]
        case _:
            return ["-lGL"]


def backend_stub_link_flags() -> list[str]:
    match system_name():
        case "darwin":
            return ["-undefined", "dynamic_lookup"]
        case "windows":
            if toolchain_name() == "msvc":
                return []
            return ["-Wl,--allow-shlib-undefined"]
        case _:
            return ["-Wl,--allow-shlib-undefined"]


def main() -> None:
    _ = sys.stdin.read()
    backend_stub = backend_stub_link_flags()
    glfw = quote_flags(backend_stub + glfw_flags())
    opengl3 = quote_flags(backend_stub + opengl_flags())
    output = {
        "vars": {
            "IMGUI_CORE_STUB_FLAGS": quote_flags(
                stub_flags([".", "upstream/imgui", "upstream/imgui/backends"])
            ),
            "IMGUI_GLFW_STUB_FLAGS": quote_flags(
                stub_flags(
                    [
                        "bindings",
                        "bindings/upstream/imgui",
                        "bindings/upstream/imgui/backends",
                        "bindings/upstream/imgui/examples/libs/glfw/include",
                    ]
                )
            ),
            "IMGUI_OPENGL3_STUB_FLAGS": quote_flags(
                stub_flags(
                    [
                        "bindings",
                        "bindings/upstream/imgui",
                        "bindings/upstream/imgui/backends",
                    ]
                )
            ),
        },
        "link_configs": [
            {
                "package": "moonbit-community/imgui/bindings/glfw",
                "link_flags": glfw,
            },
            {
                "package": "moonbit-community/imgui/bindings/opengl3",
                "link_flags": opengl3,
            },
        ],
    }
    print(json.dumps(output, separators=(",", ":")))


if __name__ == "__main__":
    main()
