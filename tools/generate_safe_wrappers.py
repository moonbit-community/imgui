#!/usr/bin/env python3
"""Generate safe MoonBit wrappers over the raw generated Dear ImGui layer."""

from __future__ import annotations

import argparse
from pathlib import Path
from typing import Any

from generate_bindings import BindingModel, load_metadata, to_snake


PRIMITIVE_TYPES = {
    "Unit",
    "Bool",
    "Int",
    "UInt",
    "Int64",
    "UInt64",
    "Float",
    "Double",
    "String",
}

NO_CONTEXT_GUARD = {
    "ImGui_CreateContext",
    "ImGui_DestroyContext",
    "ImGui_GetCurrentContext",
    "ImGui_SetCurrentContext",
    "ImGui_GetVersion",
    "ImGui_DebugCheckVersionAndDataLayout",
    "ImGui_SetAllocatorFunctions",
    "ImGui_GetAllocatorFunctions",
}

CHAR_RANGE_END_NAMES = {
    "str_id_end",
    "text_end",
    "str_end",
}

VARARG_LITERAL_WRAPPERS = {
    "ImGui_Text": ("im_gui_text_unformatted", [0], [0]),
    "ImGui_TextColored": ("im_gui_text_colored_unformatted", [0, 1], [0, 1]),
    "ImGui_TextDisabled": ("im_gui_text_disabled_unformatted", [0], [0]),
    "ImGui_TextWrapped": ("im_gui_text_wrapped_unformatted", [0], [0]),
    "ImGui_LabelText": ("im_gui_label_text_unformatted", [0, 1], [0, 1]),
    "ImGui_BulletText": ("im_gui_bullet_text_unformatted", [0], [0]),
    "ImGui_TreeNodeStr": ("im_gui_tree_node_str_unformatted", [0, 1], [0, 1]),
    "ImGui_TreeNodePtr": ("im_gui_tree_node_ptr_unformatted", [0, 1], [0, 1]),
    "ImGui_TreeNodeExStr": (
        "im_gui_tree_node_ex_str_unformatted",
        [0, 1, 2],
        [0, 1, 2],
    ),
    "ImGui_TreeNodeExPtr": (
        "im_gui_tree_node_ex_ptr_unformatted",
        [0, 1, 2],
        [0, 1, 2],
    ),
    "ImGui_SetTooltip": ("im_gui_set_tooltip_unformatted", [0], [0]),
    "ImGui_SetItemTooltip": ("im_gui_set_item_tooltip_unformatted", [0], [0]),
    "ImGui_LogText": ("im_gui_log_text_unformatted", [0], [0]),
    "ImGui_DebugLog": ("im_gui_debug_log_unformatted", [0], [0]),
    "ImGuiTextBuffer_appendf": (
        "im_gui_text_buffer_append",
        [0, 1],
        [0, 1, "@raw_generated.null_c_string()"],
    ),
}

UNSAFE_SAFE_LAYER_FUNCTIONS = {
    "ImGui_MemAlloc": "raw allocator ownership is not safe",
    "ImGui_MemFree": "raw allocator ownership is not safe",
    "ImVector_Construct": "raw ImVector construction ownership is not safe",
    "ImVector_Destruct": "raw ImVector destruction ownership is not safe",
}


def type_ref(moonbit_type: str) -> str:
    if moonbit_type in PRIMITIVE_TYPES:
        return moonbit_type
    return f"@raw_generated.{moonbit_type}"


def is_const_char_pointer(desc: dict[str, Any]) -> bool:
    if desc.get("kind") != "Pointer":
        return False
    inner = desc.get("inner_type", {})
    return (
        inner.get("kind") == "Builtin"
        and inner.get("builtin_type") == "char"
        and "const" in inner.get("storage_classes", [])
    )


def is_function_pointer_arg(model: BindingModel, desc: dict[str, Any]) -> bool:
    if desc.get("kind") == "Type":
        return True
    if desc.get("kind") == "User":
        return model.is_function_pointer_typedef(desc["name"])
    return False


def is_va_list_arg(model: BindingModel, desc: dict[str, Any]) -> bool:
    return model.moonbit_type(desc) == "VaList"


def is_inactive_imstr_helper(fn: dict[str, Any]) -> bool:
    return any(
        "IMGUI_HAS_IMSTR" in conditional.get("expression", "")
        for conditional in fn.get("conditionals", [])
    )


def is_const_char_range_end_arg(fn: dict[str, Any], index: int) -> bool:
    arg = fn["arguments"][index]
    if arg.get("name") not in CHAR_RANGE_END_NAMES:
        return False
    if "type" not in arg or not is_const_char_pointer(arg["type"]["description"]):
        return False
    if index == 0:
        return False
    previous = fn["arguments"][index - 1]
    return "type" in previous and is_const_char_pointer(
        previous["type"]["description"]
    )


def is_safe_skipped(model: BindingModel, fn: dict[str, Any]) -> str | None:
    if fn["name"] in UNSAFE_SAFE_LAYER_FUNCTIONS:
        return UNSAFE_SAFE_LAYER_FUNCTIONS[fn["name"]]
    if fn["name"] in VARARG_LITERAL_WRAPPERS:
        return None
    if is_inactive_imstr_helper(fn):
        return "inactive optional ImStr helper is unavailable in the pinned native build"
    if any(arg.get("is_varargs") for arg in fn["arguments"]):
        return "C varargs cannot be represented by a safe MoonBit function"
    for arg in fn["arguments"]:
        if arg.get("is_varargs") or "type" not in arg:
            continue
        if is_va_list_arg(model, arg["type"]["description"]):
            return "va_list cannot be constructed safely from MoonBit"
        if is_function_pointer_arg(model, arg["type"]["description"]):
            return "function-pointer callback parameter needs a dedicated FuncRef thunk"
    return None


def argument_type(model: BindingModel, arg: dict[str, Any]) -> str:
    desc = arg["type"]["description"]
    if is_const_char_pointer(desc):
        return "String"
    return type_ref(model.moonbit_type(desc))


def return_type(model: BindingModel, fn: dict[str, Any]) -> str:
    raw_ret = model.moonbit_type(fn["return_type"]["description"])
    if raw_ret == "CString":
        return "String"
    return type_ref(raw_ret)


def needs_context_guard(fn: dict[str, Any]) -> bool:
    return fn["name"].startswith("ImGui_") and fn["name"] not in NO_CONTEXT_GUARD


def render_custom_vararg_literal(
    model: BindingModel,
    fn: dict[str, Any],
) -> list[str]:
    name = to_snake(fn["name"])
    ret = return_type(model, fn)
    guarded = needs_context_guard(fn)
    target, keep_indices, target_args = VARARG_LITERAL_WRAPPERS[fn["name"]]
    params: list[str] = []
    cstring_args: dict[int, str] = {}
    for index in keep_indices:
        arg = fn["arguments"][index]
        arg_name = f"_p{index}"
        arg_type = argument_type(model, arg)
        params.append(f"{arg_name} : {arg_type}")
        if arg_type == "String":
            cstring_args[index] = f"_c{index}"
    call_args: list[str] = []
    for item in target_args:
        if isinstance(item, int):
            if item in cstring_args:
                call_args.append(f"{cstring_args[item]}.raw()")
            else:
                call_args.append(f"_p{item}")
        else:
            call_args.append(item)
    lines = [
        "///|",
        f"/// Safe literal-text wrapper for `{fn['name']}`.",
        f"pub fn {name}({', '.join(params)}) -> {ret}{' raise ImGuiError' if guarded else ''} {{",
    ]
    if guarded:
        lines.append("  ensure_current_context()")
    for index in keep_indices:
        if index in cstring_args:
            local = cstring_args[index]
            lines.append(f"  let {local} = @raw_generated.OwnedCString::new(_p{index})")
            lines.append(f"  defer {local}.free()")
    lines.append(f"  @raw_generated.{target}({', '.join(call_args)})")
    lines.extend(["}", ""])
    return lines


def render_function(model: BindingModel, fn: dict[str, Any]) -> list[str]:
    if fn["name"] in VARARG_LITERAL_WRAPPERS:
        return render_custom_vararg_literal(model, fn)
    name = to_snake(fn["name"])
    ret = return_type(model, fn)
    guarded = needs_context_guard(fn)
    params: list[str] = []
    cstring_args: list[tuple[int, str]] = []
    call_args: list[str] = []
    for index, arg in enumerate(fn["arguments"]):
        if is_const_char_range_end_arg(fn, index):
            call_args.append("@raw_generated.null_c_string()")
            continue
        arg_name = f"_p{index}"
        arg_type = argument_type(model, arg)
        params.append(f"{arg_name} : {arg_type}")
        if arg_type == "String":
            local = f"_c{index}"
            cstring_args.append((index, local))
            call_args.append(f"{local}.raw()")
        else:
            call_args.append(arg_name)

    lines = [
        "///|",
        f"/// Safe generated wrapper for `{fn['name']}`.",
        f"pub fn {name}({', '.join(params)}) -> {ret}{' raise ImGuiError' if guarded else ''} {{",
    ]
    if guarded:
        lines.append("  ensure_current_context()")
    for index, local in cstring_args:
        lines.append(f"  let {local} = @raw_generated.OwnedCString::new(_p{index})")
        lines.append(f"  defer {local}.free()")
    raw_call = f"@raw_generated.{name}({', '.join(call_args)})"
    if ret == "Unit":
        lines.append(f"  {raw_call}")
    elif ret == "String":
        lines.append(f"  @raw_generated.cstring_to_string({raw_call})")
    else:
        lines.append(f"  {raw_call}")
    lines.extend(["}", ""])
    return lines


def render_safe(metadata: dict[str, Any], model: BindingModel) -> tuple[str, str]:
    bound: list[dict[str, Any]] = []
    skipped: list[tuple[dict[str, Any], str]] = []
    for fn in metadata["functions"]:
        reason = is_safe_skipped(model, fn)
        if reason is None:
            bound.append(fn)
        else:
            skipped.append((fn, reason))

    coverage = len(bound) * 100.0 / len(metadata["functions"])
    lines = [
        "///|",
        "/// Generated safe wrappers over `moonbit-community/imgui/raw/generated`.",
        "///",
        "/// This layer checks the current ImGui context for normal `ImGui_*` calls",
        "/// and converts MoonBit UTF-16 `String` parameters to UTF-8 `const char*`.",
        "/// `const char*` begin/end ranges expose one full `String` and pass",
        "/// a null end pointer to Dear ImGui.",
        "",
        "///|",
        "/// Number of Dear Bindings functions exposed by the generated safe layer.",
        f"pub fn safe_generated_bound_symbols() -> Int {{ {len(bound)} }}",
        "",
        "///|",
        "/// Number of Dear Bindings functions considered by the generated safe layer.",
        f"pub fn safe_generated_total_symbols() -> Int {{ {len(metadata['functions'])} }}",
        "",
        "///|",
        "/// Safe generated function coverage percentage.",
        f"pub fn safe_generated_coverage_percent() -> Double {{ {coverage:.4f} }}",
        "",
    ]
    for fn in bound:
        lines.extend(render_function(model, fn))

    report = [
        "# Dear ImGui safe wrapper coverage",
        "",
        "- Source header: `raw/upstream/imgui/imgui.h`",
        "- Metadata source: `raw/dear_bindings/dcimgui.json`",
        f"- Total Dear Bindings functions: {len(metadata['functions'])}",
        f"- Safe generated wrappers: {len(bound)}",
        f"- Skipped functions: {len(skipped)}",
        f"- Coverage: {coverage:.2f}%",
        "",
        "## Bound Functions",
        "",
    ]
    for fn in bound:
        report.append(f"- `{fn['name']}` -> `{to_snake(fn['name'])}`")
    report.extend(["", "## Skipped Functions", ""])
    for fn, reason in skipped:
        report.append(f"- `{fn['name']}`: {reason}")
    report.append("")
    return "\n".join(lines), "\n".join(report)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--metadata", required=True, type=Path)
    parser.add_argument("--safe-out", required=True, type=Path)
    parser.add_argument("--coverage-out", required=True, type=Path)
    parser.add_argument("--min-coverage", type=float, default=95.0)
    args = parser.parse_args()

    metadata = load_metadata(args.metadata)
    model = BindingModel(metadata)
    source, report = render_safe(metadata, model)
    args.safe_out.write_text(source, encoding="utf-8")
    args.coverage_out.write_text(report, encoding="utf-8")

    bound = source.count("pub fn ") - 3
    coverage = bound * 100.0 / len(metadata["functions"])
    if coverage < args.min_coverage:
        raise SystemExit(
            f"safe wrapper coverage {coverage:.2f}% is below {args.min_coverage:.2f}%"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
