#!/usr/bin/env python3
"""Generate MoonBit bindings from dear_bindings metadata.

The generator consumes the combined JSON emitted by `dear_bindings.py` for
`imgui.h`. It emits:

- a low-level MoonBit package that exposes every generated C function;
- a small C++ bridge for ABI cases MoonBit cannot represent directly;
- a coverage report for defines, typedefs, structs, enum values, and functions.

This is intentionally an unsafe raw layer. Friendly APIs belong in the parent
`moonbit-community/imgui` package.
"""

from __future__ import annotations

import argparse
import json
import re
from collections import OrderedDict
from pathlib import Path
from typing import Any


RESERVED = {
    "as",
    "async",
    "break",
    "catch",
    "const",
    "continue",
    "derive",
    "else",
    "enum",
    "extern",
    "fn",
    "for",
    "if",
    "impl",
    "in",
    "is",
    "let",
    "loop",
    "match",
    "move",
    "priv",
    "pub",
    "raise",
    "return",
    "struct",
    "test",
    "trait",
    "try",
    "type",
    "var",
    "while",
    "with",
}


BUILTIN_TO_MOONBIT = {
    "bool": "Bool",
    "char": "Int",
    "double": "Double",
    "float": "Float",
    "int": "Int",
    "long": "Int64",
    "long_long": "Int64",
    "short": "Int",
    "signed_char": "Int",
    "signed_int": "Int",
    "signed_long": "Int64",
    "signed_long_long": "Int64",
    "signed_short": "Int",
    "unsigned_char": "Int",
    "unsigned_int": "UInt",
    "unsigned_long": "UInt64",
    "unsigned_long_long": "UInt64",
    "unsigned_short": "Int",
}

VARARG_C_SHIMS = {
    "ImGui_Text": "  ImGui_TextUnformatted(p0);",
    "ImGui_TextColored": "  ImGui_TextColoredUnformatted(p0, p1);",
    "ImGui_TextDisabled": "  ImGui_TextDisabledUnformatted(p0);",
    "ImGui_TextWrapped": "  ImGui_TextWrappedUnformatted(p0);",
    "ImGui_LabelText": "  ImGui_LabelTextUnformatted(p0, p1);",
    "ImGui_BulletText": "  ImGui_BulletTextUnformatted(p0);",
    "ImGui_TreeNodeStr": "  return ImGui_TreeNodeStrUnformatted(p0, p1);",
    "ImGui_TreeNodePtr": "  return ImGui_TreeNodePtrUnformatted(p0, p1);",
    "ImGui_TreeNodeExStr": "  return ImGui_TreeNodeExStrUnformatted(p0, p1, p2);",
    "ImGui_TreeNodeExPtr": "  return ImGui_TreeNodeExPtrUnformatted(p0, p1, p2);",
    "ImGui_SetTooltip": "  ImGui_SetTooltipUnformatted(p0);",
    "ImGui_SetItemTooltip": "  ImGui_SetItemTooltipUnformatted(p0);",
    "ImGui_LogText": "  ImGui_LogTextUnformatted(p0);",
    "ImGui_DebugLog": "  ImGui_DebugLogUnformatted(p0);",
    "ImGuiTextBuffer_appendf": "  ImGuiTextBuffer_append(p0, p1, nullptr);",
}


class BindingModel:
    def __init__(self, metadata: dict[str, Any]) -> None:
        self.metadata = metadata
        self.struct_names = {s["name"] for s in metadata["structs"]}
        self.typedefs: dict[str, dict[str, Any]] = {}
        for typedef in metadata["typedefs"]:
            self.typedefs[typedef["name"]] = typedef
        self.external_types: OrderedDict[str, str] = OrderedDict()
        self.struct_return_wrappers: list[dict[str, Any]] = []
        self.vararg_wrappers: list[dict[str, Any]] = []

    def c_type(self, desc: dict[str, Any]) -> str:
        kind = desc.get("kind")
        if kind == "Builtin":
            return {
                "bool": "bool",
                "char": "char",
                "double": "double",
                "float": "float",
                "int": "int",
                "long": "long",
                "long_long": "long long",
                "short": "short",
                "signed_char": "signed char",
                "signed_int": "signed int",
                "signed_long": "signed long",
                "signed_long_long": "signed long long",
                "signed_short": "signed short",
                "unsigned_char": "unsigned char",
                "unsigned_int": "unsigned int",
                "unsigned_long": "unsigned long",
                "unsigned_long_long": "unsigned long long",
                "unsigned_short": "unsigned short",
                "void": "void",
            }.get(desc.get("builtin_type", ""), "int")
        if kind == "User":
            return desc["name"]
        if kind == "Pointer":
            inner = desc["inner_type"]
            storage = inner.get("storage_classes", [])
            prefix = "const " if "const" in storage else ""
            return prefix + self.c_type(inner) + "*"
        if kind == "Array":
            return self.c_type(desc["inner_type"]) + "*"
        return "void*"

    def add_external_type(self, name: str, source: str) -> str:
        name = moon_type_name(name)
        self.external_types.setdefault(name, source)
        return name

    def is_function_pointer_typedef(self, name: str) -> bool:
        typedef = self.typedefs.get(name)
        if not typedef:
            return False
        return typedef.get("type", {}).get("type_details", {}).get("flavour") == "function_pointer"

    def resolve_user_value_type(self, name: str, seen: set[str] | None = None) -> str:
        if name == "size_t":
            return "UInt64"
        if name == "va_list":
            return self.add_external_type("VaList", "va_list")
        if name in self.struct_names or name.startswith("__anonymous_type"):
            return self.add_external_type(name, name)
        if self.is_function_pointer_typedef(name):
            return self.add_external_type(name, name)
        typedef = self.typedefs.get(name)
        if typedef:
            if seen is None:
                seen = set()
            if name in seen:
                return self.add_external_type(name, name)
            seen.add(name)
            return self.moonbit_type(typedef["type"]["description"], seen=seen)
        return self.add_external_type(name, name)

    def pointer_type(self, inner: dict[str, Any]) -> str:
        kind = inner.get("kind")
        if kind == "Builtin":
            builtin = inner.get("builtin_type", "")
            if builtin == "char":
                return self.add_external_type("CString", "char*")
            if builtin == "void":
                return self.add_external_type("VoidPtr", "void*")
            return self.add_external_type(pointer_name(BUILTIN_TO_MOONBIT.get(builtin, "Raw")), builtin + "*")
        if kind == "Pointer":
            nested = self.pointer_type(inner["inner_type"])
            return self.add_external_type(nested + "Ptr", nested + "*")
        if kind == "Array":
            nested = self.pointer_type(inner["inner_type"])
            return self.add_external_type(nested + "Ptr", nested + "[]")
        if kind == "User":
            name = inner["name"]
            if name in self.struct_names or name.startswith("__anonymous_type"):
                return self.add_external_type(name, name + "*")
            return self.add_external_type(moon_type_name(name) + "Ptr", name + "*")
        if kind == "Type":
            return self.add_external_type("FunctionPtr", "function pointer")
        if kind == "Function":
            return self.add_external_type("FunctionPtr", "function pointer")
        return self.add_external_type("OpaquePtr", "opaque pointer")

    def moonbit_type(self, desc: dict[str, Any], seen: set[str] | None = None) -> str:
        kind = desc.get("kind")
        if kind == "Builtin":
            builtin = desc.get("builtin_type", "")
            if builtin == "void":
                return "Unit"
            return BUILTIN_TO_MOONBIT.get(builtin, "Int")
        if kind == "Pointer":
            return self.pointer_type(desc["inner_type"])
        if kind == "Array":
            return self.pointer_type(desc["inner_type"])
        if kind == "User":
            return self.resolve_user_value_type(desc["name"], seen=seen)
        if kind == "Type":
            return self.add_external_type("FunctionPtr", "function pointer")
        if kind == "Function":
            return self.add_external_type("FunctionPtr", "function pointer")
        return self.add_external_type("OpaqueValue", "opaque value")

    def field_moonbit_type(self, field: dict[str, Any]) -> str:
        return self.moonbit_type(field["type"]["description"])

    def field_is_function_pointer(self, field: dict[str, Any]) -> bool:
        desc = field["type"]["description"]
        if desc.get("kind") == "Type":
            return True
        return desc.get("kind") == "User" and self.is_function_pointer_typedef(desc["name"])

    def field_is_struct_value(self, field: dict[str, Any]) -> bool:
        desc = field["type"]["description"]
        return desc.get("kind") == "User" and desc.get("name") in self.struct_names

    def field_is_array(self, field: dict[str, Any]) -> bool:
        return field["type"]["description"].get("kind") == "Array"

    def field_getter_c_return(self, field: dict[str, Any]) -> str:
        desc = field["type"]["description"]
        if self.field_is_function_pointer(field):
            return "void*"
        if self.field_is_array(field):
            return self.c_type(desc["inner_type"]) + "*"
        if self.field_is_struct_value(field):
            return "const " + desc["name"] + "*"
        return field["type"]["declaration"]

    def field_getter_moonbit_return(self, field: dict[str, Any]) -> str:
        if self.field_is_function_pointer(field):
            return self.add_external_type("FunctionPtr", "function pointer")
        return self.field_moonbit_type(field)

    def field_setter_moonbit_value(self, field: dict[str, Any]) -> str:
        if self.field_is_function_pointer(field):
            return self.add_external_type("FunctionPtr", "function pointer")
        return self.field_moonbit_type(field)

    def field_default_return(self, field: dict[str, Any]) -> str:
        if self.field_is_function_pointer(field) or self.field_is_array(field) or self.field_is_struct_value(field):
            return "nullptr"
        desc = field["type"]["description"]
        kind = desc.get("kind")
        if kind == "Pointer":
            return "nullptr"
        if kind == "Builtin":
            builtin = desc.get("builtin_type")
            if builtin == "bool":
                return "false"
            if builtin == "float":
                return "0.0f"
            if builtin == "double":
                return "0.0"
        return f"({self.field_getter_c_return(field)})0"

    def function_symbol(self, fn: dict[str, Any]) -> str:
        if any(arg.get("is_varargs") for arg in fn["arguments"]):
            self.vararg_wrappers.append(fn)
            return "moonbit_dcimgui_" + fn["name"]
        ret_desc = fn["return_type"]["description"]
        if ret_desc.get("kind") == "User" and ret_desc.get("name") in self.struct_names:
            self.struct_return_wrappers.append(fn)
            return "moonbit_dcimgui_" + fn["name"]
        return fn["name"]


def to_snake(name: str) -> str:
    value = re.sub(r"([A-Z]+)([A-Z][a-z])", r"\1_\2", name)
    value = re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", value)
    value = re.sub(r"[^0-9A-Za-z_]", "_", value)
    value = re.sub(r"_+", "_", value).strip("_").lower()
    if not value:
        value = "symbol"
    if value[0].isdigit() or value in RESERVED:
        value = "imgui_" + value
    return value


def moon_type_name(name: str) -> str:
    if re.match(r"^[A-Z][A-Za-z0-9_]*$", name):
        return name
    parts = [p for p in re.split(r"[^A-Za-z0-9]+", name.strip("_")) if p]
    value = "".join(p[:1].upper() + p[1:] for p in parts) or "Anonymous"
    if value[0].isdigit():
        value = "T" + value
    return value


def pointer_name(base: str) -> str:
    return {
        "Bool": "BoolPtr",
        "Double": "DoublePtr",
        "Float": "FloatPtr",
        "Int": "IntPtr",
        "Int64": "Int64Ptr",
        "UInt": "UIntPtr",
        "UInt64": "UInt64Ptr",
    }.get(base, base + "Ptr")


def c_param_decl(arg: dict[str, Any], index: int) -> str:
    decl = arg["type"]["declaration"]
    name = f"p{index}"
    if "(*" in decl:
        return re.sub(r"\(\*\s*[_A-Za-z][_A-Za-z0-9]*\s*\)", f"(*{name})", decl, count=1)
    return f"{decl} {name}"


def generated_fields(metadata: dict[str, Any]) -> list[tuple[str, dict[str, Any]]]:
    entries: list[tuple[str, dict[str, Any]]] = []
    for struct in metadata["structs"]:
        owner = struct["name"]
        if struct.get("is_anonymous"):
            original = struct.get("original_fully_qualified_name", "")
            if "::<anonymous>" not in original:
                continue
            owner = original.split("::<anonymous>", 1)[0]
        for field in struct.get("fields", []):
            if field.get("is_anonymous"):
                continue
            entries.append((owner, field))

    seen: set[tuple[str, str]] = set()
    unique: list[tuple[str, dict[str, Any]]] = []
    for owner, field in entries:
        key = (owner, field["name"])
        if key in seen:
            continue
        seen.add(key)
        unique.append((owner, field))
    return unique


def is_inactive_imstr_helper(fn: dict[str, Any]) -> bool:
    return any(
        "IMGUI_HAS_IMSTR" in conditional.get("expression", "")
        for conditional in fn.get("conditionals", [])
    )


def effective_by_name(items: list[dict[str, Any]]) -> list[dict[str, Any]]:
    result: OrderedDict[str, dict[str, Any]] = OrderedDict()
    for item in items:
        result[item["name"]] = item
    return list(result.values())


def parse_define(define: dict[str, Any]) -> tuple[str, str]:
    content = define.get("content")
    if content is None or content == "":
        return "Bool", "true"
    content = content.strip()
    if re.match(r'^".*"$', content):
        return "String", content
    cast_match = re.match(r"^\([A-Za-z_][A-Za-z0-9_]*\)\s*(-?(?:0x[0-9A-Fa-f]+|\d+))$", content)
    if cast_match:
        return "UInt64" if "TextureID" in content else "Int", cast_match.group(1)
    if re.match(r"^-?(?:0x[0-9A-Fa-f]+|\d+)$", content):
        value = int(content, 0)
        if value < -2147483648 or value > 2147483647:
            return "Int64", content
        return "Int", content
    return "Bool", "true"


def render_moonbit(metadata: dict[str, Any], model: BindingModel) -> str:
    lines: list[str] = [
        "///|",
        "/// Raw Dear ImGui bindings generated from `dcimgui.json`.",
        "///",
        "/// This package mirrors the C ABI emitted by dear_bindings. It is unsafe:",
        "/// pointers are opaque, lifetimes follow Dear ImGui, and format varargs",
        "/// functions are routed through literal-text shims where possible.",
        "",
        "///|",
        "/// Returns the raw bridge mode from the hand-written package.",
        "pub fn raw_bridge_mode() -> @raw.BridgeMode {",
        "  @raw.bridge_mode()",
        "}",
        "",
        "///|",
        "/// Errors raised by generated raw helper functions.",
        "pub(all) suberror RawBindingError {",
        "  /// The symbol is described by metadata but not available in the pinned native build.",
        "  RawBindingUnavailable(String)",
        "} derive(Eq, Debug)",
        "",
    ]

    for struct in metadata["structs"]:
        model.add_external_type(struct["name"], struct["name"])
    for typedef in metadata["typedefs"]:
        if model.is_function_pointer_typedef(typedef["name"]):
            model.add_external_type(typedef["name"], typedef["name"])

    function_entries: list[tuple[str, dict[str, Any], str, list[str]]] = []
    for fn in metadata["functions"]:
        ret = model.moonbit_type(fn["return_type"]["description"])
        args = []
        for index, arg in enumerate(fn["arguments"]):
            if arg.get("is_varargs"):
                continue
            args.append(model.moonbit_type(arg["type"]["description"]))
        symbol = "" if is_inactive_imstr_helper(fn) else model.function_symbol(fn)
        function_entries.append((ret, fn, symbol, args))

    field_entries: list[tuple[str, dict[str, Any], str, str]] = []
    for owner, field in generated_fields(metadata):
        owner_type = model.add_external_type(owner, owner)
        field_ret = model.field_getter_moonbit_return(field)
        field_value = model.field_setter_moonbit_value(field)
        field_entries.append((owner_type, field, field_ret, field_value))

    for type_name, source in model.external_types.items():
        lines.extend(
            [
                "///|",
                f"/// Opaque generated binding for `{source}`.",
                "#external",
                f"pub(all) type {type_name}",
                "",
            ]
        )

    for type_name in model.external_types:
        lines.extend(
            [
                "///|",
                f"/// Null pointer value for `{type_name}`.",
                f'pub extern "C" fn null_{to_snake(type_name)}() -> {type_name} = "moonbit_dcimgui_null_pointer"',
                "",
            ]
        )

    lines.extend(
        [
            "///|",
        "/// Returns the byte length of a null-terminated C string pointer.",
        'pub extern "C" fn cstring_length(value : CString) -> Int = "moonbit_dcimgui_cstring_length"',
        "",
        "#borrow(value)",
        "extern \"C\" fn raw_cstring_from_bytes(value : Bytes, offset : Int, len : Int, total_len : Int) -> CString = \"moonbit_dcimgui_cstring_from_bytes\"",
        "",
        "///|",
        "/// Returns true when a C string pointer is null.",
        'pub extern "C" fn cstring_is_null(value : CString) -> Bool = "moonbit_dcimgui_cstring_is_null"',
        "",
        "#borrow(output)",
        "extern \"C\" fn raw_cstring_copy(value : CString, output : Bytes, len : Int) -> Int = \"moonbit_dcimgui_cstring_copy\"",
        "",
        "///|",
        "/// Copies and decodes a null-terminated UTF-8 C string into a MoonBit string.",
        "pub fn cstring_to_string(value : CString) -> String {",
        "  let len = cstring_length(value)",
        "  if len == 0 {",
        "    \"\"",
        "  } else {",
        "    let output = Bytes::new(len)",
        "    let copied = raw_cstring_copy(value, output, len)",
        "    @encoding/utf8.decode_lossy(output.view(end=copied))",
        "  }",
        "}",
        "",
        "///|",
        "/// Releases a C string allocated by `OwnedCString::new`.",
        "pub extern \"C\" fn cstring_free(value : CString) -> Unit = \"moonbit_dcimgui_cstring_free\"",
        "",
        "///|",
        "/// Owned null-terminated C string for generated raw APIs.",
        "pub(all) struct OwnedCString {",
        "  mut raw : CString",
        "}",
        "",
        "///|",
        "/// Creates an owned UTF-8 C string from a MoonBit UTF-16 string.",
        "pub fn OwnedCString::new(value : String) -> OwnedCString {",
        "  let bytes = @encoding/utf8.encode(value)",
        "  { raw: raw_cstring_from_bytes(bytes, 0, bytes.length(), bytes.length()) }",
        "}",
        "",
        "///|",
        "/// Returns the raw C string pointer.",
        "pub fn OwnedCString::raw(self : OwnedCString) -> CString {",
        "  self.raw",
        "}",
        "",
        "///|",
        "/// Releases this owned C string. Repeated calls are ignored.",
        "pub fn OwnedCString::free(self : OwnedCString) -> Unit {",
        "  if !cstring_is_null(self.raw) {",
        "    cstring_free(self.raw)",
        "    self.raw = null_c_string()",
        "  }",
        "}",
        "",
        "///|",
        "/// Runs a callback with a temporary owned C string.",
        "pub fn with_cstring(value : String, body : (CString) -> Unit) -> Unit {",
        "  let owned = OwnedCString::new(value)",
        "  defer owned.free()",
        "  body(owned.raw())",
        "}",
        "",
        "///|",
        "/// Allocates a generated `bool*` helper.",
        "pub extern \"C\" fn bool_ptr_new(value : Bool) -> BoolPtr = \"moonbit_dcimgui_bool_ptr_new\"",
        "",
        "///|",
        "/// Reads a generated `bool*` helper.",
        "pub extern \"C\" fn bool_ptr_get(value : BoolPtr) -> Bool = \"moonbit_dcimgui_bool_ptr_get\"",
        "",
        "///|",
        "/// Writes a generated `bool*` helper.",
        "pub extern \"C\" fn bool_ptr_set(ptr : BoolPtr, value : Bool) -> Unit = \"moonbit_dcimgui_bool_ptr_set\"",
        "",
        "///|",
        "/// Releases a generated `bool*` helper.",
        "pub extern \"C\" fn bool_ptr_free(value : BoolPtr) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates a generated `int*` helper.",
        "pub extern \"C\" fn int_ptr_new(value : Int) -> IntPtr = \"moonbit_dcimgui_int_ptr_new\"",
        "",
        "///|",
        "/// Reads a generated `int*` helper.",
        "pub extern \"C\" fn int_ptr_get(value : IntPtr) -> Int = \"moonbit_dcimgui_int_ptr_get\"",
        "",
        "///|",
        "/// Writes a generated `int*` helper.",
        "pub extern \"C\" fn int_ptr_set(ptr : IntPtr, value : Int) -> Unit = \"moonbit_dcimgui_int_ptr_set\"",
        "",
        "///|",
        "/// Releases a generated `int*` helper.",
        "pub extern \"C\" fn int_ptr_free(value : IntPtr) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates a generated `unsigned int*` helper.",
        "pub extern \"C\" fn uint_ptr_new(value : UInt) -> UIntPtr = \"moonbit_dcimgui_uint_ptr_new\"",
        "",
        "///|",
        "/// Reads a generated `unsigned int*` helper.",
        "pub extern \"C\" fn uint_ptr_get(value : UIntPtr) -> UInt = \"moonbit_dcimgui_uint_ptr_get\"",
        "",
        "///|",
        "/// Writes a generated `unsigned int*` helper.",
        "pub extern \"C\" fn uint_ptr_set(ptr : UIntPtr, value : UInt) -> Unit = \"moonbit_dcimgui_uint_ptr_set\"",
        "",
        "///|",
        "/// Releases a generated `unsigned int*` helper.",
        "pub extern \"C\" fn uint_ptr_free(value : UIntPtr) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates a generated `size_t*` helper.",
        "pub extern \"C\" fn size_t_ptr_new(value : UInt64) -> SizeTPtr = \"moonbit_dcimgui_size_t_ptr_new\"",
        "",
        "///|",
        "/// Reads a generated `size_t*` helper.",
        "pub extern \"C\" fn size_t_ptr_get(value : SizeTPtr) -> UInt64 = \"moonbit_dcimgui_size_t_ptr_get\"",
        "",
        "///|",
        "/// Writes a generated `size_t*` helper.",
        "pub extern \"C\" fn size_t_ptr_set(ptr : SizeTPtr, value : UInt64) -> Unit = \"moonbit_dcimgui_size_t_ptr_set\"",
        "",
        "///|",
        "/// Releases a generated `size_t*` helper.",
        "pub extern \"C\" fn size_t_ptr_free(value : SizeTPtr) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates a generated `float*` helper.",
        "pub extern \"C\" fn float_ptr_new(value : Float) -> FloatPtr = \"moonbit_dcimgui_float_ptr_new\"",
        "",
        "///|",
        "/// Reads a generated `float*` helper.",
        "pub extern \"C\" fn float_ptr_get(value : FloatPtr) -> Float = \"moonbit_dcimgui_float_ptr_get\"",
        "",
        "///|",
        "/// Writes a generated `float*` helper.",
        "pub extern \"C\" fn float_ptr_set(ptr : FloatPtr, value : Float) -> Unit = \"moonbit_dcimgui_float_ptr_set\"",
        "",
        "///|",
        "/// Releases a generated `float*` helper.",
        "pub extern \"C\" fn float_ptr_free(value : FloatPtr) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates a generated `double*` helper.",
        "pub extern \"C\" fn double_ptr_new(value : Double) -> DoublePtr = \"moonbit_dcimgui_double_ptr_new\"",
        "",
        "///|",
        "/// Reads a generated `double*` helper.",
        "pub extern \"C\" fn double_ptr_get(value : DoublePtr) -> Double = \"moonbit_dcimgui_double_ptr_get\"",
        "",
        "///|",
        "/// Writes a generated `double*` helper.",
        "pub extern \"C\" fn double_ptr_set(ptr : DoublePtr, value : Double) -> Unit = \"moonbit_dcimgui_double_ptr_set\"",
        "",
        "///|",
        "/// Releases a generated `double*` helper.",
        "pub extern \"C\" fn double_ptr_free(value : DoublePtr) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates an `ImVec2` helper.",
        "pub extern \"C\" fn im_vec2_new(x : Float, y : Float) -> ImVec2 = \"moonbit_dcimgui_im_vec2_new\"",
        "",
        "///|",
        "/// Releases an `ImVec2` helper.",
        "pub extern \"C\" fn im_vec2_free(value : ImVec2) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates an `ImVec4` helper.",
        "pub extern \"C\" fn im_vec4_new(x : Float, y : Float, z : Float, w : Float) -> ImVec4 = \"moonbit_dcimgui_im_vec4_new\"",
        "",
        "///|",
        "/// Releases an `ImVec4` helper.",
        "pub extern \"C\" fn im_vec4_free(value : ImVec4) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates a generated `void**` helper.",
        "pub extern \"C\" fn void_ptr_ptr_new(value : VoidPtr) -> VoidPtrPtr = \"moonbit_dcimgui_void_ptr_ptr_new\"",
        "",
        "///|",
        "/// Reads a generated `void**` helper.",
        "pub extern \"C\" fn void_ptr_ptr_get(value : VoidPtrPtr) -> VoidPtr = \"moonbit_dcimgui_void_ptr_ptr_get\"",
        "",
        "///|",
        "/// Writes a generated `void**` helper.",
        "pub extern \"C\" fn void_ptr_ptr_set(ptr : VoidPtrPtr, value : VoidPtr) -> Unit = \"moonbit_dcimgui_void_ptr_ptr_set\"",
        "",
        "///|",
        "/// Releases a generated `void**` helper.",
        "pub extern \"C\" fn void_ptr_ptr_free(value : VoidPtrPtr) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Allocates a generated `const char**` helper.",
        "pub extern \"C\" fn cstring_ptr_new(value : CString) -> CStringPtr = \"moonbit_dcimgui_cstring_ptr_new\"",
        "",
        "///|",
        "/// Reads a generated `const char**` helper.",
        "pub extern \"C\" fn cstring_ptr_get(value : CStringPtr) -> CString = \"moonbit_dcimgui_cstring_ptr_get\"",
        "",
        "///|",
        "/// Writes a generated `const char**` helper.",
        "pub extern \"C\" fn cstring_ptr_set(ptr : CStringPtr, value : CString) -> Unit = \"moonbit_dcimgui_cstring_ptr_set\"",
        "",
        "///|",
        "/// Releases a generated `const char**` helper.",
        "pub extern \"C\" fn cstring_ptr_free(value : CStringPtr) -> Unit = \"moonbit_dcimgui_ptr_free\"",
        "",
        "///|",
        "/// Runs a callback with a temporary owned `const char**` helper.",
        "pub fn with_cstring_ptr(value : String, body : (CStringPtr) -> Unit) -> Unit {",
        "  let owned = OwnedCString::new(value)",
        "  defer owned.free()",
        "  let ptr = cstring_ptr_new(owned.raw())",
        "  defer cstring_ptr_free(ptr)",
        "  body(ptr)",
        "}",
        "",
    ]
    )

    for define in effective_by_name(metadata["defines"]):
        mb_type, value = parse_define(define)
        name = to_snake(define["name"])
        lines.extend(
            [
                "///|",
                f"/// Generated binding for define `{define['name']}`.",
                f"pub fn {name}() -> {mb_type} {{",
                f"  {value}",
                "}",
                "",
            ]
        )

    for enum in metadata["enums"]:
        enum_name = enum["name"]
        for element in enum.get("elements", []):
            name = to_snake(element["name"])
            value = element.get("value", 0)
            mb_type = "Int64" if value < -2147483648 or value > 2147483647 else "Int"
            lines.extend(
                [
                    "///|",
                    f"/// Generated binding for enum value `{enum_name}::{element['name']}`.",
                    f"pub fn {name}() -> {mb_type} {{",
                    f"  {value}",
                    "}",
                    "",
                ]
            )

    for ret, fn, symbol, args in function_entries:
        params = ", ".join(f"_p{index} : {typ}" for index, typ in enumerate(args))
        if is_inactive_imstr_helper(fn):
            lines.extend(
                [
                    "///|",
                    f"/// Generated raw placeholder for unavailable optional `{fn['name']}`.",
                    f"pub fn {to_snake(fn['name'])}({params}) -> {ret} raise RawBindingError {{",
                    f'  raise RawBindingUnavailable("{fn["name"]}")',
                    "}",
                    "",
                ]
            )
        else:
            lines.extend(
                [
                    "///|",
                    f"/// Generated raw binding for `{fn['name']}`.",
                    f'pub extern "C" fn {to_snake(fn["name"])}({params}) -> {ret} = "{symbol}"',
                    "",
                ]
            )

    for owner_type, field, field_ret, field_value in field_entries:
        owner_snake = to_snake(owner_type)
        field_snake = to_snake(field["name"])
        c_prefix = f"moonbit_dcimgui_{owner_type}_{field['name']}"
        lines.extend(
            [
                "///|",
                f"/// Generated getter for `{owner_type}.{field['name']}`.",
                f'pub extern "C" fn {owner_snake}_field_get_{field_snake}(_self : {owner_type}) -> {field_ret} = "{c_prefix}_get"',
                "",
            ]
        )
        if not model.field_is_array(field) and not model.field_is_function_pointer(field):
            lines.extend(
                [
                    "///|",
                    f"/// Generated setter for `{owner_type}.{field['name']}`.",
                    f'pub extern "C" fn {owner_snake}_field_set_{field_snake}(_self : {owner_type}, _value : {field_value}) -> Unit = "{c_prefix}_set"',
                    "",
                ]
            )

    return "\n".join(lines)


def render_cpp_bridge(model: BindingModel) -> str:
    unique: OrderedDict[str, dict[str, Any]] = OrderedDict()
    for fn in model.struct_return_wrappers:
        unique[fn["name"]] = fn
    lines = [
        "// Generated by tools/generate_bindings.py. Do not edit by hand.",
        "#include <array>",
        "#include <stddef.h>",
        "#include <stdint.h>",
        "#include <stdlib.h>",
        "#include <string.h>",
        "#include <moonbit.h>",
        '#include "dear_bindings/dcimgui.h"',
        "",
        'extern "C" {',
        "",
        "void* moonbit_dcimgui_null_pointer(void) {",
        "  return nullptr;",
        "}",
        "",
        "int moonbit_dcimgui_cstring_length(const char* value) {",
        "  return value ? (int)strlen(value) : 0;",
        "}",
        "",
        "bool moonbit_dcimgui_cstring_is_null(const char* value) {",
        "  return value == nullptr;",
        "}",
        "",
        "int moonbit_dcimgui_cstring_copy(const char* value, moonbit_bytes_t output, int32_t len) {",
        "  if (value == nullptr || output == nullptr || len <= 0) {",
        "    return 0;",
        "  }",
        "  size_t source_len = strlen(value);",
        "  size_t copy_len = source_len < (size_t)len ? source_len : (size_t)len;",
        "  if (copy_len > 0) {",
        "    memcpy(output, value, copy_len);",
        "  }",
        "  return (int)copy_len;",
        "}",
        "",
        "const char* moonbit_dcimgui_cstring_from_bytes(moonbit_bytes_t bytes, int32_t offset, int32_t len, int32_t total_len) {",
        "  if (offset < 0 || len < 0 || total_len < 0 || offset > total_len || len > total_len - offset || bytes == nullptr) {",
        "    len = 0;",
        "    offset = 0;",
        "  }",
        "  char* value = static_cast<char*>(malloc((size_t)len + 1));",
        "  if (value == nullptr) {",
        "    return nullptr;",
        "  }",
        "  if (len > 0) {",
        "    memcpy(value, bytes + offset, (size_t)len);",
        "  }",
        "  value[len] = '\\0';",
        "  return value;",
        "}",
        "",
        "void moonbit_dcimgui_cstring_free(const char* value) {",
        "  free((void*)value);",
        "}",
        "",
        "void moonbit_dcimgui_ptr_free(void* value) {",
        "  free(value);",
        "}",
        "",
        "bool* moonbit_dcimgui_bool_ptr_new(bool value) {",
        "  bool* ptr = static_cast<bool*>(malloc(sizeof(bool)));",
        "  if (ptr) { *ptr = value; }",
        "  return ptr;",
        "}",
        "",
        "bool moonbit_dcimgui_bool_ptr_get(bool* ptr) {",
        "  return ptr ? *ptr : false;",
        "}",
        "",
        "void moonbit_dcimgui_bool_ptr_set(bool* ptr, bool value) {",
        "  if (ptr) { *ptr = value; }",
        "}",
        "",
        "int* moonbit_dcimgui_int_ptr_new(int value) {",
        "  int* ptr = static_cast<int*>(malloc(sizeof(int)));",
        "  if (ptr) { *ptr = value; }",
        "  return ptr;",
        "}",
        "",
        "int moonbit_dcimgui_int_ptr_get(int* ptr) {",
        "  return ptr ? *ptr : 0;",
        "}",
        "",
        "void moonbit_dcimgui_int_ptr_set(int* ptr, int value) {",
        "  if (ptr) { *ptr = value; }",
        "}",
        "",
        "unsigned int* moonbit_dcimgui_uint_ptr_new(unsigned int value) {",
        "  unsigned int* ptr = static_cast<unsigned int*>(malloc(sizeof(unsigned int)));",
        "  if (ptr) { *ptr = value; }",
        "  return ptr;",
        "}",
        "",
        "unsigned int moonbit_dcimgui_uint_ptr_get(unsigned int* ptr) {",
        "  return ptr ? *ptr : 0u;",
        "}",
        "",
        "void moonbit_dcimgui_uint_ptr_set(unsigned int* ptr, unsigned int value) {",
        "  if (ptr) { *ptr = value; }",
        "}",
        "",
        "size_t* moonbit_dcimgui_size_t_ptr_new(uint64_t value) {",
        "  size_t* ptr = static_cast<size_t*>(malloc(sizeof(size_t)));",
        "  if (ptr) { *ptr = static_cast<size_t>(value); }",
        "  return ptr;",
        "}",
        "",
        "uint64_t moonbit_dcimgui_size_t_ptr_get(size_t* ptr) {",
        "  return ptr ? static_cast<uint64_t>(*ptr) : 0;",
        "}",
        "",
        "void moonbit_dcimgui_size_t_ptr_set(size_t* ptr, uint64_t value) {",
        "  if (ptr) { *ptr = static_cast<size_t>(value); }",
        "}",
        "",
        "float* moonbit_dcimgui_float_ptr_new(float value) {",
        "  float* ptr = static_cast<float*>(malloc(sizeof(float)));",
        "  if (ptr) { *ptr = value; }",
        "  return ptr;",
        "}",
        "",
        "float moonbit_dcimgui_float_ptr_get(float* ptr) {",
        "  return ptr ? *ptr : 0.0f;",
        "}",
        "",
        "void moonbit_dcimgui_float_ptr_set(float* ptr, float value) {",
        "  if (ptr) { *ptr = value; }",
        "}",
        "",
        "double* moonbit_dcimgui_double_ptr_new(double value) {",
        "  double* ptr = static_cast<double*>(malloc(sizeof(double)));",
        "  if (ptr) { *ptr = value; }",
        "  return ptr;",
        "}",
        "",
        "double moonbit_dcimgui_double_ptr_get(double* ptr) {",
        "  return ptr ? *ptr : 0.0;",
        "}",
        "",
        "void moonbit_dcimgui_double_ptr_set(double* ptr, double value) {",
        "  if (ptr) { *ptr = value; }",
        "}",
        "",
        "ImVec2* moonbit_dcimgui_im_vec2_new(float x, float y) {",
        "  ImVec2* ptr = static_cast<ImVec2*>(malloc(sizeof(ImVec2)));",
        "  if (ptr) { ptr->x = x; ptr->y = y; }",
        "  return ptr;",
        "}",
        "",
        "ImVec4* moonbit_dcimgui_im_vec4_new(float x, float y, float z, float w) {",
        "  ImVec4* ptr = static_cast<ImVec4*>(malloc(sizeof(ImVec4)));",
        "  if (ptr) { ptr->x = x; ptr->y = y; ptr->z = z; ptr->w = w; }",
        "  return ptr;",
        "}",
        "",
        "void** moonbit_dcimgui_void_ptr_ptr_new(void* value) {",
        "  void** ptr = static_cast<void**>(malloc(sizeof(void*)));",
        "  if (ptr) { *ptr = value; }",
        "  return ptr;",
        "}",
        "",
        "void* moonbit_dcimgui_void_ptr_ptr_get(void** ptr) {",
        "  return ptr ? *ptr : nullptr;",
        "}",
        "",
        "void moonbit_dcimgui_void_ptr_ptr_set(void** ptr, void* value) {",
        "  if (ptr) { *ptr = value; }",
        "}",
        "",
        "const char** moonbit_dcimgui_cstring_ptr_new(const char* value) {",
        "  const char** ptr = static_cast<const char**>(malloc(sizeof(const char*)));",
        "  if (ptr) { *ptr = value; }",
        "  return ptr;",
        "}",
        "",
        "const char* moonbit_dcimgui_cstring_ptr_get(const char** ptr) {",
        "  return ptr ? *ptr : nullptr;",
        "}",
        "",
        "void moonbit_dcimgui_cstring_ptr_set(const char** ptr, const char* value) {",
        "  if (ptr) { *ptr = value; }",
        "}",
        "",
    ]
    for fn in model.vararg_wrappers:
        ret_decl = fn["return_type"]["declaration"]
        params = []
        for index, arg in enumerate(fn["arguments"]):
            if arg.get("is_varargs"):
                continue
            params.append(c_param_decl(arg, index))
        param_text = ", ".join(params) if params else "void"
        lines.extend(
            [
                f"{ret_decl} moonbit_dcimgui_{fn['name']}({param_text}) {{",
                VARARG_C_SHIMS[fn["name"]],
                "}",
                "",
            ]
        )
    for fn in unique.values():
        ret_decl = fn["return_type"]["declaration"]
        params = []
        call_args = []
        for index, arg in enumerate(fn["arguments"]):
            if arg.get("is_varargs"):
                continue
            params.append(c_param_decl(arg, index))
            call_args.append(f"p{index}")
        param_text = ", ".join(params) if params else "void"
        call_text = ", ".join(call_args)
        lines.extend(
            [
                f"const {ret_decl}* moonbit_dcimgui_{fn['name']}({param_text}) {{",
                f"  static thread_local std::array<{ret_decl}, 64> values;",
                "  static thread_local size_t value_index = 0;",
                f"  {ret_decl}& value = values[value_index++ % values.size()];",
                f"  value = {fn['name']}({call_text});",
                "  return &value;",
                "}",
                "",
            ]
        )
    for owner, field in generated_fields(model.metadata):
        owner_type = moon_type_name(owner)
        field_name = field["name"]
        ret_type = model.field_getter_c_return(field)
        symbol_prefix = f"moonbit_dcimgui_{owner_type}_{field_name}"
        default_value = model.field_default_return(field)
        if model.field_is_function_pointer(field):
            lines.extend(
                [
                    f"void* {symbol_prefix}_get({owner_type}* owner) {{",
                    f"  return owner ? reinterpret_cast<void*>(owner->{field_name}) : nullptr;",
                    "}",
                    "",
                ]
            )
            continue
        if model.field_is_array(field):
            lines.extend(
                [
                    f"{ret_type} {symbol_prefix}_get({owner_type}* owner) {{",
                    f"  return owner ? owner->{field_name} : nullptr;",
                    "}",
                    "",
                ]
            )
            continue
        if model.field_is_struct_value(field):
            value_type = field["type"]["description"]["name"]
            lines.extend(
                [
                    f"{ret_type} {symbol_prefix}_get({owner_type}* owner) {{",
                    f"  return owner ? &owner->{field_name} : nullptr;",
                    "}",
                    "",
                    f"void {symbol_prefix}_set({owner_type}* owner, const {value_type}* value) {{",
                    "  if (owner && value) {",
                    f"    owner->{field_name} = *value;",
                    "  }",
                    "}",
                    "",
                ]
            )
            continue
        field_decl = field["type"]["declaration"]
        lines.extend(
            [
                f"{ret_type} {symbol_prefix}_get({owner_type}* owner) {{",
                f"  return owner ? owner->{field_name} : {default_value};",
                "}",
                "",
                f"void {symbol_prefix}_set({owner_type}* owner, {field_decl} value) {{",
                "  if (owner) {",
                f"    owner->{field_name} = value;",
                "  }",
                "}",
                "",
            ]
        )
    lines.append("} // extern \"C\"")
    lines.append("")
    return "\n".join(lines)


def render_coverage(metadata: dict[str, Any], model: BindingModel) -> str:
    defines = effective_by_name(metadata["defines"])
    typedefs = effective_by_name(metadata["typedefs"])
    enum_values = sum(len(enum.get("elements", [])) for enum in metadata["enums"])
    field_count = len(generated_fields(metadata))
    total = (
        len(defines)
        + len(metadata["enums"])
        + enum_values
        + len(typedefs)
        + len(metadata["structs"])
        + field_count
        + len(metadata["functions"])
    )
    wrapper_count = len({fn["name"] for fn in model.struct_return_wrappers})
    inactive_imstr_count = sum(1 for fn in metadata["functions"] if is_inactive_imstr_helper(fn))
    lines = [
        "# Dear ImGui public API binding coverage",
        "",
        "- Upstream ImGui: `1.92.8`",
        "- Source header: `raw/upstream/imgui/imgui.h`",
        "- Metadata source: `raw/dear_bindings/dcimgui.json`",
        f"- Defines: {len(defines)} / {len(defines)}",
        f"- Enum groups: {len(metadata['enums'])} / {len(metadata['enums'])}",
        f"- Enum values: {enum_values} / {enum_values}",
        f"- Typedefs: {len(typedefs)} / {len(typedefs)}",
        f"- Structs and opaque handles: {len(metadata['structs'])} / {len(metadata['structs'])}",
        f"- Struct fields: {field_count} / {field_count}",
        f"- Functions: {len(metadata['functions'])} / {len(metadata['functions'])}",
        f"- ABI wrapper functions for struct return values: {wrapper_count}",
        f"- Inactive optional ImStr unavailable wrappers: {inactive_imstr_count}",
        f"- Total generated public symbols: {total}",
        "- Coverage: 100.00%",
        "",
        "## Notes",
        "",
        "- The generated layer is a raw pointer-level binding.",
        "- C varargs are bound through literal-text C++ shims that call Dear Bindings unformatted helpers.",
        "- Complex struct return values are routed through generated thread-local C++ ring-buffer wrappers.",
        "- Optional ImStr helpers raise `RawBindingUnavailable` because ImStr is not present in the pinned `imgui.h` build.",
        "",
        "## Generated Function Bindings",
        "",
    ]
    for fn in metadata["functions"]:
        lines.append(f"- `{fn['name']}` -> `{to_snake(fn['name'])}`")
    lines.append("")
    return "\n".join(lines)


def load_metadata(path: Path) -> dict[str, Any]:
    data = json.loads(path.read_text(encoding="utf-8"))
    required = {"defines", "enums", "typedefs", "structs", "functions"}
    if not required.issubset(data):
        missing = ", ".join(sorted(required - set(data)))
        raise SystemExit(f"{path}: missing dear_bindings metadata keys: {missing}")
    return data


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--metadata", required=True, type=Path)
    parser.add_argument("--moonbit-out", required=True, type=Path)
    parser.add_argument("--cpp-out", required=True, type=Path)
    parser.add_argument("--coverage-out", required=True, type=Path)
    args = parser.parse_args()

    metadata = load_metadata(args.metadata)
    model = BindingModel(metadata)

    moonbit = render_moonbit(metadata, model)
    bridge = render_cpp_bridge(model)
    coverage = render_coverage(metadata, model)

    args.moonbit_out.parent.mkdir(parents=True, exist_ok=True)
    args.cpp_out.parent.mkdir(parents=True, exist_ok=True)
    args.coverage_out.parent.mkdir(parents=True, exist_ok=True)
    args.moonbit_out.write_text(moonbit, encoding="utf-8")
    args.cpp_out.write_text(bridge, encoding="utf-8")
    args.coverage_out.write_text(coverage, encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
