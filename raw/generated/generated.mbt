///|
/// Raw Dear ImGui bindings generated from `dcimgui.json`.
///
/// This package mirrors the C ABI emitted by dear_bindings. It is unsafe:
/// pointers are opaque, lifetimes follow Dear ImGui, and format varargs
/// functions are routed through literal-text shims where possible.

///|
/// Returns the raw bridge mode from the hand-written package.
pub fn raw_bridge_mode() -> @raw.BridgeMode {
  @raw.bridge_mode()
}

///|
/// Errors raised by generated raw helper functions.
pub(all) suberror RawBindingError {
  /// The symbol is described by metadata but not available in the pinned native build.
  RawBindingUnavailable(String)
} derive(Eq, Debug)

///|
/// Opaque generated binding for `ImDrawListSharedData`.
#external
pub(all) type ImDrawListSharedData

///|
/// Opaque generated binding for `ImFontAtlasBuilder`.
#external
pub(all) type ImFontAtlasBuilder

///|
/// Opaque generated binding for `ImFontLoader`.
#external
pub(all) type ImFontLoader

///|
/// Opaque generated binding for `ImGuiContext`.
#external
pub(all) type ImGuiContext

///|
/// Opaque generated binding for `ImVec2`.
#external
pub(all) type ImVec2

///|
/// Opaque generated binding for `ImVec4`.
#external
pub(all) type ImVec4

///|
/// Opaque generated binding for `ImTextureRef`.
#external
pub(all) type ImTextureRef

///|
/// Opaque generated binding for `ImGuiTableSortSpecs`.
#external
pub(all) type ImGuiTableSortSpecs

///|
/// Opaque generated binding for `ImGuiTableColumnSortSpecs`.
#external
pub(all) type ImGuiTableColumnSortSpecs

///|
/// Opaque generated binding for `ImVector_ImGuiTextRange`.
#external
pub(all) type ImVector_ImGuiTextRange

///|
/// Opaque generated binding for `ImVector_char`.
#external
pub(all) type ImVector_char

///|
/// Opaque generated binding for `ImVector_ImGuiStoragePair`.
#external
pub(all) type ImVector_ImGuiStoragePair

///|
/// Opaque generated binding for `ImVector_ImGuiSelectionRequest`.
#external
pub(all) type ImVector_ImGuiSelectionRequest

///|
/// Opaque generated binding for `ImVector_ImDrawChannel`.
#external
pub(all) type ImVector_ImDrawChannel

///|
/// Opaque generated binding for `ImVector_ImDrawCmd`.
#external
pub(all) type ImVector_ImDrawCmd

///|
/// Opaque generated binding for `ImVector_ImDrawIdx`.
#external
pub(all) type ImVector_ImDrawIdx

///|
/// Opaque generated binding for `ImVector_ImDrawVert`.
#external
pub(all) type ImVector_ImDrawVert

///|
/// Opaque generated binding for `ImVector_ImVec2`.
#external
pub(all) type ImVector_ImVec2

///|
/// Opaque generated binding for `ImVector_ImVec4`.
#external
pub(all) type ImVector_ImVec4

///|
/// Opaque generated binding for `ImVector_ImTextureRef`.
#external
pub(all) type ImVector_ImTextureRef

///|
/// Opaque generated binding for `ImVector_ImU8`.
#external
pub(all) type ImVector_ImU8

///|
/// Opaque generated binding for `ImVector_ImDrawListPtr`.
#external
pub(all) type ImVector_ImDrawListPtr

///|
/// Opaque generated binding for `ImVector_ImTextureRect`.
#external
pub(all) type ImVector_ImTextureRect

///|
/// Opaque generated binding for `ImVector_ImU32`.
#external
pub(all) type ImVector_ImU32

///|
/// Opaque generated binding for `ImVector_ImWchar`.
#external
pub(all) type ImVector_ImWchar

///|
/// Opaque generated binding for `ImVector_ImFontPtr`.
#external
pub(all) type ImVector_ImFontPtr

///|
/// Opaque generated binding for `ImVector_ImFontConfig`.
#external
pub(all) type ImVector_ImFontConfig

///|
/// Opaque generated binding for `ImVector_ImDrawListSharedDataPtr`.
#external
pub(all) type ImVector_ImDrawListSharedDataPtr

///|
/// Opaque generated binding for `ImVector_float`.
#external
pub(all) type ImVector_float

///|
/// Opaque generated binding for `ImVector_ImU16`.
#external
pub(all) type ImVector_ImU16

///|
/// Opaque generated binding for `ImVector_ImFontGlyph`.
#external
pub(all) type ImVector_ImFontGlyph

///|
/// Opaque generated binding for `ImVector_ImFontConfigPtr`.
#external
pub(all) type ImVector_ImFontConfigPtr

///|
/// Opaque generated binding for `ImVector_ImTextureDataPtr`.
#external
pub(all) type ImVector_ImTextureDataPtr

///|
/// Opaque generated binding for `ImGuiStyle`.
#external
pub(all) type ImGuiStyle

///|
/// Opaque generated binding for `ImGuiKeyData`.
#external
pub(all) type ImGuiKeyData

///|
/// Opaque generated binding for `ImGuiIO`.
#external
pub(all) type ImGuiIO

///|
/// Opaque generated binding for `ImGuiInputTextCallbackData`.
#external
pub(all) type ImGuiInputTextCallbackData

///|
/// Opaque generated binding for `ImGuiSizeCallbackData`.
#external
pub(all) type ImGuiSizeCallbackData

///|
/// Opaque generated binding for `ImGuiPayload`.
#external
pub(all) type ImGuiPayload

///|
/// Opaque generated binding for `ImGuiTextFilter_ImGuiTextRange`.
#external
pub(all) type ImGuiTextFilter_ImGuiTextRange

///|
/// Opaque generated binding for `ImGuiTextFilter`.
#external
pub(all) type ImGuiTextFilter

///|
/// Opaque generated binding for `ImGuiTextBuffer`.
#external
pub(all) type ImGuiTextBuffer

///|
/// Opaque generated binding for `ImGuiStoragePair`.
#external
pub(all) type ImGuiStoragePair

///|
/// Opaque generated binding for `__anonymous_type0`.
#external
pub(all) type AnonymousType0

///|
/// Opaque generated binding for `ImGuiStorage`.
#external
pub(all) type ImGuiStorage

///|
/// Opaque generated binding for `ImGuiListClipper`.
#external
pub(all) type ImGuiListClipper

///|
/// Opaque generated binding for `ImColor`.
#external
pub(all) type ImColor

///|
/// Opaque generated binding for `ImGuiMultiSelectIO`.
#external
pub(all) type ImGuiMultiSelectIO

///|
/// Opaque generated binding for `ImGuiSelectionRequest`.
#external
pub(all) type ImGuiSelectionRequest

///|
/// Opaque generated binding for `ImGuiSelectionBasicStorage`.
#external
pub(all) type ImGuiSelectionBasicStorage

///|
/// Opaque generated binding for `ImGuiSelectionExternalStorage`.
#external
pub(all) type ImGuiSelectionExternalStorage

///|
/// Opaque generated binding for `ImDrawCmd`.
#external
pub(all) type ImDrawCmd

///|
/// Opaque generated binding for `ImDrawVert`.
#external
pub(all) type ImDrawVert

///|
/// Opaque generated binding for `ImDrawCmdHeader`.
#external
pub(all) type ImDrawCmdHeader

///|
/// Opaque generated binding for `ImDrawChannel`.
#external
pub(all) type ImDrawChannel

///|
/// Opaque generated binding for `ImDrawListSplitter`.
#external
pub(all) type ImDrawListSplitter

///|
/// Opaque generated binding for `ImDrawList`.
#external
pub(all) type ImDrawList

///|
/// Opaque generated binding for `ImDrawData`.
#external
pub(all) type ImDrawData

///|
/// Opaque generated binding for `ImTextureRect`.
#external
pub(all) type ImTextureRect

///|
/// Opaque generated binding for `ImTextureData`.
#external
pub(all) type ImTextureData

///|
/// Opaque generated binding for `ImFontConfig`.
#external
pub(all) type ImFontConfig

///|
/// Opaque generated binding for `ImFontGlyph`.
#external
pub(all) type ImFontGlyph

///|
/// Opaque generated binding for `ImFontGlyphRangesBuilder`.
#external
pub(all) type ImFontGlyphRangesBuilder

///|
/// Opaque generated binding for `ImFontAtlasRect`.
#external
pub(all) type ImFontAtlasRect

///|
/// Opaque generated binding for `ImFontAtlas`.
#external
pub(all) type ImFontAtlas

///|
/// Opaque generated binding for `__anonymous_type1`.
#external
pub(all) type AnonymousType1

///|
/// Opaque generated binding for `ImFontBaked`.
#external
pub(all) type ImFontBaked

///|
/// Opaque generated binding for `ImFont`.
#external
pub(all) type ImFont

///|
/// Opaque generated binding for `ImGuiViewport`.
#external
pub(all) type ImGuiViewport

///|
/// Opaque generated binding for `ImGuiPlatformIO`.
#external
pub(all) type ImGuiPlatformIO

///|
/// Opaque generated binding for `ImGuiPlatformImeData`.
#external
pub(all) type ImGuiPlatformImeData

///|
/// Opaque generated binding for `ImGuiInputTextCallback`.
#external
pub(all) type ImGuiInputTextCallback

///|
/// Opaque generated binding for `ImGuiSizeCallback`.
#external
pub(all) type ImGuiSizeCallback

///|
/// Opaque generated binding for `ImGuiMemAllocFunc`.
#external
pub(all) type ImGuiMemAllocFunc

///|
/// Opaque generated binding for `ImGuiMemFreeFunc`.
#external
pub(all) type ImGuiMemFreeFunc

///|
/// Opaque generated binding for `ImDrawCallback`.
#external
pub(all) type ImDrawCallback

///|
/// Opaque generated binding for `bool*`.
#external
pub(all) type BoolPtr

///|
/// Opaque generated binding for `char*`.
#external
pub(all) type CString

///|
/// Opaque generated binding for `void*`.
#external
pub(all) type VoidPtr

///|
/// Opaque generated binding for `va_list`.
#external
pub(all) type VaList

///|
/// Opaque generated binding for `int*`.
#external
pub(all) type IntPtr

///|
/// Opaque generated binding for `unsigned_int*`.
#external
pub(all) type UIntPtr

///|
/// Opaque generated binding for `CString*`.
#external
pub(all) type CStringPtr

///|
/// Opaque generated binding for `function pointer`.
#external
pub(all) type FunctionPtr

///|
/// Opaque generated binding for `float*`.
#external
pub(all) type FloatPtr

///|
/// Opaque generated binding for `double*`.
#external
pub(all) type DoublePtr

///|
/// Opaque generated binding for `size_t*`.
#external
pub(all) type SizeTPtr

///|
/// Opaque generated binding for `ImGuiMemAllocFunc*`.
#external
pub(all) type ImGuiMemAllocFuncPtr

///|
/// Opaque generated binding for `ImGuiMemFreeFunc*`.
#external
pub(all) type ImGuiMemFreeFuncPtr

///|
/// Opaque generated binding for `VoidPtr*`.
#external
pub(all) type VoidPtrPtr

///|
/// Opaque generated binding for `ImStr`.
#external
pub(all) type ImStr

///|
/// Opaque generated binding for `ImGuiID*`.
#external
pub(all) type ImGuiIDPtr

///|
/// Opaque generated binding for `ImTextureFormat`.
#external
pub(all) type ImTextureFormat

///|
/// Opaque generated binding for `ImTextureStatus`.
#external
pub(all) type ImTextureStatus

///|
/// Opaque generated binding for `ImWchar*`.
#external
pub(all) type ImWcharPtr

///|
/// Opaque generated binding for `IntPtr*`.
#external
pub(all) type IntPtrPtr

///|
/// Opaque generated binding for `ImDrawIdx*`.
#external
pub(all) type ImDrawIdxPtr

///|
/// Opaque generated binding for `ImU8*`.
#external
pub(all) type ImU8Ptr

///|
/// Opaque generated binding for `ImDrawList*`.
#external
pub(all) type ImDrawListPtr

///|
/// Opaque generated binding for `ImU32*`.
#external
pub(all) type ImU32Ptr

///|
/// Opaque generated binding for `ImFont*`.
#external
pub(all) type ImFontPtr

///|
/// Opaque generated binding for `ImDrawListSharedData*`.
#external
pub(all) type ImDrawListSharedDataPtr

///|
/// Opaque generated binding for `ImU16*`.
#external
pub(all) type ImU16Ptr

///|
/// Opaque generated binding for `ImFontConfig*`.
#external
pub(all) type ImFontConfigPtr

///|
/// Opaque generated binding for `ImTextureData*`.
#external
pub(all) type ImTextureDataPtr

///|
/// Opaque generated binding for `ImGuiSelectionRequestType`.
#external
pub(all) type ImGuiSelectionRequestType

///|
/// Null pointer value for `ImDrawListSharedData`.
pub extern "C" fn null_im_draw_list_shared_data() -> ImDrawListSharedData = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontAtlasBuilder`.
pub extern "C" fn null_im_font_atlas_builder() -> ImFontAtlasBuilder = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontLoader`.
pub extern "C" fn null_im_font_loader() -> ImFontLoader = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiContext`.
pub extern "C" fn null_im_gui_context() -> ImGuiContext = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVec2`.
pub extern "C" fn null_im_vec2() -> ImVec2 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVec4`.
pub extern "C" fn null_im_vec4() -> ImVec4 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImTextureRef`.
pub extern "C" fn null_im_texture_ref() -> ImTextureRef = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiTableSortSpecs`.
pub extern "C" fn null_im_gui_table_sort_specs() -> ImGuiTableSortSpecs = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiTableColumnSortSpecs`.
pub extern "C" fn null_im_gui_table_column_sort_specs() -> ImGuiTableColumnSortSpecs = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImGuiTextRange`.
pub extern "C" fn null_im_vector_im_gui_text_range() -> ImVector_ImGuiTextRange = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_char`.
pub extern "C" fn null_im_vector_char() -> ImVector_char = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImGuiStoragePair`.
pub extern "C" fn null_im_vector_im_gui_storage_pair() -> ImVector_ImGuiStoragePair = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImGuiSelectionRequest`.
pub extern "C" fn null_im_vector_im_gui_selection_request() -> ImVector_ImGuiSelectionRequest = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImDrawChannel`.
pub extern "C" fn null_im_vector_im_draw_channel() -> ImVector_ImDrawChannel = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImDrawCmd`.
pub extern "C" fn null_im_vector_im_draw_cmd() -> ImVector_ImDrawCmd = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImDrawIdx`.
pub extern "C" fn null_im_vector_im_draw_idx() -> ImVector_ImDrawIdx = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImDrawVert`.
pub extern "C" fn null_im_vector_im_draw_vert() -> ImVector_ImDrawVert = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImVec2`.
pub extern "C" fn null_im_vector_im_vec2() -> ImVector_ImVec2 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImVec4`.
pub extern "C" fn null_im_vector_im_vec4() -> ImVector_ImVec4 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImTextureRef`.
pub extern "C" fn null_im_vector_im_texture_ref() -> ImVector_ImTextureRef = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImU8`.
pub extern "C" fn null_im_vector_im_u8() -> ImVector_ImU8 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImDrawListPtr`.
pub extern "C" fn null_im_vector_im_draw_list_ptr() -> ImVector_ImDrawListPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImTextureRect`.
pub extern "C" fn null_im_vector_im_texture_rect() -> ImVector_ImTextureRect = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImU32`.
pub extern "C" fn null_im_vector_im_u32() -> ImVector_ImU32 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImWchar`.
pub extern "C" fn null_im_vector_im_wchar() -> ImVector_ImWchar = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImFontPtr`.
pub extern "C" fn null_im_vector_im_font_ptr() -> ImVector_ImFontPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImFontConfig`.
pub extern "C" fn null_im_vector_im_font_config() -> ImVector_ImFontConfig = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImDrawListSharedDataPtr`.
pub extern "C" fn null_im_vector_im_draw_list_shared_data_ptr() -> ImVector_ImDrawListSharedDataPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_float`.
pub extern "C" fn null_im_vector_float() -> ImVector_float = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImU16`.
pub extern "C" fn null_im_vector_im_u16() -> ImVector_ImU16 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImFontGlyph`.
pub extern "C" fn null_im_vector_im_font_glyph() -> ImVector_ImFontGlyph = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImFontConfigPtr`.
pub extern "C" fn null_im_vector_im_font_config_ptr() -> ImVector_ImFontConfigPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImVector_ImTextureDataPtr`.
pub extern "C" fn null_im_vector_im_texture_data_ptr() -> ImVector_ImTextureDataPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiStyle`.
pub extern "C" fn null_im_gui_style() -> ImGuiStyle = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiKeyData`.
pub extern "C" fn null_im_gui_key_data() -> ImGuiKeyData = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiIO`.
pub extern "C" fn null_im_gui_io() -> ImGuiIO = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiInputTextCallbackData`.
pub extern "C" fn null_im_gui_input_text_callback_data() -> ImGuiInputTextCallbackData = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiSizeCallbackData`.
pub extern "C" fn null_im_gui_size_callback_data() -> ImGuiSizeCallbackData = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiPayload`.
pub extern "C" fn null_im_gui_payload() -> ImGuiPayload = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiTextFilter_ImGuiTextRange`.
pub extern "C" fn null_im_gui_text_filter_im_gui_text_range() -> ImGuiTextFilter_ImGuiTextRange = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiTextFilter`.
pub extern "C" fn null_im_gui_text_filter() -> ImGuiTextFilter = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiTextBuffer`.
pub extern "C" fn null_im_gui_text_buffer() -> ImGuiTextBuffer = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiStoragePair`.
pub extern "C" fn null_im_gui_storage_pair() -> ImGuiStoragePair = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `AnonymousType0`.
pub extern "C" fn null_anonymous_type0() -> AnonymousType0 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiStorage`.
pub extern "C" fn null_im_gui_storage() -> ImGuiStorage = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiListClipper`.
pub extern "C" fn null_im_gui_list_clipper() -> ImGuiListClipper = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImColor`.
pub extern "C" fn null_im_color() -> ImColor = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiMultiSelectIO`.
pub extern "C" fn null_im_gui_multi_select_io() -> ImGuiMultiSelectIO = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiSelectionRequest`.
pub extern "C" fn null_im_gui_selection_request() -> ImGuiSelectionRequest = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiSelectionBasicStorage`.
pub extern "C" fn null_im_gui_selection_basic_storage() -> ImGuiSelectionBasicStorage = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiSelectionExternalStorage`.
pub extern "C" fn null_im_gui_selection_external_storage() -> ImGuiSelectionExternalStorage = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawCmd`.
pub extern "C" fn null_im_draw_cmd() -> ImDrawCmd = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawVert`.
pub extern "C" fn null_im_draw_vert() -> ImDrawVert = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawCmdHeader`.
pub extern "C" fn null_im_draw_cmd_header() -> ImDrawCmdHeader = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawChannel`.
pub extern "C" fn null_im_draw_channel() -> ImDrawChannel = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawListSplitter`.
pub extern "C" fn null_im_draw_list_splitter() -> ImDrawListSplitter = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawList`.
pub extern "C" fn null_im_draw_list() -> ImDrawList = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawData`.
pub extern "C" fn null_im_draw_data() -> ImDrawData = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImTextureRect`.
pub extern "C" fn null_im_texture_rect() -> ImTextureRect = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImTextureData`.
pub extern "C" fn null_im_texture_data() -> ImTextureData = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontConfig`.
pub extern "C" fn null_im_font_config() -> ImFontConfig = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontGlyph`.
pub extern "C" fn null_im_font_glyph() -> ImFontGlyph = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontGlyphRangesBuilder`.
pub extern "C" fn null_im_font_glyph_ranges_builder() -> ImFontGlyphRangesBuilder = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontAtlasRect`.
pub extern "C" fn null_im_font_atlas_rect() -> ImFontAtlasRect = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontAtlas`.
pub extern "C" fn null_im_font_atlas() -> ImFontAtlas = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `AnonymousType1`.
pub extern "C" fn null_anonymous_type1() -> AnonymousType1 = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontBaked`.
pub extern "C" fn null_im_font_baked() -> ImFontBaked = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFont`.
pub extern "C" fn null_im_font() -> ImFont = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiViewport`.
pub extern "C" fn null_im_gui_viewport() -> ImGuiViewport = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiPlatformIO`.
pub extern "C" fn null_im_gui_platform_io() -> ImGuiPlatformIO = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiPlatformImeData`.
pub extern "C" fn null_im_gui_platform_ime_data() -> ImGuiPlatformImeData = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiInputTextCallback`.
pub extern "C" fn null_im_gui_input_text_callback() -> ImGuiInputTextCallback = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiSizeCallback`.
pub extern "C" fn null_im_gui_size_callback() -> ImGuiSizeCallback = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiMemAllocFunc`.
pub extern "C" fn null_im_gui_mem_alloc_func() -> ImGuiMemAllocFunc = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiMemFreeFunc`.
pub extern "C" fn null_im_gui_mem_free_func() -> ImGuiMemFreeFunc = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawCallback`.
pub extern "C" fn null_im_draw_callback() -> ImDrawCallback = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `BoolPtr`.
pub extern "C" fn null_bool_ptr() -> BoolPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `CString`.
pub extern "C" fn null_c_string() -> CString = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `VoidPtr`.
pub extern "C" fn null_void_ptr() -> VoidPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `VaList`.
pub extern "C" fn null_va_list() -> VaList = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `IntPtr`.
pub extern "C" fn null_int_ptr() -> IntPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `UIntPtr`.
pub extern "C" fn null_u_int_ptr() -> UIntPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `CStringPtr`.
pub extern "C" fn null_c_string_ptr() -> CStringPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `FunctionPtr`.
pub extern "C" fn null_function_ptr() -> FunctionPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `FloatPtr`.
pub extern "C" fn null_float_ptr() -> FloatPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `DoublePtr`.
pub extern "C" fn null_double_ptr() -> DoublePtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `SizeTPtr`.
pub extern "C" fn null_size_t_ptr() -> SizeTPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiMemAllocFuncPtr`.
pub extern "C" fn null_im_gui_mem_alloc_func_ptr() -> ImGuiMemAllocFuncPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiMemFreeFuncPtr`.
pub extern "C" fn null_im_gui_mem_free_func_ptr() -> ImGuiMemFreeFuncPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `VoidPtrPtr`.
pub extern "C" fn null_void_ptr_ptr() -> VoidPtrPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImStr`.
pub extern "C" fn null_im_str() -> ImStr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiIDPtr`.
pub extern "C" fn null_im_gui_id_ptr() -> ImGuiIDPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImTextureFormat`.
pub extern "C" fn null_im_texture_format() -> ImTextureFormat = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImTextureStatus`.
pub extern "C" fn null_im_texture_status() -> ImTextureStatus = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImWcharPtr`.
pub extern "C" fn null_im_wchar_ptr() -> ImWcharPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `IntPtrPtr`.
pub extern "C" fn null_int_ptr_ptr() -> IntPtrPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawIdxPtr`.
pub extern "C" fn null_im_draw_idx_ptr() -> ImDrawIdxPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImU8Ptr`.
pub extern "C" fn null_im_u8_ptr() -> ImU8Ptr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawListPtr`.
pub extern "C" fn null_im_draw_list_ptr() -> ImDrawListPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImU32Ptr`.
pub extern "C" fn null_im_u32_ptr() -> ImU32Ptr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontPtr`.
pub extern "C" fn null_im_font_ptr() -> ImFontPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImDrawListSharedDataPtr`.
pub extern "C" fn null_im_draw_list_shared_data_ptr() -> ImDrawListSharedDataPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImU16Ptr`.
pub extern "C" fn null_im_u16_ptr() -> ImU16Ptr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImFontConfigPtr`.
pub extern "C" fn null_im_font_config_ptr() -> ImFontConfigPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImTextureDataPtr`.
pub extern "C" fn null_im_texture_data_ptr() -> ImTextureDataPtr = "moonbit_dcimgui_null_pointer"

///|
/// Null pointer value for `ImGuiSelectionRequestType`.
pub extern "C" fn null_im_gui_selection_request_type() -> ImGuiSelectionRequestType = "moonbit_dcimgui_null_pointer"

///|
/// Returns the byte length of a null-terminated C string pointer.
pub extern "C" fn cstring_length(value : CString) -> Int = "moonbit_dcimgui_cstring_length"

///|
#borrow(value)
extern "C" fn raw_cstring_from_bytes(
  value : Bytes,
  offset : Int,
  len : Int,
  total_len : Int,
) -> CString = "moonbit_dcimgui_cstring_from_bytes"

///|
/// Returns true when a C string pointer is null.
pub extern "C" fn cstring_is_null(value : CString) -> Bool = "moonbit_dcimgui_cstring_is_null"

///|
#borrow(output)
extern "C" fn raw_cstring_copy(
  value : CString,
  output : Bytes,
  len : Int,
) -> Int = "moonbit_dcimgui_cstring_copy"

///|
/// Copies and decodes a null-terminated UTF-8 C string into a MoonBit string.
pub fn cstring_to_string(value : CString) -> String {
  let len = cstring_length(value)
  if len == 0 {
    ""
  } else {
    let output = Bytes::new(len)
    let copied = raw_cstring_copy(value, output, len)
    @encoding/utf8.decode_lossy(output.view(end=copied))
  }
}

///|
/// Releases a C string allocated by `OwnedCString::new`.
pub extern "C" fn cstring_free(value : CString) -> Unit = "moonbit_dcimgui_cstring_free"

///|
/// Owned null-terminated C string for generated raw APIs.
pub(all) struct OwnedCString {
  mut raw : CString
}

///|
/// Creates an owned UTF-8 C string from a MoonBit UTF-16 string.
pub fn OwnedCString::new(value : String) -> OwnedCString {
  let bytes = @encoding/utf8.encode(value)
  { raw: raw_cstring_from_bytes(bytes, 0, bytes.length(), bytes.length()) }
}

///|
/// Returns the raw C string pointer.
pub fn OwnedCString::raw(self : OwnedCString) -> CString {
  self.raw
}

///|
/// Releases this owned C string. Repeated calls are ignored.
pub fn OwnedCString::free(self : OwnedCString) -> Unit {
  if !cstring_is_null(self.raw) {
    cstring_free(self.raw)
    self.raw = null_c_string()
  }
}

///|
/// Runs a callback with a temporary owned C string.
pub fn with_cstring(value : String, body : (CString) -> Unit) -> Unit {
  let owned = OwnedCString::new(value)
  defer owned.free()
  body(owned.raw())
}

///|
/// Allocates a generated `bool*` helper.
pub extern "C" fn bool_ptr_new(value : Bool) -> BoolPtr = "moonbit_dcimgui_bool_ptr_new"

///|
/// Reads a generated `bool*` helper.
pub extern "C" fn bool_ptr_get(value : BoolPtr) -> Bool = "moonbit_dcimgui_bool_ptr_get"

///|
/// Writes a generated `bool*` helper.
pub extern "C" fn bool_ptr_set(ptr : BoolPtr, value : Bool) -> Unit = "moonbit_dcimgui_bool_ptr_set"

///|
/// Releases a generated `bool*` helper.
pub extern "C" fn bool_ptr_free(value : BoolPtr) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates a generated `int*` helper.
pub extern "C" fn int_ptr_new(value : Int) -> IntPtr = "moonbit_dcimgui_int_ptr_new"

///|
/// Reads a generated `int*` helper.
pub extern "C" fn int_ptr_get(value : IntPtr) -> Int = "moonbit_dcimgui_int_ptr_get"

///|
/// Writes a generated `int*` helper.
pub extern "C" fn int_ptr_set(ptr : IntPtr, value : Int) -> Unit = "moonbit_dcimgui_int_ptr_set"

///|
/// Releases a generated `int*` helper.
pub extern "C" fn int_ptr_free(value : IntPtr) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates a generated `unsigned int*` helper.
pub extern "C" fn uint_ptr_new(value : UInt) -> UIntPtr = "moonbit_dcimgui_uint_ptr_new"

///|
/// Reads a generated `unsigned int*` helper.
pub extern "C" fn uint_ptr_get(value : UIntPtr) -> UInt = "moonbit_dcimgui_uint_ptr_get"

///|
/// Writes a generated `unsigned int*` helper.
pub extern "C" fn uint_ptr_set(ptr : UIntPtr, value : UInt) -> Unit = "moonbit_dcimgui_uint_ptr_set"

///|
/// Releases a generated `unsigned int*` helper.
pub extern "C" fn uint_ptr_free(value : UIntPtr) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates a generated `size_t*` helper.
pub extern "C" fn size_t_ptr_new(value : UInt64) -> SizeTPtr = "moonbit_dcimgui_size_t_ptr_new"

///|
/// Reads a generated `size_t*` helper.
pub extern "C" fn size_t_ptr_get(value : SizeTPtr) -> UInt64 = "moonbit_dcimgui_size_t_ptr_get"

///|
/// Writes a generated `size_t*` helper.
pub extern "C" fn size_t_ptr_set(ptr : SizeTPtr, value : UInt64) -> Unit = "moonbit_dcimgui_size_t_ptr_set"

///|
/// Releases a generated `size_t*` helper.
pub extern "C" fn size_t_ptr_free(value : SizeTPtr) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates a generated `float*` helper.
pub extern "C" fn float_ptr_new(value : Float) -> FloatPtr = "moonbit_dcimgui_float_ptr_new"

///|
/// Reads a generated `float*` helper.
pub extern "C" fn float_ptr_get(value : FloatPtr) -> Float = "moonbit_dcimgui_float_ptr_get"

///|
/// Writes a generated `float*` helper.
pub extern "C" fn float_ptr_set(ptr : FloatPtr, value : Float) -> Unit = "moonbit_dcimgui_float_ptr_set"

///|
/// Releases a generated `float*` helper.
pub extern "C" fn float_ptr_free(value : FloatPtr) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates a generated `double*` helper.
pub extern "C" fn double_ptr_new(value : Double) -> DoublePtr = "moonbit_dcimgui_double_ptr_new"

///|
/// Reads a generated `double*` helper.
pub extern "C" fn double_ptr_get(value : DoublePtr) -> Double = "moonbit_dcimgui_double_ptr_get"

///|
/// Writes a generated `double*` helper.
pub extern "C" fn double_ptr_set(ptr : DoublePtr, value : Double) -> Unit = "moonbit_dcimgui_double_ptr_set"

///|
/// Releases a generated `double*` helper.
pub extern "C" fn double_ptr_free(value : DoublePtr) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates an `ImVec2` helper.
pub extern "C" fn im_vec2_new(x : Float, y : Float) -> ImVec2 = "moonbit_dcimgui_im_vec2_new"

///|
/// Releases an `ImVec2` helper.
pub extern "C" fn im_vec2_free(value : ImVec2) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates an `ImVec4` helper.
pub extern "C" fn im_vec4_new(
  x : Float,
  y : Float,
  z : Float,
  w : Float,
) -> ImVec4 = "moonbit_dcimgui_im_vec4_new"

///|
/// Releases an `ImVec4` helper.
pub extern "C" fn im_vec4_free(value : ImVec4) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates a generated `void**` helper.
pub extern "C" fn void_ptr_ptr_new(value : VoidPtr) -> VoidPtrPtr = "moonbit_dcimgui_void_ptr_ptr_new"

///|
/// Reads a generated `void**` helper.
pub extern "C" fn void_ptr_ptr_get(value : VoidPtrPtr) -> VoidPtr = "moonbit_dcimgui_void_ptr_ptr_get"

///|
/// Writes a generated `void**` helper.
pub extern "C" fn void_ptr_ptr_set(ptr : VoidPtrPtr, value : VoidPtr) -> Unit = "moonbit_dcimgui_void_ptr_ptr_set"

///|
/// Releases a generated `void**` helper.
pub extern "C" fn void_ptr_ptr_free(value : VoidPtrPtr) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Allocates a generated `const char**` helper.
pub extern "C" fn cstring_ptr_new(value : CString) -> CStringPtr = "moonbit_dcimgui_cstring_ptr_new"

///|
/// Reads a generated `const char**` helper.
pub extern "C" fn cstring_ptr_get(value : CStringPtr) -> CString = "moonbit_dcimgui_cstring_ptr_get"

///|
/// Writes a generated `const char**` helper.
pub extern "C" fn cstring_ptr_set(ptr : CStringPtr, value : CString) -> Unit = "moonbit_dcimgui_cstring_ptr_set"

///|
/// Releases a generated `const char**` helper.
pub extern "C" fn cstring_ptr_free(value : CStringPtr) -> Unit = "moonbit_dcimgui_ptr_free"

///|
/// Runs a callback with a temporary owned `const char**` helper.
pub fn with_cstring_ptr(value : String, body : (CStringPtr) -> Unit) -> Unit {
  let owned = OwnedCString::new(value)
  defer owned.free()
  let ptr = cstring_ptr_new(owned.raw())
  defer cstring_ptr_free(ptr)
  body(ptr)
}

///|
/// Generated binding for define `IMGUI_VERSION`.
pub fn imgui_version() -> String {
  "1.92.8"
}

///|
/// Generated binding for define `IMGUI_VERSION_NUM`.
pub fn imgui_version_num() -> Int {
  19281
}

///|
/// Generated binding for define `IMGUI_HAS_TABLE`.
pub fn imgui_has_table() -> Bool {
  true
}

///|
/// Generated binding for define `IMGUI_HAS_TEXTURES`.
pub fn imgui_has_textures() -> Bool {
  true
}

///|
/// Generated binding for define `IMGUI_API`.
pub fn imgui_api() -> Bool {
  true
}

///|
/// Generated binding for define `IMGUI_IMPL_API`.
pub fn imgui_impl_api() -> Bool {
  true
}

///|
/// Generated binding for define `IM_MSVC_RUNTIME_CHECKS_OFF`.
pub fn im_msvc_runtime_checks_off() -> Bool {
  true
}

///|
/// Generated binding for define `IM_MSVC_RUNTIME_CHECKS_RESTORE`.
pub fn im_msvc_runtime_checks_restore() -> Bool {
  true
}

///|
/// Generated binding for define `ImTextureID_Invalid`.
pub fn im_texture_id_invalid() -> UInt64 {
  0
}

///|
/// Generated binding for define `IMGUI_PAYLOAD_TYPE_COLOR_3F`.
pub fn imgui_payload_type_color_3_f() -> String {
  "_COL3F"
}

///|
/// Generated binding for define `IMGUI_PAYLOAD_TYPE_COLOR_4F`.
pub fn imgui_payload_type_color_4_f() -> String {
  "_COL4F"
}

///|
/// Generated binding for define `IM_UNICODE_CODEPOINT_INVALID`.
pub fn im_unicode_codepoint_invalid() -> Int {
  0xFFFD
}

///|
/// Generated binding for define `IM_UNICODE_CODEPOINT_MAX`.
pub fn im_unicode_codepoint_max() -> Int {
  0xFFFF
}

///|
/// Generated binding for define `IMGUI_DEFINE_MATH_OPERATORS_IMPLEMENTED`.
pub fn imgui_define_math_operators_implemented() -> Bool {
  true
}

///|
/// Generated binding for define `IM_COL32_R_SHIFT`.
pub fn im_col32_r_shift() -> Int {
  0
}

///|
/// Generated binding for define `IM_COL32_G_SHIFT`.
pub fn im_col32_g_shift() -> Int {
  8
}

///|
/// Generated binding for define `IM_COL32_B_SHIFT`.
pub fn im_col32_b_shift() -> Int {
  16
}

///|
/// Generated binding for define `IM_COL32_A_SHIFT`.
pub fn im_col32_a_shift() -> Int {
  24
}

///|
/// Generated binding for define `IM_COL32_A_MASK`.
pub fn im_col32_a_mask() -> Int64 {
  0xFF000000
}

///|
/// Generated binding for define `IM_DRAWLIST_TEX_LINES_WIDTH_MAX`.
pub fn im_drawlist_tex_lines_width_max() -> Int {
  32
}

///|
/// Generated binding for define `ImFontAtlasRectId_Invalid`.
pub fn im_font_atlas_rect_id_invalid() -> Int {
  -1
}

///|
/// Generated binding for define `IM_ARRAYSIZE`.
pub fn im_arraysize() -> Bool {
  true
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_None`.
pub fn im_gui_window_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoTitleBar`.
pub fn im_gui_window_flags_no_title_bar() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoResize`.
pub fn im_gui_window_flags_no_resize() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoMove`.
pub fn im_gui_window_flags_no_move() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoScrollbar`.
pub fn im_gui_window_flags_no_scrollbar() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoScrollWithMouse`.
pub fn im_gui_window_flags_no_scroll_with_mouse() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoCollapse`.
pub fn im_gui_window_flags_no_collapse() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_AlwaysAutoResize`.
pub fn im_gui_window_flags_always_auto_resize() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoBackground`.
pub fn im_gui_window_flags_no_background() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoSavedSettings`.
pub fn im_gui_window_flags_no_saved_settings() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoMouseInputs`.
pub fn im_gui_window_flags_no_mouse_inputs() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_MenuBar`.
pub fn im_gui_window_flags_menu_bar() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_HorizontalScrollbar`.
pub fn im_gui_window_flags_horizontal_scrollbar() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoFocusOnAppearing`.
pub fn im_gui_window_flags_no_focus_on_appearing() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoBringToFrontOnFocus`.
pub fn im_gui_window_flags_no_bring_to_front_on_focus() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_AlwaysVerticalScrollbar`.
pub fn im_gui_window_flags_always_vertical_scrollbar() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_AlwaysHorizontalScrollbar`.
pub fn im_gui_window_flags_always_horizontal_scrollbar() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoNavInputs`.
pub fn im_gui_window_flags_no_nav_inputs() -> Int {
  65536
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoNavFocus`.
pub fn im_gui_window_flags_no_nav_focus() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_UnsavedDocument`.
pub fn im_gui_window_flags_unsaved_document() -> Int {
  262144
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoNav`.
pub fn im_gui_window_flags_no_nav() -> Int {
  196608
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoDecoration`.
pub fn im_gui_window_flags_no_decoration() -> Int {
  43
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_NoInputs`.
pub fn im_gui_window_flags_no_inputs() -> Int {
  197120
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_ChildWindow`.
pub fn im_gui_window_flags_child_window() -> Int {
  16777216
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_Tooltip`.
pub fn im_gui_window_flags_tooltip() -> Int {
  33554432
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_Popup`.
pub fn im_gui_window_flags_popup() -> Int {
  67108864
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_Modal`.
pub fn im_gui_window_flags_modal() -> Int {
  134217728
}

///|
/// Generated binding for enum value `ImGuiWindowFlags_::ImGuiWindowFlags_ChildMenu`.
pub fn im_gui_window_flags_child_menu() -> Int {
  268435456
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_None`.
pub fn im_gui_child_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_Borders`.
pub fn im_gui_child_flags_borders() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_AlwaysUseWindowPadding`.
pub fn im_gui_child_flags_always_use_window_padding() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_ResizeX`.
pub fn im_gui_child_flags_resize_x() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_ResizeY`.
pub fn im_gui_child_flags_resize_y() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_AutoResizeX`.
pub fn im_gui_child_flags_auto_resize_x() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_AutoResizeY`.
pub fn im_gui_child_flags_auto_resize_y() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_AlwaysAutoResize`.
pub fn im_gui_child_flags_always_auto_resize() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_FrameStyle`.
pub fn im_gui_child_flags_frame_style() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiChildFlags_::ImGuiChildFlags_NavFlattened`.
pub fn im_gui_child_flags_nav_flattened() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiItemFlags_::ImGuiItemFlags_None`.
pub fn im_gui_item_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiItemFlags_::ImGuiItemFlags_NoTabStop`.
pub fn im_gui_item_flags_no_tab_stop() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiItemFlags_::ImGuiItemFlags_NoNav`.
pub fn im_gui_item_flags_no_nav() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiItemFlags_::ImGuiItemFlags_NoNavDefaultFocus`.
pub fn im_gui_item_flags_no_nav_default_focus() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiItemFlags_::ImGuiItemFlags_ButtonRepeat`.
pub fn im_gui_item_flags_button_repeat() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiItemFlags_::ImGuiItemFlags_AutoClosePopups`.
pub fn im_gui_item_flags_auto_close_popups() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiItemFlags_::ImGuiItemFlags_AllowDuplicateId`.
pub fn im_gui_item_flags_allow_duplicate_id() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiItemFlags_::ImGuiItemFlags_Disabled`.
pub fn im_gui_item_flags_disabled() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_None`.
pub fn im_gui_input_text_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CharsDecimal`.
pub fn im_gui_input_text_flags_chars_decimal() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CharsHexadecimal`.
pub fn im_gui_input_text_flags_chars_hexadecimal() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CharsScientific`.
pub fn im_gui_input_text_flags_chars_scientific() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CharsUppercase`.
pub fn im_gui_input_text_flags_chars_uppercase() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CharsNoBlank`.
pub fn im_gui_input_text_flags_chars_no_blank() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_AllowTabInput`.
pub fn im_gui_input_text_flags_allow_tab_input() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_EnterReturnsTrue`.
pub fn im_gui_input_text_flags_enter_returns_true() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_EscapeClearsAll`.
pub fn im_gui_input_text_flags_escape_clears_all() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CtrlEnterForNewLine`.
pub fn im_gui_input_text_flags_ctrl_enter_for_new_line() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_ReadOnly`.
pub fn im_gui_input_text_flags_read_only() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_Password`.
pub fn im_gui_input_text_flags_password() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_AlwaysOverwrite`.
pub fn im_gui_input_text_flags_always_overwrite() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_AutoSelectAll`.
pub fn im_gui_input_text_flags_auto_select_all() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_ParseEmptyRefVal`.
pub fn im_gui_input_text_flags_parse_empty_ref_val() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_DisplayEmptyRefVal`.
pub fn im_gui_input_text_flags_display_empty_ref_val() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_NoHorizontalScroll`.
pub fn im_gui_input_text_flags_no_horizontal_scroll() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_NoUndoRedo`.
pub fn im_gui_input_text_flags_no_undo_redo() -> Int {
  65536
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_ElideLeft`.
pub fn im_gui_input_text_flags_elide_left() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CallbackCompletion`.
pub fn im_gui_input_text_flags_callback_completion() -> Int {
  262144
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CallbackHistory`.
pub fn im_gui_input_text_flags_callback_history() -> Int {
  524288
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CallbackAlways`.
pub fn im_gui_input_text_flags_callback_always() -> Int {
  1048576
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CallbackCharFilter`.
pub fn im_gui_input_text_flags_callback_char_filter() -> Int {
  2097152
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CallbackResize`.
pub fn im_gui_input_text_flags_callback_resize() -> Int {
  4194304
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_CallbackEdit`.
pub fn im_gui_input_text_flags_callback_edit() -> Int {
  8388608
}

///|
/// Generated binding for enum value `ImGuiInputTextFlags_::ImGuiInputTextFlags_WordWrap`.
pub fn im_gui_input_text_flags_word_wrap() -> Int {
  16777216
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_None`.
pub fn im_gui_tree_node_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_Selected`.
pub fn im_gui_tree_node_flags_selected() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_Framed`.
pub fn im_gui_tree_node_flags_framed() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_AllowOverlap`.
pub fn im_gui_tree_node_flags_allow_overlap() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_NoTreePushOnOpen`.
pub fn im_gui_tree_node_flags_no_tree_push_on_open() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_NoAutoOpenOnLog`.
pub fn im_gui_tree_node_flags_no_auto_open_on_log() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_DefaultOpen`.
pub fn im_gui_tree_node_flags_default_open() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_OpenOnDoubleClick`.
pub fn im_gui_tree_node_flags_open_on_double_click() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_OpenOnArrow`.
pub fn im_gui_tree_node_flags_open_on_arrow() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_Leaf`.
pub fn im_gui_tree_node_flags_leaf() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_Bullet`.
pub fn im_gui_tree_node_flags_bullet() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_FramePadding`.
pub fn im_gui_tree_node_flags_frame_padding() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_SpanAvailWidth`.
pub fn im_gui_tree_node_flags_span_avail_width() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_SpanFullWidth`.
pub fn im_gui_tree_node_flags_span_full_width() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_SpanLabelWidth`.
pub fn im_gui_tree_node_flags_span_label_width() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_SpanAllColumns`.
pub fn im_gui_tree_node_flags_span_all_columns() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_LabelSpanAllColumns`.
pub fn im_gui_tree_node_flags_label_span_all_columns() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_NavLeftJumpsToParent`.
pub fn im_gui_tree_node_flags_nav_left_jumps_to_parent() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_CollapsingHeader`.
pub fn im_gui_tree_node_flags_collapsing_header() -> Int {
  26
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_DrawLinesNone`.
pub fn im_gui_tree_node_flags_draw_lines_none() -> Int {
  262144
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_DrawLinesFull`.
pub fn im_gui_tree_node_flags_draw_lines_full() -> Int {
  524288
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_DrawLinesToNodes`.
pub fn im_gui_tree_node_flags_draw_lines_to_nodes() -> Int {
  1048576
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_NavLeftJumpsBackHere`.
pub fn im_gui_tree_node_flags_nav_left_jumps_back_here() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiTreeNodeFlags_::ImGuiTreeNodeFlags_SpanTextWidth`.
pub fn im_gui_tree_node_flags_span_text_width() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_None`.
pub fn im_gui_popup_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_MouseButtonLeft`.
pub fn im_gui_popup_flags_mouse_button_left() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_MouseButtonRight`.
pub fn im_gui_popup_flags_mouse_button_right() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_MouseButtonMiddle`.
pub fn im_gui_popup_flags_mouse_button_middle() -> Int {
  12
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_NoReopen`.
pub fn im_gui_popup_flags_no_reopen() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_NoOpenOverExistingPopup`.
pub fn im_gui_popup_flags_no_open_over_existing_popup() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_NoOpenOverItems`.
pub fn im_gui_popup_flags_no_open_over_items() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_AnyPopupId`.
pub fn im_gui_popup_flags_any_popup_id() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_AnyPopupLevel`.
pub fn im_gui_popup_flags_any_popup_level() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_AnyPopup`.
pub fn im_gui_popup_flags_any_popup() -> Int {
  3072
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_MouseButtonShift_`.
pub fn im_gui_popup_flags_mouse_button_shift() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_MouseButtonMask_`.
pub fn im_gui_popup_flags_mouse_button_mask() -> Int {
  12
}

///|
/// Generated binding for enum value `ImGuiPopupFlags_::ImGuiPopupFlags_InvalidMask_`.
pub fn im_gui_popup_flags_invalid_mask() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_None`.
pub fn im_gui_selectable_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_NoAutoClosePopups`.
pub fn im_gui_selectable_flags_no_auto_close_popups() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_SpanAllColumns`.
pub fn im_gui_selectable_flags_span_all_columns() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_AllowDoubleClick`.
pub fn im_gui_selectable_flags_allow_double_click() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_Disabled`.
pub fn im_gui_selectable_flags_disabled() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_AllowOverlap`.
pub fn im_gui_selectable_flags_allow_overlap() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_Highlight`.
pub fn im_gui_selectable_flags_highlight() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_SelectOnNav`.
pub fn im_gui_selectable_flags_select_on_nav() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiSelectableFlags_::ImGuiSelectableFlags_DontClosePopups`.
pub fn im_gui_selectable_flags_dont_close_popups() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_None`.
pub fn im_gui_combo_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_PopupAlignLeft`.
pub fn im_gui_combo_flags_popup_align_left() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_HeightSmall`.
pub fn im_gui_combo_flags_height_small() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_HeightRegular`.
pub fn im_gui_combo_flags_height_regular() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_HeightLarge`.
pub fn im_gui_combo_flags_height_large() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_HeightLargest`.
pub fn im_gui_combo_flags_height_largest() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_NoArrowButton`.
pub fn im_gui_combo_flags_no_arrow_button() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_NoPreview`.
pub fn im_gui_combo_flags_no_preview() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_WidthFitPreview`.
pub fn im_gui_combo_flags_width_fit_preview() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiComboFlags_::ImGuiComboFlags_HeightMask_`.
pub fn im_gui_combo_flags_height_mask() -> Int {
  30
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_None`.
pub fn im_gui_tab_bar_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_Reorderable`.
pub fn im_gui_tab_bar_flags_reorderable() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_AutoSelectNewTabs`.
pub fn im_gui_tab_bar_flags_auto_select_new_tabs() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_TabListPopupButton`.
pub fn im_gui_tab_bar_flags_tab_list_popup_button() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_NoCloseWithMiddleMouseButton`.
pub fn im_gui_tab_bar_flags_no_close_with_middle_mouse_button() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_NoTabListScrollingButtons`.
pub fn im_gui_tab_bar_flags_no_tab_list_scrolling_buttons() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_NoTooltip`.
pub fn im_gui_tab_bar_flags_no_tooltip() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_DrawSelectedOverline`.
pub fn im_gui_tab_bar_flags_draw_selected_overline() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_FittingPolicyMixed`.
pub fn im_gui_tab_bar_flags_fitting_policy_mixed() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_FittingPolicyShrink`.
pub fn im_gui_tab_bar_flags_fitting_policy_shrink() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_FittingPolicyScroll`.
pub fn im_gui_tab_bar_flags_fitting_policy_scroll() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_FittingPolicyMask_`.
pub fn im_gui_tab_bar_flags_fitting_policy_mask() -> Int {
  896
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_FittingPolicyDefault_`.
pub fn im_gui_tab_bar_flags_fitting_policy_default() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiTabBarFlags_::ImGuiTabBarFlags_FittingPolicyResizeDown`.
pub fn im_gui_tab_bar_flags_fitting_policy_resize_down() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_None`.
pub fn im_gui_tab_item_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_UnsavedDocument`.
pub fn im_gui_tab_item_flags_unsaved_document() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_SetSelected`.
pub fn im_gui_tab_item_flags_set_selected() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_NoCloseWithMiddleMouseButton`.
pub fn im_gui_tab_item_flags_no_close_with_middle_mouse_button() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_NoPushId`.
pub fn im_gui_tab_item_flags_no_push_id() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_NoTooltip`.
pub fn im_gui_tab_item_flags_no_tooltip() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_NoReorder`.
pub fn im_gui_tab_item_flags_no_reorder() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_Leading`.
pub fn im_gui_tab_item_flags_leading() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_Trailing`.
pub fn im_gui_tab_item_flags_trailing() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiTabItemFlags_::ImGuiTabItemFlags_NoAssumedClosure`.
pub fn im_gui_tab_item_flags_no_assumed_closure() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiFocusedFlags_::ImGuiFocusedFlags_None`.
pub fn im_gui_focused_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiFocusedFlags_::ImGuiFocusedFlags_ChildWindows`.
pub fn im_gui_focused_flags_child_windows() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiFocusedFlags_::ImGuiFocusedFlags_RootWindow`.
pub fn im_gui_focused_flags_root_window() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiFocusedFlags_::ImGuiFocusedFlags_AnyWindow`.
pub fn im_gui_focused_flags_any_window() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiFocusedFlags_::ImGuiFocusedFlags_NoPopupHierarchy`.
pub fn im_gui_focused_flags_no_popup_hierarchy() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiFocusedFlags_::ImGuiFocusedFlags_RootAndChildWindows`.
pub fn im_gui_focused_flags_root_and_child_windows() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_None`.
pub fn im_gui_hovered_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_ChildWindows`.
pub fn im_gui_hovered_flags_child_windows() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_RootWindow`.
pub fn im_gui_hovered_flags_root_window() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_AnyWindow`.
pub fn im_gui_hovered_flags_any_window() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_NoPopupHierarchy`.
pub fn im_gui_hovered_flags_no_popup_hierarchy() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_AllowWhenBlockedByPopup`.
pub fn im_gui_hovered_flags_allow_when_blocked_by_popup() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_AllowWhenBlockedByActiveItem`.
pub fn im_gui_hovered_flags_allow_when_blocked_by_active_item() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_AllowWhenOverlappedByItem`.
pub fn im_gui_hovered_flags_allow_when_overlapped_by_item() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_AllowWhenOverlappedByWindow`.
pub fn im_gui_hovered_flags_allow_when_overlapped_by_window() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_AllowWhenDisabled`.
pub fn im_gui_hovered_flags_allow_when_disabled() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_NoNavOverride`.
pub fn im_gui_hovered_flags_no_nav_override() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_AllowWhenOverlapped`.
pub fn im_gui_hovered_flags_allow_when_overlapped() -> Int {
  768
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_RectOnly`.
pub fn im_gui_hovered_flags_rect_only() -> Int {
  928
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_RootAndChildWindows`.
pub fn im_gui_hovered_flags_root_and_child_windows() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_ForTooltip`.
pub fn im_gui_hovered_flags_for_tooltip() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_Stationary`.
pub fn im_gui_hovered_flags_stationary() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_DelayNone`.
pub fn im_gui_hovered_flags_delay_none() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_DelayShort`.
pub fn im_gui_hovered_flags_delay_short() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_DelayNormal`.
pub fn im_gui_hovered_flags_delay_normal() -> Int {
  65536
}

///|
/// Generated binding for enum value `ImGuiHoveredFlags_::ImGuiHoveredFlags_NoSharedDelay`.
pub fn im_gui_hovered_flags_no_shared_delay() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_None`.
pub fn im_gui_drag_drop_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_SourceNoPreviewTooltip`.
pub fn im_gui_drag_drop_flags_source_no_preview_tooltip() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_SourceNoDisableHover`.
pub fn im_gui_drag_drop_flags_source_no_disable_hover() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_SourceNoHoldToOpenOthers`.
pub fn im_gui_drag_drop_flags_source_no_hold_to_open_others() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_SourceAllowNullID`.
pub fn im_gui_drag_drop_flags_source_allow_null_id() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_SourceExtern`.
pub fn im_gui_drag_drop_flags_source_extern() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_PayloadAutoExpire`.
pub fn im_gui_drag_drop_flags_payload_auto_expire() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_PayloadNoCrossContext`.
pub fn im_gui_drag_drop_flags_payload_no_cross_context() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_PayloadNoCrossProcess`.
pub fn im_gui_drag_drop_flags_payload_no_cross_process() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_AcceptBeforeDelivery`.
pub fn im_gui_drag_drop_flags_accept_before_delivery() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_AcceptNoDrawDefaultRect`.
pub fn im_gui_drag_drop_flags_accept_no_draw_default_rect() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_AcceptNoPreviewTooltip`.
pub fn im_gui_drag_drop_flags_accept_no_preview_tooltip() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_AcceptDrawAsHovered`.
pub fn im_gui_drag_drop_flags_accept_draw_as_hovered() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_AcceptPeekOnly`.
pub fn im_gui_drag_drop_flags_accept_peek_only() -> Int {
  3072
}

///|
/// Generated binding for enum value `ImGuiDragDropFlags_::ImGuiDragDropFlags_SourceAutoExpirePayload`.
pub fn im_gui_drag_drop_flags_source_auto_expire_payload() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_S8`.
pub fn im_gui_data_type_s8() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_U8`.
pub fn im_gui_data_type_u8() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_S16`.
pub fn im_gui_data_type_s16() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_U16`.
pub fn im_gui_data_type_u16() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_S32`.
pub fn im_gui_data_type_s32() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_U32`.
pub fn im_gui_data_type_u32() -> Int {
  5
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_S64`.
pub fn im_gui_data_type_s64() -> Int {
  6
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_U64`.
pub fn im_gui_data_type_u64() -> Int {
  7
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_Float`.
pub fn im_gui_data_type_float() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_Double`.
pub fn im_gui_data_type_double() -> Int {
  9
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_Bool`.
pub fn im_gui_data_type_bool() -> Int {
  10
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_String`.
pub fn im_gui_data_type_string() -> Int {
  11
}

///|
/// Generated binding for enum value `ImGuiDataType_::ImGuiDataType_COUNT`.
pub fn im_gui_data_type_count() -> Int {
  12
}

///|
/// Generated binding for enum value `ImGuiDir::ImGuiDir_None`.
pub fn im_gui_dir_none() -> Int {
  -1
}

///|
/// Generated binding for enum value `ImGuiDir::ImGuiDir_Left`.
pub fn im_gui_dir_left() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiDir::ImGuiDir_Right`.
pub fn im_gui_dir_right() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiDir::ImGuiDir_Up`.
pub fn im_gui_dir_up() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiDir::ImGuiDir_Down`.
pub fn im_gui_dir_down() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiDir::ImGuiDir_COUNT`.
pub fn im_gui_dir_count() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiSortDirection::ImGuiSortDirection_None`.
pub fn im_gui_sort_direction_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiSortDirection::ImGuiSortDirection_Ascending`.
pub fn im_gui_sort_direction_ascending() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiSortDirection::ImGuiSortDirection_Descending`.
pub fn im_gui_sort_direction_descending() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_None`.
pub fn im_gui_key_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_NamedKey_BEGIN`.
pub fn im_gui_key_named_key_begin() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Tab`.
pub fn im_gui_key_tab() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_LeftArrow`.
pub fn im_gui_key_left_arrow() -> Int {
  513
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_RightArrow`.
pub fn im_gui_key_right_arrow() -> Int {
  514
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_UpArrow`.
pub fn im_gui_key_up_arrow() -> Int {
  515
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_DownArrow`.
pub fn im_gui_key_down_arrow() -> Int {
  516
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_PageUp`.
pub fn im_gui_key_page_up() -> Int {
  517
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_PageDown`.
pub fn im_gui_key_page_down() -> Int {
  518
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Home`.
pub fn im_gui_key_home() -> Int {
  519
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_End`.
pub fn im_gui_key_end() -> Int {
  520
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Insert`.
pub fn im_gui_key_insert() -> Int {
  521
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Delete`.
pub fn im_gui_key_delete() -> Int {
  522
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Backspace`.
pub fn im_gui_key_backspace() -> Int {
  523
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Space`.
pub fn im_gui_key_space() -> Int {
  524
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Enter`.
pub fn im_gui_key_enter() -> Int {
  525
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Escape`.
pub fn im_gui_key_escape() -> Int {
  526
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_LeftCtrl`.
pub fn im_gui_key_left_ctrl() -> Int {
  527
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_LeftShift`.
pub fn im_gui_key_left_shift() -> Int {
  528
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_LeftAlt`.
pub fn im_gui_key_left_alt() -> Int {
  529
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_LeftSuper`.
pub fn im_gui_key_left_super() -> Int {
  530
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_RightCtrl`.
pub fn im_gui_key_right_ctrl() -> Int {
  531
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_RightShift`.
pub fn im_gui_key_right_shift() -> Int {
  532
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_RightAlt`.
pub fn im_gui_key_right_alt() -> Int {
  533
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_RightSuper`.
pub fn im_gui_key_right_super() -> Int {
  534
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Menu`.
pub fn im_gui_key_menu() -> Int {
  535
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_0`.
pub fn im_gui_key_0() -> Int {
  536
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_1`.
pub fn im_gui_key_1() -> Int {
  537
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_2`.
pub fn im_gui_key_2() -> Int {
  538
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_3`.
pub fn im_gui_key_3() -> Int {
  539
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_4`.
pub fn im_gui_key_4() -> Int {
  540
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_5`.
pub fn im_gui_key_5() -> Int {
  541
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_6`.
pub fn im_gui_key_6() -> Int {
  542
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_7`.
pub fn im_gui_key_7() -> Int {
  543
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_8`.
pub fn im_gui_key_8() -> Int {
  544
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_9`.
pub fn im_gui_key_9() -> Int {
  545
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_A`.
pub fn im_gui_key_a() -> Int {
  546
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_B`.
pub fn im_gui_key_b() -> Int {
  547
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_C`.
pub fn im_gui_key_c() -> Int {
  548
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_D`.
pub fn im_gui_key_d() -> Int {
  549
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_E`.
pub fn im_gui_key_e() -> Int {
  550
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F`.
pub fn im_gui_key_f() -> Int {
  551
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_G`.
pub fn im_gui_key_g() -> Int {
  552
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_H`.
pub fn im_gui_key_h() -> Int {
  553
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_I`.
pub fn im_gui_key_i() -> Int {
  554
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_J`.
pub fn im_gui_key_j() -> Int {
  555
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_K`.
pub fn im_gui_key_k() -> Int {
  556
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_L`.
pub fn im_gui_key_l() -> Int {
  557
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_M`.
pub fn im_gui_key_m() -> Int {
  558
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_N`.
pub fn im_gui_key_n() -> Int {
  559
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_O`.
pub fn im_gui_key_o() -> Int {
  560
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_P`.
pub fn im_gui_key_p() -> Int {
  561
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Q`.
pub fn im_gui_key_q() -> Int {
  562
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_R`.
pub fn im_gui_key_r() -> Int {
  563
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_S`.
pub fn im_gui_key_s() -> Int {
  564
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_T`.
pub fn im_gui_key_t() -> Int {
  565
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_U`.
pub fn im_gui_key_u() -> Int {
  566
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_V`.
pub fn im_gui_key_v() -> Int {
  567
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_W`.
pub fn im_gui_key_w() -> Int {
  568
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_X`.
pub fn im_gui_key_x() -> Int {
  569
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Y`.
pub fn im_gui_key_y() -> Int {
  570
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Z`.
pub fn im_gui_key_z() -> Int {
  571
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F1`.
pub fn im_gui_key_f1() -> Int {
  572
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F2`.
pub fn im_gui_key_f2() -> Int {
  573
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F3`.
pub fn im_gui_key_f3() -> Int {
  574
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F4`.
pub fn im_gui_key_f4() -> Int {
  575
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F5`.
pub fn im_gui_key_f5() -> Int {
  576
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F6`.
pub fn im_gui_key_f6() -> Int {
  577
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F7`.
pub fn im_gui_key_f7() -> Int {
  578
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F8`.
pub fn im_gui_key_f8() -> Int {
  579
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F9`.
pub fn im_gui_key_f9() -> Int {
  580
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F10`.
pub fn im_gui_key_f10() -> Int {
  581
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F11`.
pub fn im_gui_key_f11() -> Int {
  582
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F12`.
pub fn im_gui_key_f12() -> Int {
  583
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F13`.
pub fn im_gui_key_f13() -> Int {
  584
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F14`.
pub fn im_gui_key_f14() -> Int {
  585
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F15`.
pub fn im_gui_key_f15() -> Int {
  586
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F16`.
pub fn im_gui_key_f16() -> Int {
  587
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F17`.
pub fn im_gui_key_f17() -> Int {
  588
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F18`.
pub fn im_gui_key_f18() -> Int {
  589
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F19`.
pub fn im_gui_key_f19() -> Int {
  590
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F20`.
pub fn im_gui_key_f20() -> Int {
  591
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F21`.
pub fn im_gui_key_f21() -> Int {
  592
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F22`.
pub fn im_gui_key_f22() -> Int {
  593
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F23`.
pub fn im_gui_key_f23() -> Int {
  594
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_F24`.
pub fn im_gui_key_f24() -> Int {
  595
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Apostrophe`.
pub fn im_gui_key_apostrophe() -> Int {
  596
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Comma`.
pub fn im_gui_key_comma() -> Int {
  597
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Minus`.
pub fn im_gui_key_minus() -> Int {
  598
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Period`.
pub fn im_gui_key_period() -> Int {
  599
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Slash`.
pub fn im_gui_key_slash() -> Int {
  600
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Semicolon`.
pub fn im_gui_key_semicolon() -> Int {
  601
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Equal`.
pub fn im_gui_key_equal() -> Int {
  602
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_LeftBracket`.
pub fn im_gui_key_left_bracket() -> Int {
  603
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Backslash`.
pub fn im_gui_key_backslash() -> Int {
  604
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_RightBracket`.
pub fn im_gui_key_right_bracket() -> Int {
  605
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GraveAccent`.
pub fn im_gui_key_grave_accent() -> Int {
  606
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_CapsLock`.
pub fn im_gui_key_caps_lock() -> Int {
  607
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_ScrollLock`.
pub fn im_gui_key_scroll_lock() -> Int {
  608
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_NumLock`.
pub fn im_gui_key_num_lock() -> Int {
  609
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_PrintScreen`.
pub fn im_gui_key_print_screen() -> Int {
  610
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Pause`.
pub fn im_gui_key_pause() -> Int {
  611
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad0`.
pub fn im_gui_key_keypad0() -> Int {
  612
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad1`.
pub fn im_gui_key_keypad1() -> Int {
  613
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad2`.
pub fn im_gui_key_keypad2() -> Int {
  614
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad3`.
pub fn im_gui_key_keypad3() -> Int {
  615
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad4`.
pub fn im_gui_key_keypad4() -> Int {
  616
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad5`.
pub fn im_gui_key_keypad5() -> Int {
  617
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad6`.
pub fn im_gui_key_keypad6() -> Int {
  618
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad7`.
pub fn im_gui_key_keypad7() -> Int {
  619
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad8`.
pub fn im_gui_key_keypad8() -> Int {
  620
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Keypad9`.
pub fn im_gui_key_keypad9() -> Int {
  621
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_KeypadDecimal`.
pub fn im_gui_key_keypad_decimal() -> Int {
  622
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_KeypadDivide`.
pub fn im_gui_key_keypad_divide() -> Int {
  623
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_KeypadMultiply`.
pub fn im_gui_key_keypad_multiply() -> Int {
  624
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_KeypadSubtract`.
pub fn im_gui_key_keypad_subtract() -> Int {
  625
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_KeypadAdd`.
pub fn im_gui_key_keypad_add() -> Int {
  626
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_KeypadEnter`.
pub fn im_gui_key_keypad_enter() -> Int {
  627
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_KeypadEqual`.
pub fn im_gui_key_keypad_equal() -> Int {
  628
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_AppBack`.
pub fn im_gui_key_app_back() -> Int {
  629
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_AppForward`.
pub fn im_gui_key_app_forward() -> Int {
  630
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_Oem102`.
pub fn im_gui_key_oem102() -> Int {
  631
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadStart`.
pub fn im_gui_key_gamepad_start() -> Int {
  632
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadBack`.
pub fn im_gui_key_gamepad_back() -> Int {
  633
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadFaceLeft`.
pub fn im_gui_key_gamepad_face_left() -> Int {
  634
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadFaceRight`.
pub fn im_gui_key_gamepad_face_right() -> Int {
  635
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadFaceUp`.
pub fn im_gui_key_gamepad_face_up() -> Int {
  636
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadFaceDown`.
pub fn im_gui_key_gamepad_face_down() -> Int {
  637
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadDpadLeft`.
pub fn im_gui_key_gamepad_dpad_left() -> Int {
  638
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadDpadRight`.
pub fn im_gui_key_gamepad_dpad_right() -> Int {
  639
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadDpadUp`.
pub fn im_gui_key_gamepad_dpad_up() -> Int {
  640
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadDpadDown`.
pub fn im_gui_key_gamepad_dpad_down() -> Int {
  641
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadL1`.
pub fn im_gui_key_gamepad_l1() -> Int {
  642
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadR1`.
pub fn im_gui_key_gamepad_r1() -> Int {
  643
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadL2`.
pub fn im_gui_key_gamepad_l2() -> Int {
  644
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadR2`.
pub fn im_gui_key_gamepad_r2() -> Int {
  645
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadL3`.
pub fn im_gui_key_gamepad_l3() -> Int {
  646
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadR3`.
pub fn im_gui_key_gamepad_r3() -> Int {
  647
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadLStickLeft`.
pub fn im_gui_key_gamepad_l_stick_left() -> Int {
  648
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadLStickRight`.
pub fn im_gui_key_gamepad_l_stick_right() -> Int {
  649
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadLStickUp`.
pub fn im_gui_key_gamepad_l_stick_up() -> Int {
  650
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadLStickDown`.
pub fn im_gui_key_gamepad_l_stick_down() -> Int {
  651
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadRStickLeft`.
pub fn im_gui_key_gamepad_r_stick_left() -> Int {
  652
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadRStickRight`.
pub fn im_gui_key_gamepad_r_stick_right() -> Int {
  653
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadRStickUp`.
pub fn im_gui_key_gamepad_r_stick_up() -> Int {
  654
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_GamepadRStickDown`.
pub fn im_gui_key_gamepad_r_stick_down() -> Int {
  655
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_MouseLeft`.
pub fn im_gui_key_mouse_left() -> Int {
  656
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_MouseRight`.
pub fn im_gui_key_mouse_right() -> Int {
  657
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_MouseMiddle`.
pub fn im_gui_key_mouse_middle() -> Int {
  658
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_MouseX1`.
pub fn im_gui_key_mouse_x1() -> Int {
  659
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_MouseX2`.
pub fn im_gui_key_mouse_x2() -> Int {
  660
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_MouseWheelX`.
pub fn im_gui_key_mouse_wheel_x() -> Int {
  661
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_MouseWheelY`.
pub fn im_gui_key_mouse_wheel_y() -> Int {
  662
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_ReservedForModCtrl`.
pub fn im_gui_key_reserved_for_mod_ctrl() -> Int {
  663
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_ReservedForModShift`.
pub fn im_gui_key_reserved_for_mod_shift() -> Int {
  664
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_ReservedForModAlt`.
pub fn im_gui_key_reserved_for_mod_alt() -> Int {
  665
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_ReservedForModSuper`.
pub fn im_gui_key_reserved_for_mod_super() -> Int {
  666
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_NamedKey_END`.
pub fn im_gui_key_named_key_end() -> Int {
  667
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_NamedKey_COUNT`.
pub fn im_gui_key_named_key_count() -> Int {
  155
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiMod_None`.
pub fn im_gui_mod_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiMod_Ctrl`.
pub fn im_gui_mod_ctrl() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiMod_Shift`.
pub fn im_gui_mod_shift() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiMod_Alt`.
pub fn im_gui_mod_alt() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiMod_Super`.
pub fn im_gui_mod_super() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiMod_Mask_`.
pub fn im_gui_mod_mask() -> Int {
  61440
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiKey_COUNT`.
pub fn im_gui_key_count() -> Int {
  667
}

///|
/// Generated binding for enum value `ImGuiKey::ImGuiMod_Shortcut`.
pub fn im_gui_mod_shortcut() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_None`.
pub fn im_gui_input_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_Repeat`.
pub fn im_gui_input_flags_repeat() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_RouteActive`.
pub fn im_gui_input_flags_route_active() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_RouteFocused`.
pub fn im_gui_input_flags_route_focused() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_RouteGlobal`.
pub fn im_gui_input_flags_route_global() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_RouteAlways`.
pub fn im_gui_input_flags_route_always() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_RouteOverFocused`.
pub fn im_gui_input_flags_route_over_focused() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_RouteOverActive`.
pub fn im_gui_input_flags_route_over_active() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_RouteUnlessBgFocused`.
pub fn im_gui_input_flags_route_unless_bg_focused() -> Int {
  65536
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_RouteFromRootWindow`.
pub fn im_gui_input_flags_route_from_root_window() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiInputFlags_::ImGuiInputFlags_Tooltip`.
pub fn im_gui_input_flags_tooltip() -> Int {
  262144
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_None`.
pub fn im_gui_config_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_NavEnableKeyboard`.
pub fn im_gui_config_flags_nav_enable_keyboard() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_NavEnableGamepad`.
pub fn im_gui_config_flags_nav_enable_gamepad() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_NoMouse`.
pub fn im_gui_config_flags_no_mouse() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_NoMouseCursorChange`.
pub fn im_gui_config_flags_no_mouse_cursor_change() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_NoKeyboard`.
pub fn im_gui_config_flags_no_keyboard() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_IsSRGB`.
pub fn im_gui_config_flags_is_srgb() -> Int {
  1048576
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_IsTouchScreen`.
pub fn im_gui_config_flags_is_touch_screen() -> Int {
  2097152
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_NavEnableSetMousePos`.
pub fn im_gui_config_flags_nav_enable_set_mouse_pos() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiConfigFlags_::ImGuiConfigFlags_NavNoCaptureKeyboard`.
pub fn im_gui_config_flags_nav_no_capture_keyboard() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiBackendFlags_::ImGuiBackendFlags_None`.
pub fn im_gui_backend_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiBackendFlags_::ImGuiBackendFlags_HasGamepad`.
pub fn im_gui_backend_flags_has_gamepad() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiBackendFlags_::ImGuiBackendFlags_HasMouseCursors`.
pub fn im_gui_backend_flags_has_mouse_cursors() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiBackendFlags_::ImGuiBackendFlags_HasSetMousePos`.
pub fn im_gui_backend_flags_has_set_mouse_pos() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiBackendFlags_::ImGuiBackendFlags_RendererHasVtxOffset`.
pub fn im_gui_backend_flags_renderer_has_vtx_offset() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiBackendFlags_::ImGuiBackendFlags_RendererHasTextures`.
pub fn im_gui_backend_flags_renderer_has_textures() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_Text`.
pub fn im_gui_col_text() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TextDisabled`.
pub fn im_gui_col_text_disabled() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_WindowBg`.
pub fn im_gui_col_window_bg() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ChildBg`.
pub fn im_gui_col_child_bg() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_PopupBg`.
pub fn im_gui_col_popup_bg() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_Border`.
pub fn im_gui_col_border() -> Int {
  5
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_BorderShadow`.
pub fn im_gui_col_border_shadow() -> Int {
  6
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_FrameBg`.
pub fn im_gui_col_frame_bg() -> Int {
  7
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_FrameBgHovered`.
pub fn im_gui_col_frame_bg_hovered() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_FrameBgActive`.
pub fn im_gui_col_frame_bg_active() -> Int {
  9
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TitleBg`.
pub fn im_gui_col_title_bg() -> Int {
  10
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TitleBgActive`.
pub fn im_gui_col_title_bg_active() -> Int {
  11
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TitleBgCollapsed`.
pub fn im_gui_col_title_bg_collapsed() -> Int {
  12
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_MenuBarBg`.
pub fn im_gui_col_menu_bar_bg() -> Int {
  13
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ScrollbarBg`.
pub fn im_gui_col_scrollbar_bg() -> Int {
  14
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ScrollbarGrab`.
pub fn im_gui_col_scrollbar_grab() -> Int {
  15
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ScrollbarGrabHovered`.
pub fn im_gui_col_scrollbar_grab_hovered() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ScrollbarGrabActive`.
pub fn im_gui_col_scrollbar_grab_active() -> Int {
  17
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_CheckMark`.
pub fn im_gui_col_check_mark() -> Int {
  18
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_CheckboxSelectedBg`.
pub fn im_gui_col_checkbox_selected_bg() -> Int {
  19
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_SliderGrab`.
pub fn im_gui_col_slider_grab() -> Int {
  20
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_SliderGrabActive`.
pub fn im_gui_col_slider_grab_active() -> Int {
  21
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_Button`.
pub fn im_gui_col_button() -> Int {
  22
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ButtonHovered`.
pub fn im_gui_col_button_hovered() -> Int {
  23
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ButtonActive`.
pub fn im_gui_col_button_active() -> Int {
  24
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_Header`.
pub fn im_gui_col_header() -> Int {
  25
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_HeaderHovered`.
pub fn im_gui_col_header_hovered() -> Int {
  26
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_HeaderActive`.
pub fn im_gui_col_header_active() -> Int {
  27
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_Separator`.
pub fn im_gui_col_separator() -> Int {
  28
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_SeparatorHovered`.
pub fn im_gui_col_separator_hovered() -> Int {
  29
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_SeparatorActive`.
pub fn im_gui_col_separator_active() -> Int {
  30
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ResizeGrip`.
pub fn im_gui_col_resize_grip() -> Int {
  31
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ResizeGripHovered`.
pub fn im_gui_col_resize_grip_hovered() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ResizeGripActive`.
pub fn im_gui_col_resize_grip_active() -> Int {
  33
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_InputTextCursor`.
pub fn im_gui_col_input_text_cursor() -> Int {
  34
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabHovered`.
pub fn im_gui_col_tab_hovered() -> Int {
  35
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_Tab`.
pub fn im_gui_col_tab() -> Int {
  36
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabSelected`.
pub fn im_gui_col_tab_selected() -> Int {
  37
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabSelectedOverline`.
pub fn im_gui_col_tab_selected_overline() -> Int {
  38
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabDimmed`.
pub fn im_gui_col_tab_dimmed() -> Int {
  39
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabDimmedSelected`.
pub fn im_gui_col_tab_dimmed_selected() -> Int {
  40
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabDimmedSelectedOverline`.
pub fn im_gui_col_tab_dimmed_selected_overline() -> Int {
  41
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_PlotLines`.
pub fn im_gui_col_plot_lines() -> Int {
  42
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_PlotLinesHovered`.
pub fn im_gui_col_plot_lines_hovered() -> Int {
  43
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_PlotHistogram`.
pub fn im_gui_col_plot_histogram() -> Int {
  44
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_PlotHistogramHovered`.
pub fn im_gui_col_plot_histogram_hovered() -> Int {
  45
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TableHeaderBg`.
pub fn im_gui_col_table_header_bg() -> Int {
  46
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TableBorderStrong`.
pub fn im_gui_col_table_border_strong() -> Int {
  47
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TableBorderLight`.
pub fn im_gui_col_table_border_light() -> Int {
  48
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TableRowBg`.
pub fn im_gui_col_table_row_bg() -> Int {
  49
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TableRowBgAlt`.
pub fn im_gui_col_table_row_bg_alt() -> Int {
  50
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TextLink`.
pub fn im_gui_col_text_link() -> Int {
  51
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TextSelectedBg`.
pub fn im_gui_col_text_selected_bg() -> Int {
  52
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TreeLines`.
pub fn im_gui_col_tree_lines() -> Int {
  53
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_DragDropTarget`.
pub fn im_gui_col_drag_drop_target() -> Int {
  54
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_DragDropTargetBg`.
pub fn im_gui_col_drag_drop_target_bg() -> Int {
  55
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_UnsavedMarker`.
pub fn im_gui_col_unsaved_marker() -> Int {
  56
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_NavCursor`.
pub fn im_gui_col_nav_cursor() -> Int {
  57
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_NavWindowingHighlight`.
pub fn im_gui_col_nav_windowing_highlight() -> Int {
  58
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_NavWindowingDimBg`.
pub fn im_gui_col_nav_windowing_dim_bg() -> Int {
  59
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_ModalWindowDimBg`.
pub fn im_gui_col_modal_window_dim_bg() -> Int {
  60
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_COUNT`.
pub fn im_gui_col_count() -> Int {
  61
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabActive`.
pub fn im_gui_col_tab_active() -> Int {
  37
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabUnfocused`.
pub fn im_gui_col_tab_unfocused() -> Int {
  39
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_TabUnfocusedActive`.
pub fn im_gui_col_tab_unfocused_active() -> Int {
  40
}

///|
/// Generated binding for enum value `ImGuiCol_::ImGuiCol_NavHighlight`.
pub fn im_gui_col_nav_highlight() -> Int {
  57
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_Alpha`.
pub fn im_gui_style_var_alpha() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_DisabledAlpha`.
pub fn im_gui_style_var_disabled_alpha() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_WindowPadding`.
pub fn im_gui_style_var_window_padding() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_WindowRounding`.
pub fn im_gui_style_var_window_rounding() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_WindowBorderSize`.
pub fn im_gui_style_var_window_border_size() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_WindowMinSize`.
pub fn im_gui_style_var_window_min_size() -> Int {
  5
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_WindowTitleAlign`.
pub fn im_gui_style_var_window_title_align() -> Int {
  6
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ChildRounding`.
pub fn im_gui_style_var_child_rounding() -> Int {
  7
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ChildBorderSize`.
pub fn im_gui_style_var_child_border_size() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_PopupRounding`.
pub fn im_gui_style_var_popup_rounding() -> Int {
  9
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_PopupBorderSize`.
pub fn im_gui_style_var_popup_border_size() -> Int {
  10
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_FramePadding`.
pub fn im_gui_style_var_frame_padding() -> Int {
  11
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_FrameRounding`.
pub fn im_gui_style_var_frame_rounding() -> Int {
  12
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_FrameBorderSize`.
pub fn im_gui_style_var_frame_border_size() -> Int {
  13
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ItemSpacing`.
pub fn im_gui_style_var_item_spacing() -> Int {
  14
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ItemInnerSpacing`.
pub fn im_gui_style_var_item_inner_spacing() -> Int {
  15
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_IndentSpacing`.
pub fn im_gui_style_var_indent_spacing() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_CellPadding`.
pub fn im_gui_style_var_cell_padding() -> Int {
  17
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ScrollbarSize`.
pub fn im_gui_style_var_scrollbar_size() -> Int {
  18
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ScrollbarRounding`.
pub fn im_gui_style_var_scrollbar_rounding() -> Int {
  19
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ScrollbarPadding`.
pub fn im_gui_style_var_scrollbar_padding() -> Int {
  20
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_GrabMinSize`.
pub fn im_gui_style_var_grab_min_size() -> Int {
  21
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_GrabRounding`.
pub fn im_gui_style_var_grab_rounding() -> Int {
  22
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ImageRounding`.
pub fn im_gui_style_var_image_rounding() -> Int {
  23
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ImageBorderSize`.
pub fn im_gui_style_var_image_border_size() -> Int {
  24
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TabRounding`.
pub fn im_gui_style_var_tab_rounding() -> Int {
  25
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TabBorderSize`.
pub fn im_gui_style_var_tab_border_size() -> Int {
  26
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TabMinWidthBase`.
pub fn im_gui_style_var_tab_min_width_base() -> Int {
  27
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TabMinWidthShrink`.
pub fn im_gui_style_var_tab_min_width_shrink() -> Int {
  28
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TabBarBorderSize`.
pub fn im_gui_style_var_tab_bar_border_size() -> Int {
  29
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TabBarOverlineSize`.
pub fn im_gui_style_var_tab_bar_overline_size() -> Int {
  30
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TableAngledHeadersAngle`.
pub fn im_gui_style_var_table_angled_headers_angle() -> Int {
  31
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TableAngledHeadersTextAlign`.
pub fn im_gui_style_var_table_angled_headers_text_align() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TreeLinesSize`.
pub fn im_gui_style_var_tree_lines_size() -> Int {
  33
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_TreeLinesRounding`.
pub fn im_gui_style_var_tree_lines_rounding() -> Int {
  34
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_DragDropTargetRounding`.
pub fn im_gui_style_var_drag_drop_target_rounding() -> Int {
  35
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_ButtonTextAlign`.
pub fn im_gui_style_var_button_text_align() -> Int {
  36
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_SelectableTextAlign`.
pub fn im_gui_style_var_selectable_text_align() -> Int {
  37
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_SeparatorSize`.
pub fn im_gui_style_var_separator_size() -> Int {
  38
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_SeparatorTextBorderSize`.
pub fn im_gui_style_var_separator_text_border_size() -> Int {
  39
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_SeparatorTextAlign`.
pub fn im_gui_style_var_separator_text_align() -> Int {
  40
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_SeparatorTextPadding`.
pub fn im_gui_style_var_separator_text_padding() -> Int {
  41
}

///|
/// Generated binding for enum value `ImGuiStyleVar_::ImGuiStyleVar_COUNT`.
pub fn im_gui_style_var_count() -> Int {
  42
}

///|
/// Generated binding for enum value `ImGuiButtonFlags_::ImGuiButtonFlags_None`.
pub fn im_gui_button_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiButtonFlags_::ImGuiButtonFlags_MouseButtonLeft`.
pub fn im_gui_button_flags_mouse_button_left() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiButtonFlags_::ImGuiButtonFlags_MouseButtonRight`.
pub fn im_gui_button_flags_mouse_button_right() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiButtonFlags_::ImGuiButtonFlags_MouseButtonMiddle`.
pub fn im_gui_button_flags_mouse_button_middle() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiButtonFlags_::ImGuiButtonFlags_MouseButtonMask_`.
pub fn im_gui_button_flags_mouse_button_mask() -> Int {
  7
}

///|
/// Generated binding for enum value `ImGuiButtonFlags_::ImGuiButtonFlags_EnableNav`.
pub fn im_gui_button_flags_enable_nav() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiButtonFlags_::ImGuiButtonFlags_AllowOverlap`.
pub fn im_gui_button_flags_allow_overlap() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_None`.
pub fn im_gui_color_edit_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoAlpha`.
pub fn im_gui_color_edit_flags_no_alpha() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoPicker`.
pub fn im_gui_color_edit_flags_no_picker() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoOptions`.
pub fn im_gui_color_edit_flags_no_options() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoSmallPreview`.
pub fn im_gui_color_edit_flags_no_small_preview() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoInputs`.
pub fn im_gui_color_edit_flags_no_inputs() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoTooltip`.
pub fn im_gui_color_edit_flags_no_tooltip() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoLabel`.
pub fn im_gui_color_edit_flags_no_label() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoSidePreview`.
pub fn im_gui_color_edit_flags_no_side_preview() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoDragDrop`.
pub fn im_gui_color_edit_flags_no_drag_drop() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoBorder`.
pub fn im_gui_color_edit_flags_no_border() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_NoColorMarkers`.
pub fn im_gui_color_edit_flags_no_color_markers() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_AlphaOpaque`.
pub fn im_gui_color_edit_flags_alpha_opaque() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_AlphaNoBg`.
pub fn im_gui_color_edit_flags_alpha_no_bg() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_AlphaPreviewHalf`.
pub fn im_gui_color_edit_flags_alpha_preview_half() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_AlphaBar`.
pub fn im_gui_color_edit_flags_alpha_bar() -> Int {
  262144
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_HDR`.
pub fn im_gui_color_edit_flags_hdr() -> Int {
  524288
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_DisplayRGB`.
pub fn im_gui_color_edit_flags_display_rgb() -> Int {
  1048576
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_DisplayHSV`.
pub fn im_gui_color_edit_flags_display_hsv() -> Int {
  2097152
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_DisplayHex`.
pub fn im_gui_color_edit_flags_display_hex() -> Int {
  4194304
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_Uint8`.
pub fn im_gui_color_edit_flags_uint8() -> Int {
  8388608
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_Float`.
pub fn im_gui_color_edit_flags_float() -> Int {
  16777216
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_PickerHueBar`.
pub fn im_gui_color_edit_flags_picker_hue_bar() -> Int {
  33554432
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_PickerHueWheel`.
pub fn im_gui_color_edit_flags_picker_hue_wheel() -> Int {
  67108864
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_InputRGB`.
pub fn im_gui_color_edit_flags_input_rgb() -> Int {
  134217728
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_InputHSV`.
pub fn im_gui_color_edit_flags_input_hsv() -> Int {
  268435456
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_DefaultOptions_`.
pub fn im_gui_color_edit_flags_default_options() -> Int {
  177209344
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_AlphaMask_`.
pub fn im_gui_color_edit_flags_alpha_mask() -> Int {
  28674
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_DisplayMask_`.
pub fn im_gui_color_edit_flags_display_mask() -> Int {
  7340032
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_DataTypeMask_`.
pub fn im_gui_color_edit_flags_data_type_mask() -> Int {
  25165824
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_PickerMask_`.
pub fn im_gui_color_edit_flags_picker_mask() -> Int {
  100663296
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_InputMask_`.
pub fn im_gui_color_edit_flags_input_mask() -> Int {
  402653184
}

///|
/// Generated binding for enum value `ImGuiColorEditFlags_::ImGuiColorEditFlags_AlphaPreview`.
pub fn im_gui_color_edit_flags_alpha_preview() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_None`.
pub fn im_gui_slider_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_Logarithmic`.
pub fn im_gui_slider_flags_logarithmic() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_NoRoundToFormat`.
pub fn im_gui_slider_flags_no_round_to_format() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_NoInput`.
pub fn im_gui_slider_flags_no_input() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_WrapAround`.
pub fn im_gui_slider_flags_wrap_around() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_ClampOnInput`.
pub fn im_gui_slider_flags_clamp_on_input() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_ClampZeroRange`.
pub fn im_gui_slider_flags_clamp_zero_range() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_NoSpeedTweaks`.
pub fn im_gui_slider_flags_no_speed_tweaks() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_ColorMarkers`.
pub fn im_gui_slider_flags_color_markers() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_AlwaysClamp`.
pub fn im_gui_slider_flags_always_clamp() -> Int {
  1536
}

///|
/// Generated binding for enum value `ImGuiSliderFlags_::ImGuiSliderFlags_InvalidMask_`.
pub fn im_gui_slider_flags_invalid_mask() -> Int {
  1879048207
}

///|
/// Generated binding for enum value `ImGuiMouseButton_::ImGuiMouseButton_Left`.
pub fn im_gui_mouse_button_left() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiMouseButton_::ImGuiMouseButton_Right`.
pub fn im_gui_mouse_button_right() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiMouseButton_::ImGuiMouseButton_Middle`.
pub fn im_gui_mouse_button_middle() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiMouseButton_::ImGuiMouseButton_COUNT`.
pub fn im_gui_mouse_button_count() -> Int {
  5
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_None`.
pub fn im_gui_mouse_cursor_none() -> Int {
  -1
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_Arrow`.
pub fn im_gui_mouse_cursor_arrow() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_TextInput`.
pub fn im_gui_mouse_cursor_text_input() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_ResizeAll`.
pub fn im_gui_mouse_cursor_resize_all() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_ResizeNS`.
pub fn im_gui_mouse_cursor_resize_ns() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_ResizeEW`.
pub fn im_gui_mouse_cursor_resize_ew() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_ResizeNESW`.
pub fn im_gui_mouse_cursor_resize_nesw() -> Int {
  5
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_ResizeNWSE`.
pub fn im_gui_mouse_cursor_resize_nwse() -> Int {
  6
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_Hand`.
pub fn im_gui_mouse_cursor_hand() -> Int {
  7
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_Wait`.
pub fn im_gui_mouse_cursor_wait() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_Progress`.
pub fn im_gui_mouse_cursor_progress() -> Int {
  9
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_NotAllowed`.
pub fn im_gui_mouse_cursor_not_allowed() -> Int {
  10
}

///|
/// Generated binding for enum value `ImGuiMouseCursor_::ImGuiMouseCursor_COUNT`.
pub fn im_gui_mouse_cursor_count() -> Int {
  11
}

///|
/// Generated binding for enum value `ImGuiMouseSource::ImGuiMouseSource_Mouse`.
pub fn im_gui_mouse_source_mouse() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiMouseSource::ImGuiMouseSource_TouchScreen`.
pub fn im_gui_mouse_source_touch_screen() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiMouseSource::ImGuiMouseSource_Pen`.
pub fn im_gui_mouse_source_pen() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiMouseSource::ImGuiMouseSource_COUNT`.
pub fn im_gui_mouse_source_count() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiCond_::ImGuiCond_None`.
pub fn im_gui_cond_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiCond_::ImGuiCond_Always`.
pub fn im_gui_cond_always() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiCond_::ImGuiCond_Once`.
pub fn im_gui_cond_once() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiCond_::ImGuiCond_FirstUseEver`.
pub fn im_gui_cond_first_use_ever() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiCond_::ImGuiCond_Appearing`.
pub fn im_gui_cond_appearing() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_None`.
pub fn im_gui_table_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_Resizable`.
pub fn im_gui_table_flags_resizable() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_Reorderable`.
pub fn im_gui_table_flags_reorderable() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_Hideable`.
pub fn im_gui_table_flags_hideable() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_Sortable`.
pub fn im_gui_table_flags_sortable() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoSavedSettings`.
pub fn im_gui_table_flags_no_saved_settings() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_ContextMenuInBody`.
pub fn im_gui_table_flags_context_menu_in_body() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_RowBg`.
pub fn im_gui_table_flags_row_bg() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_BordersInnerH`.
pub fn im_gui_table_flags_borders_inner_h() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_BordersOuterH`.
pub fn im_gui_table_flags_borders_outer_h() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_BordersInnerV`.
pub fn im_gui_table_flags_borders_inner_v() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_BordersOuterV`.
pub fn im_gui_table_flags_borders_outer_v() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_BordersH`.
pub fn im_gui_table_flags_borders_h() -> Int {
  384
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_BordersV`.
pub fn im_gui_table_flags_borders_v() -> Int {
  1536
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_BordersInner`.
pub fn im_gui_table_flags_borders_inner() -> Int {
  640
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_BordersOuter`.
pub fn im_gui_table_flags_borders_outer() -> Int {
  1280
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_Borders`.
pub fn im_gui_table_flags_borders() -> Int {
  1920
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoBordersInBody`.
pub fn im_gui_table_flags_no_borders_in_body() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoBordersInBodyUntilResize`.
pub fn im_gui_table_flags_no_borders_in_body_until_resize() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_SizingFixedFit`.
pub fn im_gui_table_flags_sizing_fixed_fit() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_SizingFixedSame`.
pub fn im_gui_table_flags_sizing_fixed_same() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_SizingStretchProp`.
pub fn im_gui_table_flags_sizing_stretch_prop() -> Int {
  24576
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_SizingStretchSame`.
pub fn im_gui_table_flags_sizing_stretch_same() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoHostExtendX`.
pub fn im_gui_table_flags_no_host_extend_x() -> Int {
  65536
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoHostExtendY`.
pub fn im_gui_table_flags_no_host_extend_y() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoKeepColumnsVisible`.
pub fn im_gui_table_flags_no_keep_columns_visible() -> Int {
  262144
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_PreciseWidths`.
pub fn im_gui_table_flags_precise_widths() -> Int {
  524288
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoClip`.
pub fn im_gui_table_flags_no_clip() -> Int {
  1048576
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_PadOuterX`.
pub fn im_gui_table_flags_pad_outer_x() -> Int {
  2097152
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoPadOuterX`.
pub fn im_gui_table_flags_no_pad_outer_x() -> Int {
  4194304
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_NoPadInnerX`.
pub fn im_gui_table_flags_no_pad_inner_x() -> Int {
  8388608
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_ScrollX`.
pub fn im_gui_table_flags_scroll_x() -> Int {
  16777216
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_ScrollY`.
pub fn im_gui_table_flags_scroll_y() -> Int {
  33554432
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_SortMulti`.
pub fn im_gui_table_flags_sort_multi() -> Int {
  67108864
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_SortTristate`.
pub fn im_gui_table_flags_sort_tristate() -> Int {
  134217728
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_HighlightHoveredColumn`.
pub fn im_gui_table_flags_highlight_hovered_column() -> Int {
  268435456
}

///|
/// Generated binding for enum value `ImGuiTableFlags_::ImGuiTableFlags_SizingMask_`.
pub fn im_gui_table_flags_sizing_mask() -> Int {
  57344
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_None`.
pub fn im_gui_table_column_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_Disabled`.
pub fn im_gui_table_column_flags_disabled() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_DefaultHide`.
pub fn im_gui_table_column_flags_default_hide() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_DefaultSort`.
pub fn im_gui_table_column_flags_default_sort() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_WidthStretch`.
pub fn im_gui_table_column_flags_width_stretch() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_WidthFixed`.
pub fn im_gui_table_column_flags_width_fixed() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoResize`.
pub fn im_gui_table_column_flags_no_resize() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoReorder`.
pub fn im_gui_table_column_flags_no_reorder() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoHide`.
pub fn im_gui_table_column_flags_no_hide() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoClip`.
pub fn im_gui_table_column_flags_no_clip() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoSort`.
pub fn im_gui_table_column_flags_no_sort() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoSortAscending`.
pub fn im_gui_table_column_flags_no_sort_ascending() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoSortDescending`.
pub fn im_gui_table_column_flags_no_sort_descending() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoHeaderLabel`.
pub fn im_gui_table_column_flags_no_header_label() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoHeaderWidth`.
pub fn im_gui_table_column_flags_no_header_width() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_PreferSortAscending`.
pub fn im_gui_table_column_flags_prefer_sort_ascending() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_PreferSortDescending`.
pub fn im_gui_table_column_flags_prefer_sort_descending() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_IndentEnable`.
pub fn im_gui_table_column_flags_indent_enable() -> Int {
  65536
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_IndentDisable`.
pub fn im_gui_table_column_flags_indent_disable() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_AngledHeader`.
pub fn im_gui_table_column_flags_angled_header() -> Int {
  262144
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_IsEnabled`.
pub fn im_gui_table_column_flags_is_enabled() -> Int {
  16777216
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_IsVisible`.
pub fn im_gui_table_column_flags_is_visible() -> Int {
  33554432
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_IsSorted`.
pub fn im_gui_table_column_flags_is_sorted() -> Int {
  67108864
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_IsHovered`.
pub fn im_gui_table_column_flags_is_hovered() -> Int {
  134217728
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_WidthMask_`.
pub fn im_gui_table_column_flags_width_mask() -> Int {
  24
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_IndentMask_`.
pub fn im_gui_table_column_flags_indent_mask() -> Int {
  196608
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_StatusMask_`.
pub fn im_gui_table_column_flags_status_mask() -> Int {
  251658240
}

///|
/// Generated binding for enum value `ImGuiTableColumnFlags_::ImGuiTableColumnFlags_NoDirectResize_`.
pub fn im_gui_table_column_flags_no_direct_resize() -> Int {
  1073741824
}

///|
/// Generated binding for enum value `ImGuiTableRowFlags_::ImGuiTableRowFlags_None`.
pub fn im_gui_table_row_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiTableRowFlags_::ImGuiTableRowFlags_Headers`.
pub fn im_gui_table_row_flags_headers() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiTableBgTarget_::ImGuiTableBgTarget_None`.
pub fn im_gui_table_bg_target_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiTableBgTarget_::ImGuiTableBgTarget_RowBg0`.
pub fn im_gui_table_bg_target_row_bg0() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiTableBgTarget_::ImGuiTableBgTarget_RowBg1`.
pub fn im_gui_table_bg_target_row_bg1() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiTableBgTarget_::ImGuiTableBgTarget_CellBg`.
pub fn im_gui_table_bg_target_cell_bg() -> Int {
  3
}

///|
/// Generated binding for enum value `ImGuiListClipperFlags_::ImGuiListClipperFlags_None`.
pub fn im_gui_list_clipper_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiListClipperFlags_::ImGuiListClipperFlags_NoSetTableRowCounters`.
pub fn im_gui_list_clipper_flags_no_set_table_row_counters() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_None`.
pub fn im_gui_multi_select_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_SingleSelect`.
pub fn im_gui_multi_select_flags_single_select() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_NoSelectAll`.
pub fn im_gui_multi_select_flags_no_select_all() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_NoRangeSelect`.
pub fn im_gui_multi_select_flags_no_range_select() -> Int {
  4
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_NoAutoSelect`.
pub fn im_gui_multi_select_flags_no_auto_select() -> Int {
  8
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_NoAutoClear`.
pub fn im_gui_multi_select_flags_no_auto_clear() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_NoAutoClearOnReselect`.
pub fn im_gui_multi_select_flags_no_auto_clear_on_reselect() -> Int {
  32
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_BoxSelect1d`.
pub fn im_gui_multi_select_flags_box_select1d() -> Int {
  64
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_BoxSelect2d`.
pub fn im_gui_multi_select_flags_box_select2d() -> Int {
  128
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_BoxSelectNoScroll`.
pub fn im_gui_multi_select_flags_box_select_no_scroll() -> Int {
  256
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_ClearOnEscape`.
pub fn im_gui_multi_select_flags_clear_on_escape() -> Int {
  512
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_ClearOnClickVoid`.
pub fn im_gui_multi_select_flags_clear_on_click_void() -> Int {
  1024
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_ScopeWindow`.
pub fn im_gui_multi_select_flags_scope_window() -> Int {
  2048
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_ScopeRect`.
pub fn im_gui_multi_select_flags_scope_rect() -> Int {
  4096
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_SelectOnAuto`.
pub fn im_gui_multi_select_flags_select_on_auto() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_SelectOnClickAlways`.
pub fn im_gui_multi_select_flags_select_on_click_always() -> Int {
  16384
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_SelectOnClickRelease`.
pub fn im_gui_multi_select_flags_select_on_click_release() -> Int {
  32768
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_NavWrapX`.
pub fn im_gui_multi_select_flags_nav_wrap_x() -> Int {
  65536
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_NoSelectOnRightClick`.
pub fn im_gui_multi_select_flags_no_select_on_right_click() -> Int {
  131072
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_SelectOnMask_`.
pub fn im_gui_multi_select_flags_select_on_mask() -> Int {
  57344
}

///|
/// Generated binding for enum value `ImGuiMultiSelectFlags_::ImGuiMultiSelectFlags_SelectOnClick`.
pub fn im_gui_multi_select_flags_select_on_click() -> Int {
  8192
}

///|
/// Generated binding for enum value `ImGuiSelectionRequestType::ImGuiSelectionRequestType_None`.
pub fn im_gui_selection_request_type_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiSelectionRequestType::ImGuiSelectionRequestType_SetAll`.
pub fn im_gui_selection_request_type_set_all() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiSelectionRequestType::ImGuiSelectionRequestType_SetRange`.
pub fn im_gui_selection_request_type_set_range() -> Int {
  2
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_None`.
pub fn im_draw_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersTopLeft`.
pub fn im_draw_flags_round_corners_top_left() -> Int {
  16
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersTopRight`.
pub fn im_draw_flags_round_corners_top_right() -> Int {
  32
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersBottomLeft`.
pub fn im_draw_flags_round_corners_bottom_left() -> Int {
  64
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersBottomRight`.
pub fn im_draw_flags_round_corners_bottom_right() -> Int {
  128
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersNone`.
pub fn im_draw_flags_round_corners_none() -> Int {
  256
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersAll`.
pub fn im_draw_flags_round_corners_all() -> Int {
  240
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersDefault_`.
pub fn im_draw_flags_round_corners_default() -> Int {
  240
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersTop`.
pub fn im_draw_flags_round_corners_top() -> Int {
  48
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersBottom`.
pub fn im_draw_flags_round_corners_bottom() -> Int {
  192
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersLeft`.
pub fn im_draw_flags_round_corners_left() -> Int {
  80
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersRight`.
pub fn im_draw_flags_round_corners_right() -> Int {
  160
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_RoundCornersMask_`.
pub fn im_draw_flags_round_corners_mask() -> Int {
  496
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_Closed`.
pub fn im_draw_flags_closed() -> Int {
  512
}

///|
/// Generated binding for enum value `ImDrawFlags_::ImDrawFlags_InvalidMask_`.
pub fn im_draw_flags_invalid_mask() -> Int64 {
  2147483663
}

///|
/// Generated binding for enum value `ImDrawListFlags_::ImDrawListFlags_None`.
pub fn im_draw_list_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImDrawListFlags_::ImDrawListFlags_AntiAliasedLines`.
pub fn im_draw_list_flags_anti_aliased_lines() -> Int {
  1
}

///|
/// Generated binding for enum value `ImDrawListFlags_::ImDrawListFlags_AntiAliasedLinesUseTex`.
pub fn im_draw_list_flags_anti_aliased_lines_use_tex() -> Int {
  2
}

///|
/// Generated binding for enum value `ImDrawListFlags_::ImDrawListFlags_AntiAliasedFill`.
pub fn im_draw_list_flags_anti_aliased_fill() -> Int {
  4
}

///|
/// Generated binding for enum value `ImDrawListFlags_::ImDrawListFlags_AllowVtxOffset`.
pub fn im_draw_list_flags_allow_vtx_offset() -> Int {
  8
}

///|
/// Generated binding for enum value `ImTextureFormat::ImTextureFormat_RGBA32`.
pub fn im_texture_format_rgba32() -> Int {
  0
}

///|
/// Generated binding for enum value `ImTextureFormat::ImTextureFormat_Alpha8`.
pub fn im_texture_format_alpha8() -> Int {
  1
}

///|
/// Generated binding for enum value `ImTextureStatus::ImTextureStatus_OK`.
pub fn im_texture_status_ok() -> Int {
  0
}

///|
/// Generated binding for enum value `ImTextureStatus::ImTextureStatus_Destroyed`.
pub fn im_texture_status_destroyed() -> Int {
  1
}

///|
/// Generated binding for enum value `ImTextureStatus::ImTextureStatus_WantCreate`.
pub fn im_texture_status_want_create() -> Int {
  2
}

///|
/// Generated binding for enum value `ImTextureStatus::ImTextureStatus_WantUpdates`.
pub fn im_texture_status_want_updates() -> Int {
  3
}

///|
/// Generated binding for enum value `ImTextureStatus::ImTextureStatus_WantDestroy`.
pub fn im_texture_status_want_destroy() -> Int {
  4
}

///|
/// Generated binding for enum value `ImFontAtlasFlags_::ImFontAtlasFlags_None`.
pub fn im_font_atlas_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImFontAtlasFlags_::ImFontAtlasFlags_NoPowerOfTwoHeight`.
pub fn im_font_atlas_flags_no_power_of_two_height() -> Int {
  1
}

///|
/// Generated binding for enum value `ImFontAtlasFlags_::ImFontAtlasFlags_NoMouseCursors`.
pub fn im_font_atlas_flags_no_mouse_cursors() -> Int {
  2
}

///|
/// Generated binding for enum value `ImFontAtlasFlags_::ImFontAtlasFlags_NoBakedLines`.
pub fn im_font_atlas_flags_no_baked_lines() -> Int {
  4
}

///|
/// Generated binding for enum value `ImFontFlags_::ImFontFlags_None`.
pub fn im_font_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImFontFlags_::ImFontFlags_NoLoadError`.
pub fn im_font_flags_no_load_error() -> Int {
  2
}

///|
/// Generated binding for enum value `ImFontFlags_::ImFontFlags_NoLoadGlyphs`.
pub fn im_font_flags_no_load_glyphs() -> Int {
  4
}

///|
/// Generated binding for enum value `ImFontFlags_::ImFontFlags_LockBakedSizes`.
pub fn im_font_flags_lock_baked_sizes() -> Int {
  8
}

///|
/// Generated binding for enum value `ImFontFlags_::ImFontFlags_ImplicitRefSize`.
pub fn im_font_flags_implicit_ref_size() -> Int {
  16
}

///|
/// Generated binding for enum value `ImGuiViewportFlags_::ImGuiViewportFlags_None`.
pub fn im_gui_viewport_flags_none() -> Int {
  0
}

///|
/// Generated binding for enum value `ImGuiViewportFlags_::ImGuiViewportFlags_IsPlatformWindow`.
pub fn im_gui_viewport_flags_is_platform_window() -> Int {
  1
}

///|
/// Generated binding for enum value `ImGuiViewportFlags_::ImGuiViewportFlags_IsPlatformMonitor`.
pub fn im_gui_viewport_flags_is_platform_monitor() -> Int {
  2
}

///|
/// Generated binding for enum value `ImGuiViewportFlags_::ImGuiViewportFlags_OwnedByApp`.
pub fn im_gui_viewport_flags_owned_by_app() -> Int {
  4
}

///|
/// Generated raw binding for `ImTextureRef_GetTexID`.
pub extern "C" fn im_texture_ref_get_tex_id(_p0 : ImTextureRef) -> UInt64 = "ImTextureRef_GetTexID"

///|
/// Generated raw binding for `ImGui_CreateContext`.
pub extern "C" fn im_gui_create_context(_p0 : ImFontAtlas) -> ImGuiContext = "ImGui_CreateContext"

///|
/// Generated raw binding for `ImGui_DestroyContext`.
pub extern "C" fn im_gui_destroy_context(_p0 : ImGuiContext) -> Unit = "ImGui_DestroyContext"

///|
/// Generated raw binding for `ImGui_GetCurrentContext`.
pub extern "C" fn im_gui_get_current_context() -> ImGuiContext = "ImGui_GetCurrentContext"

///|
/// Generated raw binding for `ImGui_SetCurrentContext`.
pub extern "C" fn im_gui_set_current_context(_p0 : ImGuiContext) -> Unit = "ImGui_SetCurrentContext"

///|
/// Generated raw binding for `ImGui_GetIO`.
pub extern "C" fn im_gui_get_io() -> ImGuiIO = "ImGui_GetIO"

///|
/// Generated raw binding for `ImGui_GetPlatformIO`.
pub extern "C" fn im_gui_get_platform_io() -> ImGuiPlatformIO = "ImGui_GetPlatformIO"

///|
/// Generated raw binding for `ImGui_GetStyle`.
pub extern "C" fn im_gui_get_style() -> ImGuiStyle = "ImGui_GetStyle"

///|
/// Generated raw binding for `ImGui_NewFrame`.
pub extern "C" fn im_gui_new_frame() -> Unit = "ImGui_NewFrame"

///|
/// Generated raw binding for `ImGui_EndFrame`.
pub extern "C" fn im_gui_end_frame() -> Unit = "ImGui_EndFrame"

///|
/// Generated raw binding for `ImGui_Render`.
pub extern "C" fn im_gui_render() -> Unit = "ImGui_Render"

///|
/// Generated raw binding for `ImGui_GetDrawData`.
pub extern "C" fn im_gui_get_draw_data() -> ImDrawData = "ImGui_GetDrawData"

///|
/// Generated raw binding for `ImGui_ShowDemoWindow`.
pub extern "C" fn im_gui_show_demo_window(_p0 : BoolPtr) -> Unit = "ImGui_ShowDemoWindow"

///|
/// Generated raw binding for `ImGui_ShowMetricsWindow`.
pub extern "C" fn im_gui_show_metrics_window(_p0 : BoolPtr) -> Unit = "ImGui_ShowMetricsWindow"

///|
/// Generated raw binding for `ImGui_ShowDebugLogWindow`.
pub extern "C" fn im_gui_show_debug_log_window(_p0 : BoolPtr) -> Unit = "ImGui_ShowDebugLogWindow"

///|
/// Generated raw binding for `ImGui_ShowIDStackToolWindow`.
pub extern "C" fn im_gui_show_id_stack_tool_window() -> Unit = "ImGui_ShowIDStackToolWindow"

///|
/// Generated raw binding for `ImGui_ShowIDStackToolWindowEx`.
pub extern "C" fn im_gui_show_id_stack_tool_window_ex(_p0 : BoolPtr) -> Unit = "ImGui_ShowIDStackToolWindowEx"

///|
/// Generated raw binding for `ImGui_ShowAboutWindow`.
pub extern "C" fn im_gui_show_about_window(_p0 : BoolPtr) -> Unit = "ImGui_ShowAboutWindow"

///|
/// Generated raw binding for `ImGui_ShowStyleEditor`.
pub extern "C" fn im_gui_show_style_editor(_p0 : ImGuiStyle) -> Unit = "ImGui_ShowStyleEditor"

///|
/// Generated raw binding for `ImGui_ShowStyleSelector`.
pub extern "C" fn im_gui_show_style_selector(_p0 : CString) -> Bool = "ImGui_ShowStyleSelector"

///|
/// Generated raw binding for `ImGui_ShowFontSelector`.
pub extern "C" fn im_gui_show_font_selector(_p0 : CString) -> Unit = "ImGui_ShowFontSelector"

///|
/// Generated raw binding for `ImGui_ShowUserGuide`.
pub extern "C" fn im_gui_show_user_guide() -> Unit = "ImGui_ShowUserGuide"

///|
/// Generated raw binding for `ImGui_GetVersion`.
pub extern "C" fn im_gui_get_version() -> CString = "ImGui_GetVersion"

///|
/// Generated raw binding for `ImGui_StyleColorsDark`.
pub extern "C" fn im_gui_style_colors_dark(_p0 : ImGuiStyle) -> Unit = "ImGui_StyleColorsDark"

///|
/// Generated raw binding for `ImGui_StyleColorsLight`.
pub extern "C" fn im_gui_style_colors_light(_p0 : ImGuiStyle) -> Unit = "ImGui_StyleColorsLight"

///|
/// Generated raw binding for `ImGui_StyleColorsClassic`.
pub extern "C" fn im_gui_style_colors_classic(_p0 : ImGuiStyle) -> Unit = "ImGui_StyleColorsClassic"

///|
/// Generated raw binding for `ImGui_Begin`.
pub extern "C" fn im_gui_begin(_p0 : CString, _p1 : BoolPtr, _p2 : Int) -> Bool = "ImGui_Begin"

///|
/// Generated raw binding for `ImGui_End`.
pub extern "C" fn im_gui_end() -> Unit = "ImGui_End"

///|
/// Generated raw binding for `ImGui_BeginChild`.
pub extern "C" fn im_gui_begin_child(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_BeginChild"

///|
/// Generated raw binding for `ImGui_BeginChildID`.
pub extern "C" fn im_gui_begin_child_id(
  _p0 : UInt,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_BeginChildID"

///|
/// Generated raw binding for `ImGui_EndChild`.
pub extern "C" fn im_gui_end_child() -> Unit = "ImGui_EndChild"

///|
/// Generated raw binding for `ImGui_IsWindowAppearing`.
pub extern "C" fn im_gui_is_window_appearing() -> Bool = "ImGui_IsWindowAppearing"

///|
/// Generated raw binding for `ImGui_IsWindowCollapsed`.
pub extern "C" fn im_gui_is_window_collapsed() -> Bool = "ImGui_IsWindowCollapsed"

///|
/// Generated raw binding for `ImGui_IsWindowFocused`.
pub extern "C" fn im_gui_is_window_focused(_p0 : Int) -> Bool = "ImGui_IsWindowFocused"

///|
/// Generated raw binding for `ImGui_IsWindowHovered`.
pub extern "C" fn im_gui_is_window_hovered(_p0 : Int) -> Bool = "ImGui_IsWindowHovered"

///|
/// Generated raw binding for `ImGui_GetWindowDrawList`.
pub extern "C" fn im_gui_get_window_draw_list() -> ImDrawList = "ImGui_GetWindowDrawList"

///|
/// Generated raw binding for `ImGui_GetWindowPos`.
pub extern "C" fn im_gui_get_window_pos() -> ImVec2 = "moonbit_dcimgui_ImGui_GetWindowPos"

///|
/// Generated raw binding for `ImGui_GetWindowSize`.
pub extern "C" fn im_gui_get_window_size() -> ImVec2 = "moonbit_dcimgui_ImGui_GetWindowSize"

///|
/// Generated raw binding for `ImGui_GetWindowWidth`.
pub extern "C" fn im_gui_get_window_width() -> Float = "ImGui_GetWindowWidth"

///|
/// Generated raw binding for `ImGui_GetWindowHeight`.
pub extern "C" fn im_gui_get_window_height() -> Float = "ImGui_GetWindowHeight"

///|
/// Generated raw binding for `ImGui_SetNextWindowPos`.
pub extern "C" fn im_gui_set_next_window_pos(_p0 : ImVec2, _p1 : Int) -> Unit = "ImGui_SetNextWindowPos"

///|
/// Generated raw binding for `ImGui_SetNextWindowPosEx`.
pub extern "C" fn im_gui_set_next_window_pos_ex(
  _p0 : ImVec2,
  _p1 : Int,
  _p2 : ImVec2,
) -> Unit = "ImGui_SetNextWindowPosEx"

///|
/// Generated raw binding for `ImGui_SetNextWindowSize`.
pub extern "C" fn im_gui_set_next_window_size(_p0 : ImVec2, _p1 : Int) -> Unit = "ImGui_SetNextWindowSize"

///|
/// Generated raw binding for `ImGui_SetNextWindowSizeConstraints`.
pub extern "C" fn im_gui_set_next_window_size_constraints(
  _p0 : ImVec2,
  _p1 : ImVec2,
  _p2 : ImGuiSizeCallback,
  _p3 : VoidPtr,
) -> Unit = "ImGui_SetNextWindowSizeConstraints"

///|
/// Generated raw binding for `ImGui_SetNextWindowContentSize`.
pub extern "C" fn im_gui_set_next_window_content_size(_p0 : ImVec2) -> Unit = "ImGui_SetNextWindowContentSize"

///|
/// Generated raw binding for `ImGui_SetNextWindowCollapsed`.
pub extern "C" fn im_gui_set_next_window_collapsed(
  _p0 : Bool,
  _p1 : Int,
) -> Unit = "ImGui_SetNextWindowCollapsed"

///|
/// Generated raw binding for `ImGui_SetNextWindowFocus`.
pub extern "C" fn im_gui_set_next_window_focus() -> Unit = "ImGui_SetNextWindowFocus"

///|
/// Generated raw binding for `ImGui_SetNextWindowScroll`.
pub extern "C" fn im_gui_set_next_window_scroll(_p0 : ImVec2) -> Unit = "ImGui_SetNextWindowScroll"

///|
/// Generated raw binding for `ImGui_SetNextWindowBgAlpha`.
pub extern "C" fn im_gui_set_next_window_bg_alpha(_p0 : Float) -> Unit = "ImGui_SetNextWindowBgAlpha"

///|
/// Generated raw binding for `ImGui_SetWindowPos`.
pub extern "C" fn im_gui_set_window_pos(_p0 : ImVec2, _p1 : Int) -> Unit = "ImGui_SetWindowPos"

///|
/// Generated raw binding for `ImGui_SetWindowSize`.
pub extern "C" fn im_gui_set_window_size(_p0 : ImVec2, _p1 : Int) -> Unit = "ImGui_SetWindowSize"

///|
/// Generated raw binding for `ImGui_SetWindowCollapsed`.
pub extern "C" fn im_gui_set_window_collapsed(_p0 : Bool, _p1 : Int) -> Unit = "ImGui_SetWindowCollapsed"

///|
/// Generated raw binding for `ImGui_SetWindowFocus`.
pub extern "C" fn im_gui_set_window_focus() -> Unit = "ImGui_SetWindowFocus"

///|
/// Generated raw binding for `ImGui_SetWindowPosStr`.
pub extern "C" fn im_gui_set_window_pos_str(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : Int,
) -> Unit = "ImGui_SetWindowPosStr"

///|
/// Generated raw binding for `ImGui_SetWindowSizeStr`.
pub extern "C" fn im_gui_set_window_size_str(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : Int,
) -> Unit = "ImGui_SetWindowSizeStr"

///|
/// Generated raw binding for `ImGui_SetWindowCollapsedStr`.
pub extern "C" fn im_gui_set_window_collapsed_str(
  _p0 : CString,
  _p1 : Bool,
  _p2 : Int,
) -> Unit = "ImGui_SetWindowCollapsedStr"

///|
/// Generated raw binding for `ImGui_SetWindowFocusStr`.
pub extern "C" fn im_gui_set_window_focus_str(_p0 : CString) -> Unit = "ImGui_SetWindowFocusStr"

///|
/// Generated raw binding for `ImGui_GetScrollX`.
pub extern "C" fn im_gui_get_scroll_x() -> Float = "ImGui_GetScrollX"

///|
/// Generated raw binding for `ImGui_GetScrollY`.
pub extern "C" fn im_gui_get_scroll_y() -> Float = "ImGui_GetScrollY"

///|
/// Generated raw binding for `ImGui_SetScrollX`.
pub extern "C" fn im_gui_set_scroll_x(_p0 : Float) -> Unit = "ImGui_SetScrollX"

///|
/// Generated raw binding for `ImGui_SetScrollY`.
pub extern "C" fn im_gui_set_scroll_y(_p0 : Float) -> Unit = "ImGui_SetScrollY"

///|
/// Generated raw binding for `ImGui_GetScrollMaxX`.
pub extern "C" fn im_gui_get_scroll_max_x() -> Float = "ImGui_GetScrollMaxX"

///|
/// Generated raw binding for `ImGui_GetScrollMaxY`.
pub extern "C" fn im_gui_get_scroll_max_y() -> Float = "ImGui_GetScrollMaxY"

///|
/// Generated raw binding for `ImGui_SetScrollHereX`.
pub extern "C" fn im_gui_set_scroll_here_x(_p0 : Float) -> Unit = "ImGui_SetScrollHereX"

///|
/// Generated raw binding for `ImGui_SetScrollHereY`.
pub extern "C" fn im_gui_set_scroll_here_y(_p0 : Float) -> Unit = "ImGui_SetScrollHereY"

///|
/// Generated raw binding for `ImGui_SetScrollFromPosX`.
pub extern "C" fn im_gui_set_scroll_from_pos_x(
  _p0 : Float,
  _p1 : Float,
) -> Unit = "ImGui_SetScrollFromPosX"

///|
/// Generated raw binding for `ImGui_SetScrollFromPosY`.
pub extern "C" fn im_gui_set_scroll_from_pos_y(
  _p0 : Float,
  _p1 : Float,
) -> Unit = "ImGui_SetScrollFromPosY"

///|
/// Generated raw binding for `ImGui_PushFontFloat`.
pub extern "C" fn im_gui_push_font_float(_p0 : ImFont, _p1 : Float) -> Unit = "ImGui_PushFontFloat"

///|
/// Generated raw binding for `ImGui_PopFont`.
pub extern "C" fn im_gui_pop_font() -> Unit = "ImGui_PopFont"

///|
/// Generated raw binding for `ImGui_GetFont`.
pub extern "C" fn im_gui_get_font() -> ImFont = "ImGui_GetFont"

///|
/// Generated raw binding for `ImGui_GetFontSize`.
pub extern "C" fn im_gui_get_font_size() -> Float = "ImGui_GetFontSize"

///|
/// Generated raw binding for `ImGui_GetFontBaked`.
pub extern "C" fn im_gui_get_font_baked() -> ImFontBaked = "ImGui_GetFontBaked"

///|
/// Generated raw binding for `ImGui_PushStyleColor`.
pub extern "C" fn im_gui_push_style_color(_p0 : Int, _p1 : UInt) -> Unit = "ImGui_PushStyleColor"

///|
/// Generated raw binding for `ImGui_PushStyleColorImVec4Ptr`.
pub extern "C" fn im_gui_push_style_color_im_vec4_ptr(
  _p0 : Int,
  _p1 : ImVec4,
) -> Unit = "ImGui_PushStyleColorImVec4Ptr"

///|
/// Generated raw binding for `ImGui_PopStyleColor`.
pub extern "C" fn im_gui_pop_style_color() -> Unit = "ImGui_PopStyleColor"

///|
/// Generated raw binding for `ImGui_PopStyleColorEx`.
pub extern "C" fn im_gui_pop_style_color_ex(_p0 : Int) -> Unit = "ImGui_PopStyleColorEx"

///|
/// Generated raw binding for `ImGui_PushStyleVar`.
pub extern "C" fn im_gui_push_style_var(_p0 : Int, _p1 : Float) -> Unit = "ImGui_PushStyleVar"

///|
/// Generated raw binding for `ImGui_PushStyleVarImVec2Ptr`.
pub extern "C" fn im_gui_push_style_var_im_vec2_ptr(
  _p0 : Int,
  _p1 : ImVec2,
) -> Unit = "ImGui_PushStyleVarImVec2Ptr"

///|
/// Generated raw binding for `ImGui_PushStyleVarX`.
pub extern "C" fn im_gui_push_style_var_x(_p0 : Int, _p1 : Float) -> Unit = "ImGui_PushStyleVarX"

///|
/// Generated raw binding for `ImGui_PushStyleVarY`.
pub extern "C" fn im_gui_push_style_var_y(_p0 : Int, _p1 : Float) -> Unit = "ImGui_PushStyleVarY"

///|
/// Generated raw binding for `ImGui_PopStyleVar`.
pub extern "C" fn im_gui_pop_style_var() -> Unit = "ImGui_PopStyleVar"

///|
/// Generated raw binding for `ImGui_PopStyleVarEx`.
pub extern "C" fn im_gui_pop_style_var_ex(_p0 : Int) -> Unit = "ImGui_PopStyleVarEx"

///|
/// Generated raw binding for `ImGui_PushItemFlag`.
pub extern "C" fn im_gui_push_item_flag(_p0 : Int, _p1 : Bool) -> Unit = "ImGui_PushItemFlag"

///|
/// Generated raw binding for `ImGui_PopItemFlag`.
pub extern "C" fn im_gui_pop_item_flag() -> Unit = "ImGui_PopItemFlag"

///|
/// Generated raw binding for `ImGui_PushItemWidth`.
pub extern "C" fn im_gui_push_item_width(_p0 : Float) -> Unit = "ImGui_PushItemWidth"

///|
/// Generated raw binding for `ImGui_PopItemWidth`.
pub extern "C" fn im_gui_pop_item_width() -> Unit = "ImGui_PopItemWidth"

///|
/// Generated raw binding for `ImGui_SetNextItemWidth`.
pub extern "C" fn im_gui_set_next_item_width(_p0 : Float) -> Unit = "ImGui_SetNextItemWidth"

///|
/// Generated raw binding for `ImGui_CalcItemWidth`.
pub extern "C" fn im_gui_calc_item_width() -> Float = "ImGui_CalcItemWidth"

///|
/// Generated raw binding for `ImGui_PushTextWrapPos`.
pub extern "C" fn im_gui_push_text_wrap_pos(_p0 : Float) -> Unit = "ImGui_PushTextWrapPos"

///|
/// Generated raw binding for `ImGui_PopTextWrapPos`.
pub extern "C" fn im_gui_pop_text_wrap_pos() -> Unit = "ImGui_PopTextWrapPos"

///|
/// Generated raw binding for `ImGui_GetFontTexUvWhitePixel`.
pub extern "C" fn im_gui_get_font_tex_uv_white_pixel() -> ImVec2 = "moonbit_dcimgui_ImGui_GetFontTexUvWhitePixel"

///|
/// Generated raw binding for `ImGui_GetColorU32`.
pub extern "C" fn im_gui_get_color_u32(_p0 : Int) -> UInt = "ImGui_GetColorU32"

///|
/// Generated raw binding for `ImGui_GetColorU32Ex`.
pub extern "C" fn im_gui_get_color_u32_ex(_p0 : Int, _p1 : Float) -> UInt = "ImGui_GetColorU32Ex"

///|
/// Generated raw binding for `ImGui_GetColorU32ImVec4`.
pub extern "C" fn im_gui_get_color_u32_im_vec4(_p0 : ImVec4) -> UInt = "ImGui_GetColorU32ImVec4"

///|
/// Generated raw binding for `ImGui_GetColorU32ImU32`.
pub extern "C" fn im_gui_get_color_u32_im_u32(_p0 : UInt) -> UInt = "ImGui_GetColorU32ImU32"

///|
/// Generated raw binding for `ImGui_GetColorU32ImU32Ex`.
pub extern "C" fn im_gui_get_color_u32_im_u32_ex(
  _p0 : UInt,
  _p1 : Float,
) -> UInt = "ImGui_GetColorU32ImU32Ex"

///|
/// Generated raw binding for `ImGui_GetStyleColorVec4`.
pub extern "C" fn im_gui_get_style_color_vec4(_p0 : Int) -> ImVec4 = "ImGui_GetStyleColorVec4"

///|
/// Generated raw binding for `ImGui_GetCursorScreenPos`.
pub extern "C" fn im_gui_get_cursor_screen_pos() -> ImVec2 = "moonbit_dcimgui_ImGui_GetCursorScreenPos"

///|
/// Generated raw binding for `ImGui_SetCursorScreenPos`.
pub extern "C" fn im_gui_set_cursor_screen_pos(_p0 : ImVec2) -> Unit = "ImGui_SetCursorScreenPos"

///|
/// Generated raw binding for `ImGui_GetContentRegionAvail`.
pub extern "C" fn im_gui_get_content_region_avail() -> ImVec2 = "moonbit_dcimgui_ImGui_GetContentRegionAvail"

///|
/// Generated raw binding for `ImGui_GetCursorPos`.
pub extern "C" fn im_gui_get_cursor_pos() -> ImVec2 = "moonbit_dcimgui_ImGui_GetCursorPos"

///|
/// Generated raw binding for `ImGui_GetCursorPosX`.
pub extern "C" fn im_gui_get_cursor_pos_x() -> Float = "ImGui_GetCursorPosX"

///|
/// Generated raw binding for `ImGui_GetCursorPosY`.
pub extern "C" fn im_gui_get_cursor_pos_y() -> Float = "ImGui_GetCursorPosY"

///|
/// Generated raw binding for `ImGui_SetCursorPos`.
pub extern "C" fn im_gui_set_cursor_pos(_p0 : ImVec2) -> Unit = "ImGui_SetCursorPos"

///|
/// Generated raw binding for `ImGui_SetCursorPosX`.
pub extern "C" fn im_gui_set_cursor_pos_x(_p0 : Float) -> Unit = "ImGui_SetCursorPosX"

///|
/// Generated raw binding for `ImGui_SetCursorPosY`.
pub extern "C" fn im_gui_set_cursor_pos_y(_p0 : Float) -> Unit = "ImGui_SetCursorPosY"

///|
/// Generated raw binding for `ImGui_GetCursorStartPos`.
pub extern "C" fn im_gui_get_cursor_start_pos() -> ImVec2 = "moonbit_dcimgui_ImGui_GetCursorStartPos"

///|
/// Generated raw binding for `ImGui_Separator`.
pub extern "C" fn im_gui_separator() -> Unit = "ImGui_Separator"

///|
/// Generated raw binding for `ImGui_SameLine`.
pub extern "C" fn im_gui_same_line() -> Unit = "ImGui_SameLine"

///|
/// Generated raw binding for `ImGui_SameLineEx`.
pub extern "C" fn im_gui_same_line_ex(_p0 : Float, _p1 : Float) -> Unit = "ImGui_SameLineEx"

///|
/// Generated raw binding for `ImGui_NewLine`.
pub extern "C" fn im_gui_new_line() -> Unit = "ImGui_NewLine"

///|
/// Generated raw binding for `ImGui_Spacing`.
pub extern "C" fn im_gui_spacing() -> Unit = "ImGui_Spacing"

///|
/// Generated raw binding for `ImGui_Dummy`.
pub extern "C" fn im_gui_dummy(_p0 : ImVec2) -> Unit = "ImGui_Dummy"

///|
/// Generated raw binding for `ImGui_Indent`.
pub extern "C" fn im_gui_indent() -> Unit = "ImGui_Indent"

///|
/// Generated raw binding for `ImGui_IndentEx`.
pub extern "C" fn im_gui_indent_ex(_p0 : Float) -> Unit = "ImGui_IndentEx"

///|
/// Generated raw binding for `ImGui_Unindent`.
pub extern "C" fn im_gui_unindent() -> Unit = "ImGui_Unindent"

///|
/// Generated raw binding for `ImGui_UnindentEx`.
pub extern "C" fn im_gui_unindent_ex(_p0 : Float) -> Unit = "ImGui_UnindentEx"

///|
/// Generated raw binding for `ImGui_BeginGroup`.
pub extern "C" fn im_gui_begin_group() -> Unit = "ImGui_BeginGroup"

///|
/// Generated raw binding for `ImGui_EndGroup`.
pub extern "C" fn im_gui_end_group() -> Unit = "ImGui_EndGroup"

///|
/// Generated raw binding for `ImGui_AlignTextToFramePadding`.
pub extern "C" fn im_gui_align_text_to_frame_padding() -> Unit = "ImGui_AlignTextToFramePadding"

///|
/// Generated raw binding for `ImGui_GetTextLineHeight`.
pub extern "C" fn im_gui_get_text_line_height() -> Float = "ImGui_GetTextLineHeight"

///|
/// Generated raw binding for `ImGui_GetTextLineHeightWithSpacing`.
pub extern "C" fn im_gui_get_text_line_height_with_spacing() -> Float = "ImGui_GetTextLineHeightWithSpacing"

///|
/// Generated raw binding for `ImGui_GetFrameHeight`.
pub extern "C" fn im_gui_get_frame_height() -> Float = "ImGui_GetFrameHeight"

///|
/// Generated raw binding for `ImGui_GetFrameHeightWithSpacing`.
pub extern "C" fn im_gui_get_frame_height_with_spacing() -> Float = "ImGui_GetFrameHeightWithSpacing"

///|
/// Generated raw binding for `ImGui_PushID`.
pub extern "C" fn im_gui_push_id(_p0 : CString) -> Unit = "ImGui_PushID"

///|
/// Generated raw binding for `ImGui_PushIDStr`.
pub extern "C" fn im_gui_push_id_str(_p0 : CString, _p1 : CString) -> Unit = "ImGui_PushIDStr"

///|
/// Generated raw binding for `ImGui_PushIDPtr`.
pub extern "C" fn im_gui_push_id_ptr(_p0 : VoidPtr) -> Unit = "ImGui_PushIDPtr"

///|
/// Generated raw binding for `ImGui_PushIDInt`.
pub extern "C" fn im_gui_push_id_int(_p0 : Int) -> Unit = "ImGui_PushIDInt"

///|
/// Generated raw binding for `ImGui_PopID`.
pub extern "C" fn im_gui_pop_id() -> Unit = "ImGui_PopID"

///|
/// Generated raw binding for `ImGui_GetID`.
pub extern "C" fn im_gui_get_id(_p0 : CString) -> UInt = "ImGui_GetID"

///|
/// Generated raw binding for `ImGui_GetIDStr`.
pub extern "C" fn im_gui_get_id_str(_p0 : CString, _p1 : CString) -> UInt = "ImGui_GetIDStr"

///|
/// Generated raw binding for `ImGui_GetIDPtr`.
pub extern "C" fn im_gui_get_id_ptr(_p0 : VoidPtr) -> UInt = "ImGui_GetIDPtr"

///|
/// Generated raw binding for `ImGui_GetIDInt`.
pub extern "C" fn im_gui_get_id_int(_p0 : Int) -> UInt = "ImGui_GetIDInt"

///|
/// Generated raw binding for `ImGui_TextUnformatted`.
pub extern "C" fn im_gui_text_unformatted(_p0 : CString) -> Unit = "ImGui_TextUnformatted"

///|
/// Generated raw binding for `ImGui_TextUnformattedEx`.
pub extern "C" fn im_gui_text_unformatted_ex(
  _p0 : CString,
  _p1 : CString,
) -> Unit = "ImGui_TextUnformattedEx"

///|
/// Generated raw binding for `ImGui_Text`.
pub extern "C" fn im_gui_text(_p0 : CString) -> Unit = "moonbit_dcimgui_ImGui_Text"

///|
/// Generated raw binding for `ImGui_TextV`.
pub extern "C" fn im_gui_text_v(_p0 : CString, _p1 : VaList) -> Unit = "ImGui_TextV"

///|
/// Generated raw binding for `ImGui_TextColored`.
pub extern "C" fn im_gui_text_colored(_p0 : ImVec4, _p1 : CString) -> Unit = "moonbit_dcimgui_ImGui_TextColored"

///|
/// Generated raw binding for `ImGui_TextColoredUnformatted`.
pub extern "C" fn im_gui_text_colored_unformatted(
  _p0 : ImVec4,
  _p1 : CString,
) -> Unit = "ImGui_TextColoredUnformatted"

///|
/// Generated raw binding for `ImGui_TextColoredV`.
pub extern "C" fn im_gui_text_colored_v(
  _p0 : ImVec4,
  _p1 : CString,
  _p2 : VaList,
) -> Unit = "ImGui_TextColoredV"

///|
/// Generated raw binding for `ImGui_TextDisabled`.
pub extern "C" fn im_gui_text_disabled(_p0 : CString) -> Unit = "moonbit_dcimgui_ImGui_TextDisabled"

///|
/// Generated raw binding for `ImGui_TextDisabledUnformatted`.
pub extern "C" fn im_gui_text_disabled_unformatted(_p0 : CString) -> Unit = "ImGui_TextDisabledUnformatted"

///|
/// Generated raw binding for `ImGui_TextDisabledV`.
pub extern "C" fn im_gui_text_disabled_v(_p0 : CString, _p1 : VaList) -> Unit = "ImGui_TextDisabledV"

///|
/// Generated raw binding for `ImGui_TextWrapped`.
pub extern "C" fn im_gui_text_wrapped(_p0 : CString) -> Unit = "moonbit_dcimgui_ImGui_TextWrapped"

///|
/// Generated raw binding for `ImGui_TextWrappedUnformatted`.
pub extern "C" fn im_gui_text_wrapped_unformatted(_p0 : CString) -> Unit = "ImGui_TextWrappedUnformatted"

///|
/// Generated raw binding for `ImGui_TextWrappedV`.
pub extern "C" fn im_gui_text_wrapped_v(_p0 : CString, _p1 : VaList) -> Unit = "ImGui_TextWrappedV"

///|
/// Generated raw binding for `ImGui_LabelText`.
pub extern "C" fn im_gui_label_text(_p0 : CString, _p1 : CString) -> Unit = "moonbit_dcimgui_ImGui_LabelText"

///|
/// Generated raw binding for `ImGui_LabelTextUnformatted`.
pub extern "C" fn im_gui_label_text_unformatted(
  _p0 : CString,
  _p1 : CString,
) -> Unit = "ImGui_LabelTextUnformatted"

///|
/// Generated raw binding for `ImGui_LabelTextV`.
pub extern "C" fn im_gui_label_text_v(
  _p0 : CString,
  _p1 : CString,
  _p2 : VaList,
) -> Unit = "ImGui_LabelTextV"

///|
/// Generated raw binding for `ImGui_BulletText`.
pub extern "C" fn im_gui_bullet_text(_p0 : CString) -> Unit = "moonbit_dcimgui_ImGui_BulletText"

///|
/// Generated raw binding for `ImGui_BulletTextUnformatted`.
pub extern "C" fn im_gui_bullet_text_unformatted(_p0 : CString) -> Unit = "ImGui_BulletTextUnformatted"

///|
/// Generated raw binding for `ImGui_BulletTextV`.
pub extern "C" fn im_gui_bullet_text_v(_p0 : CString, _p1 : VaList) -> Unit = "ImGui_BulletTextV"

///|
/// Generated raw binding for `ImGui_SeparatorText`.
pub extern "C" fn im_gui_separator_text(_p0 : CString) -> Unit = "ImGui_SeparatorText"

///|
/// Generated raw binding for `ImGui_Button`.
pub extern "C" fn im_gui_button(_p0 : CString) -> Bool = "ImGui_Button"

///|
/// Generated raw binding for `ImGui_ButtonEx`.
pub extern "C" fn im_gui_button_ex(_p0 : CString, _p1 : ImVec2) -> Bool = "ImGui_ButtonEx"

///|
/// Generated raw binding for `ImGui_SmallButton`.
pub extern "C" fn im_gui_small_button(_p0 : CString) -> Bool = "ImGui_SmallButton"

///|
/// Generated raw binding for `ImGui_InvisibleButton`.
pub extern "C" fn im_gui_invisible_button(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : Int,
) -> Bool = "ImGui_InvisibleButton"

///|
/// Generated raw binding for `ImGui_ArrowButton`.
pub extern "C" fn im_gui_arrow_button(_p0 : CString, _p1 : Int) -> Bool = "ImGui_ArrowButton"

///|
/// Generated raw binding for `ImGui_Checkbox`.
pub extern "C" fn im_gui_checkbox(_p0 : CString, _p1 : BoolPtr) -> Bool = "ImGui_Checkbox"

///|
/// Generated raw binding for `ImGui_CheckboxFlagsIntPtr`.
pub extern "C" fn im_gui_checkbox_flags_int_ptr(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
) -> Bool = "ImGui_CheckboxFlagsIntPtr"

///|
/// Generated raw binding for `ImGui_CheckboxFlagsUintPtr`.
pub extern "C" fn im_gui_checkbox_flags_uint_ptr(
  _p0 : CString,
  _p1 : UIntPtr,
  _p2 : UInt,
) -> Bool = "ImGui_CheckboxFlagsUintPtr"

///|
/// Generated raw binding for `ImGui_RadioButton`.
pub extern "C" fn im_gui_radio_button(_p0 : CString, _p1 : Bool) -> Bool = "ImGui_RadioButton"

///|
/// Generated raw binding for `ImGui_RadioButtonIntPtr`.
pub extern "C" fn im_gui_radio_button_int_ptr(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
) -> Bool = "ImGui_RadioButtonIntPtr"

///|
/// Generated raw binding for `ImGui_ProgressBar`.
pub extern "C" fn im_gui_progress_bar(
  _p0 : Float,
  _p1 : ImVec2,
  _p2 : CString,
) -> Unit = "ImGui_ProgressBar"

///|
/// Generated raw binding for `ImGui_Bullet`.
pub extern "C" fn im_gui_bullet() -> Unit = "ImGui_Bullet"

///|
/// Generated raw binding for `ImGui_TextLink`.
pub extern "C" fn im_gui_text_link(_p0 : CString) -> Bool = "ImGui_TextLink"

///|
/// Generated raw binding for `ImGui_TextLinkOpenURL`.
pub extern "C" fn im_gui_text_link_open_url(_p0 : CString) -> Bool = "ImGui_TextLinkOpenURL"

///|
/// Generated raw binding for `ImGui_TextLinkOpenURLEx`.
pub extern "C" fn im_gui_text_link_open_url_ex(
  _p0 : CString,
  _p1 : CString,
) -> Bool = "ImGui_TextLinkOpenURLEx"

///|
/// Generated raw binding for `ImGui_Image`.
pub extern "C" fn im_gui_image(_p0 : ImTextureRef, _p1 : ImVec2) -> Unit = "ImGui_Image"

///|
/// Generated raw binding for `ImGui_ImageEx`.
pub extern "C" fn im_gui_image_ex(
  _p0 : ImTextureRef,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
) -> Unit = "ImGui_ImageEx"

///|
/// Generated raw binding for `ImGui_ImageWithBg`.
pub extern "C" fn im_gui_image_with_bg(
  _p0 : ImTextureRef,
  _p1 : ImVec2,
) -> Unit = "ImGui_ImageWithBg"

///|
/// Generated raw binding for `ImGui_ImageWithBgEx`.
pub extern "C" fn im_gui_image_with_bg_ex(
  _p0 : ImTextureRef,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec4,
  _p5 : ImVec4,
) -> Unit = "ImGui_ImageWithBgEx"

///|
/// Generated raw binding for `ImGui_ImageButton`.
pub extern "C" fn im_gui_image_button(
  _p0 : CString,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
) -> Bool = "ImGui_ImageButton"

///|
/// Generated raw binding for `ImGui_ImageButtonEx`.
pub extern "C" fn im_gui_image_button_ex(
  _p0 : CString,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : ImVec4,
  _p6 : ImVec4,
) -> Bool = "ImGui_ImageButtonEx"

///|
/// Generated raw binding for `ImGui_BeginCombo`.
pub extern "C" fn im_gui_begin_combo(
  _p0 : CString,
  _p1 : CString,
  _p2 : Int,
) -> Bool = "ImGui_BeginCombo"

///|
/// Generated raw binding for `ImGui_EndCombo`.
pub extern "C" fn im_gui_end_combo() -> Unit = "ImGui_EndCombo"

///|
/// Generated raw binding for `ImGui_ComboChar`.
pub extern "C" fn im_gui_combo_char(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : CStringPtr,
  _p3 : Int,
) -> Bool = "ImGui_ComboChar"

///|
/// Generated raw binding for `ImGui_ComboCharEx`.
pub extern "C" fn im_gui_combo_char_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : CStringPtr,
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_ComboCharEx"

///|
/// Generated raw binding for `ImGui_Combo`.
pub extern "C" fn im_gui_combo(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : CString,
) -> Bool = "ImGui_Combo"

///|
/// Generated raw binding for `ImGui_ComboEx`.
pub extern "C" fn im_gui_combo_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : CString,
  _p3 : Int,
) -> Bool = "ImGui_ComboEx"

///|
/// Generated raw binding for `ImGui_ComboCallback`.
pub extern "C" fn im_gui_combo_callback(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : FunctionPtr,
  _p3 : VoidPtr,
  _p4 : Int,
) -> Bool = "ImGui_ComboCallback"

///|
/// Generated raw binding for `ImGui_ComboCallbackEx`.
pub extern "C" fn im_gui_combo_callback_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : FunctionPtr,
  _p3 : VoidPtr,
  _p4 : Int,
  _p5 : Int,
) -> Bool = "ImGui_ComboCallbackEx"

///|
/// Generated raw binding for `ImGui_DragFloat`.
pub extern "C" fn im_gui_drag_float(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_DragFloat"

///|
/// Generated raw binding for `ImGui_DragFloatEx`.
pub extern "C" fn im_gui_drag_float_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_DragFloatEx"

///|
/// Generated raw binding for `ImGui_DragFloat2`.
pub extern "C" fn im_gui_drag_float2(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_DragFloat2"

///|
/// Generated raw binding for `ImGui_DragFloat2Ex`.
pub extern "C" fn im_gui_drag_float2_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_DragFloat2Ex"

///|
/// Generated raw binding for `ImGui_DragFloat3`.
pub extern "C" fn im_gui_drag_float3(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_DragFloat3"

///|
/// Generated raw binding for `ImGui_DragFloat3Ex`.
pub extern "C" fn im_gui_drag_float3_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_DragFloat3Ex"

///|
/// Generated raw binding for `ImGui_DragFloat4`.
pub extern "C" fn im_gui_drag_float4(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_DragFloat4"

///|
/// Generated raw binding for `ImGui_DragFloat4Ex`.
pub extern "C" fn im_gui_drag_float4_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_DragFloat4Ex"

///|
/// Generated raw binding for `ImGui_DragFloatRange2`.
pub extern "C" fn im_gui_drag_float_range2(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : FloatPtr,
) -> Bool = "ImGui_DragFloatRange2"

///|
/// Generated raw binding for `ImGui_DragFloatRange2Ex`.
pub extern "C" fn im_gui_drag_float_range2_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : FloatPtr,
  _p3 : Float,
  _p4 : Float,
  _p5 : Float,
  _p6 : CString,
  _p7 : CString,
  _p8 : Int,
) -> Bool = "ImGui_DragFloatRange2Ex"

///|
/// Generated raw binding for `ImGui_DragInt`.
pub extern "C" fn im_gui_drag_int(_p0 : CString, _p1 : IntPtr) -> Bool = "ImGui_DragInt"

///|
/// Generated raw binding for `ImGui_DragIntEx`.
pub extern "C" fn im_gui_drag_int_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_DragIntEx"

///|
/// Generated raw binding for `ImGui_DragInt2`.
pub extern "C" fn im_gui_drag_int2(_p0 : CString, _p1 : IntPtr) -> Bool = "ImGui_DragInt2"

///|
/// Generated raw binding for `ImGui_DragInt2Ex`.
pub extern "C" fn im_gui_drag_int2_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_DragInt2Ex"

///|
/// Generated raw binding for `ImGui_DragInt3`.
pub extern "C" fn im_gui_drag_int3(_p0 : CString, _p1 : IntPtr) -> Bool = "ImGui_DragInt3"

///|
/// Generated raw binding for `ImGui_DragInt3Ex`.
pub extern "C" fn im_gui_drag_int3_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_DragInt3Ex"

///|
/// Generated raw binding for `ImGui_DragInt4`.
pub extern "C" fn im_gui_drag_int4(_p0 : CString, _p1 : IntPtr) -> Bool = "ImGui_DragInt4"

///|
/// Generated raw binding for `ImGui_DragInt4Ex`.
pub extern "C" fn im_gui_drag_int4_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_DragInt4Ex"

///|
/// Generated raw binding for `ImGui_DragIntRange2`.
pub extern "C" fn im_gui_drag_int_range2(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : IntPtr,
) -> Bool = "ImGui_DragIntRange2"

///|
/// Generated raw binding for `ImGui_DragIntRange2Ex`.
pub extern "C" fn im_gui_drag_int_range2_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : IntPtr,
  _p3 : Float,
  _p4 : Int,
  _p5 : Int,
  _p6 : CString,
  _p7 : CString,
  _p8 : Int,
) -> Bool = "ImGui_DragIntRange2Ex"

///|
/// Generated raw binding for `ImGui_DragScalar`.
pub extern "C" fn im_gui_drag_scalar(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
) -> Bool = "ImGui_DragScalar"

///|
/// Generated raw binding for `ImGui_DragScalarEx`.
pub extern "C" fn im_gui_drag_scalar_ex(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Float,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
  _p6 : CString,
  _p7 : Int,
) -> Bool = "ImGui_DragScalarEx"

///|
/// Generated raw binding for `ImGui_DragScalarN`.
pub extern "C" fn im_gui_drag_scalar_n(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
) -> Bool = "ImGui_DragScalarN"

///|
/// Generated raw binding for `ImGui_DragScalarNEx`.
pub extern "C" fn im_gui_drag_scalar_n_ex(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : Float,
  _p5 : VoidPtr,
  _p6 : VoidPtr,
  _p7 : CString,
  _p8 : Int,
) -> Bool = "ImGui_DragScalarNEx"

///|
/// Generated raw binding for `ImGui_SliderFloat`.
pub extern "C" fn im_gui_slider_float(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
) -> Bool = "ImGui_SliderFloat"

///|
/// Generated raw binding for `ImGui_SliderFloatEx`.
pub extern "C" fn im_gui_slider_float_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderFloatEx"

///|
/// Generated raw binding for `ImGui_SliderFloat2`.
pub extern "C" fn im_gui_slider_float2(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
) -> Bool = "ImGui_SliderFloat2"

///|
/// Generated raw binding for `ImGui_SliderFloat2Ex`.
pub extern "C" fn im_gui_slider_float2_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderFloat2Ex"

///|
/// Generated raw binding for `ImGui_SliderFloat3`.
pub extern "C" fn im_gui_slider_float3(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
) -> Bool = "ImGui_SliderFloat3"

///|
/// Generated raw binding for `ImGui_SliderFloat3Ex`.
pub extern "C" fn im_gui_slider_float3_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderFloat3Ex"

///|
/// Generated raw binding for `ImGui_SliderFloat4`.
pub extern "C" fn im_gui_slider_float4(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
) -> Bool = "ImGui_SliderFloat4"

///|
/// Generated raw binding for `ImGui_SliderFloat4Ex`.
pub extern "C" fn im_gui_slider_float4_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderFloat4Ex"

///|
/// Generated raw binding for `ImGui_SliderAngle`.
pub extern "C" fn im_gui_slider_angle(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_SliderAngle"

///|
/// Generated raw binding for `ImGui_SliderAngleEx`.
pub extern "C" fn im_gui_slider_angle_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderAngleEx"

///|
/// Generated raw binding for `ImGui_SliderInt`.
pub extern "C" fn im_gui_slider_int(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SliderInt"

///|
/// Generated raw binding for `ImGui_SliderIntEx`.
pub extern "C" fn im_gui_slider_int_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderIntEx"

///|
/// Generated raw binding for `ImGui_SliderInt2`.
pub extern "C" fn im_gui_slider_int2(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SliderInt2"

///|
/// Generated raw binding for `ImGui_SliderInt2Ex`.
pub extern "C" fn im_gui_slider_int2_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderInt2Ex"

///|
/// Generated raw binding for `ImGui_SliderInt3`.
pub extern "C" fn im_gui_slider_int3(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SliderInt3"

///|
/// Generated raw binding for `ImGui_SliderInt3Ex`.
pub extern "C" fn im_gui_slider_int3_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderInt3Ex"

///|
/// Generated raw binding for `ImGui_SliderInt4`.
pub extern "C" fn im_gui_slider_int4(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SliderInt4"

///|
/// Generated raw binding for `ImGui_SliderInt4Ex`.
pub extern "C" fn im_gui_slider_int4_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_SliderInt4Ex"

///|
/// Generated raw binding for `ImGui_SliderScalar`.
pub extern "C" fn im_gui_slider_scalar(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
) -> Bool = "ImGui_SliderScalar"

///|
/// Generated raw binding for `ImGui_SliderScalarEx`.
pub extern "C" fn im_gui_slider_scalar_ex(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_SliderScalarEx"

///|
/// Generated raw binding for `ImGui_SliderScalarN`.
pub extern "C" fn im_gui_slider_scalar_n(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
) -> Bool = "ImGui_SliderScalarN"

///|
/// Generated raw binding for `ImGui_SliderScalarNEx`.
pub extern "C" fn im_gui_slider_scalar_n_ex(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
  _p6 : CString,
  _p7 : Int,
) -> Bool = "ImGui_SliderScalarNEx"

///|
/// Generated raw binding for `ImGui_VSliderFloat`.
pub extern "C" fn im_gui_v_slider_float(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : FloatPtr,
  _p3 : Float,
  _p4 : Float,
) -> Bool = "ImGui_VSliderFloat"

///|
/// Generated raw binding for `ImGui_VSliderFloatEx`.
pub extern "C" fn im_gui_v_slider_float_ex(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : FloatPtr,
  _p3 : Float,
  _p4 : Float,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_VSliderFloatEx"

///|
/// Generated raw binding for `ImGui_VSliderInt`.
pub extern "C" fn im_gui_v_slider_int(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : IntPtr,
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_VSliderInt"

///|
/// Generated raw binding for `ImGui_VSliderIntEx`.
pub extern "C" fn im_gui_v_slider_int_ex(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : IntPtr,
  _p3 : Int,
  _p4 : Int,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_VSliderIntEx"

///|
/// Generated raw binding for `ImGui_VSliderScalar`.
pub extern "C" fn im_gui_v_slider_scalar(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
) -> Bool = "ImGui_VSliderScalar"

///|
/// Generated raw binding for `ImGui_VSliderScalarEx`.
pub extern "C" fn im_gui_v_slider_scalar_ex(
  _p0 : CString,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
  _p6 : CString,
  _p7 : Int,
) -> Bool = "ImGui_VSliderScalarEx"

///|
/// Generated raw binding for `ImGui_InputText`.
pub extern "C" fn im_gui_input_text(
  _p0 : CString,
  _p1 : CString,
  _p2 : UInt64,
  _p3 : Int,
) -> Bool = "ImGui_InputText"

///|
/// Generated raw binding for `ImGui_InputTextEx`.
pub extern "C" fn im_gui_input_text_ex(
  _p0 : CString,
  _p1 : CString,
  _p2 : UInt64,
  _p3 : Int,
  _p4 : ImGuiInputTextCallback,
  _p5 : VoidPtr,
) -> Bool = "ImGui_InputTextEx"

///|
/// Generated raw binding for `ImGui_InputTextMultiline`.
pub extern "C" fn im_gui_input_text_multiline(
  _p0 : CString,
  _p1 : CString,
  _p2 : UInt64,
) -> Bool = "ImGui_InputTextMultiline"

///|
/// Generated raw binding for `ImGui_InputTextMultilineEx`.
pub extern "C" fn im_gui_input_text_multiline_ex(
  _p0 : CString,
  _p1 : CString,
  _p2 : UInt64,
  _p3 : ImVec2,
  _p4 : Int,
  _p5 : ImGuiInputTextCallback,
  _p6 : VoidPtr,
) -> Bool = "ImGui_InputTextMultilineEx"

///|
/// Generated raw binding for `ImGui_InputTextWithHint`.
pub extern "C" fn im_gui_input_text_with_hint(
  _p0 : CString,
  _p1 : CString,
  _p2 : CString,
  _p3 : UInt64,
  _p4 : Int,
) -> Bool = "ImGui_InputTextWithHint"

///|
/// Generated raw binding for `ImGui_InputTextWithHintEx`.
pub extern "C" fn im_gui_input_text_with_hint_ex(
  _p0 : CString,
  _p1 : CString,
  _p2 : CString,
  _p3 : UInt64,
  _p4 : Int,
  _p5 : ImGuiInputTextCallback,
  _p6 : VoidPtr,
) -> Bool = "ImGui_InputTextWithHintEx"

///|
/// Generated raw binding for `ImGui_InputFloat`.
pub extern "C" fn im_gui_input_float(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_InputFloat"

///|
/// Generated raw binding for `ImGui_InputFloatEx`.
pub extern "C" fn im_gui_input_float_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Float,
  _p3 : Float,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_InputFloatEx"

///|
/// Generated raw binding for `ImGui_InputFloat2`.
pub extern "C" fn im_gui_input_float2(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_InputFloat2"

///|
/// Generated raw binding for `ImGui_InputFloat2Ex`.
pub extern "C" fn im_gui_input_float2_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : CString,
  _p3 : Int,
) -> Bool = "ImGui_InputFloat2Ex"

///|
/// Generated raw binding for `ImGui_InputFloat3`.
pub extern "C" fn im_gui_input_float3(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_InputFloat3"

///|
/// Generated raw binding for `ImGui_InputFloat3Ex`.
pub extern "C" fn im_gui_input_float3_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : CString,
  _p3 : Int,
) -> Bool = "ImGui_InputFloat3Ex"

///|
/// Generated raw binding for `ImGui_InputFloat4`.
pub extern "C" fn im_gui_input_float4(_p0 : CString, _p1 : FloatPtr) -> Bool = "ImGui_InputFloat4"

///|
/// Generated raw binding for `ImGui_InputFloat4Ex`.
pub extern "C" fn im_gui_input_float4_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : CString,
  _p3 : Int,
) -> Bool = "ImGui_InputFloat4Ex"

///|
/// Generated raw binding for `ImGui_InputInt`.
pub extern "C" fn im_gui_input_int(_p0 : CString, _p1 : IntPtr) -> Bool = "ImGui_InputInt"

///|
/// Generated raw binding for `ImGui_InputIntEx`.
pub extern "C" fn im_gui_input_int_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_InputIntEx"

///|
/// Generated raw binding for `ImGui_InputInt2`.
pub extern "C" fn im_gui_input_int2(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
) -> Bool = "ImGui_InputInt2"

///|
/// Generated raw binding for `ImGui_InputInt3`.
pub extern "C" fn im_gui_input_int3(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
) -> Bool = "ImGui_InputInt3"

///|
/// Generated raw binding for `ImGui_InputInt4`.
pub extern "C" fn im_gui_input_int4(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : Int,
) -> Bool = "ImGui_InputInt4"

///|
/// Generated raw binding for `ImGui_InputDouble`.
pub extern "C" fn im_gui_input_double(_p0 : CString, _p1 : DoublePtr) -> Bool = "ImGui_InputDouble"

///|
/// Generated raw binding for `ImGui_InputDoubleEx`.
pub extern "C" fn im_gui_input_double_ex(
  _p0 : CString,
  _p1 : DoublePtr,
  _p2 : Double,
  _p3 : Double,
  _p4 : CString,
  _p5 : Int,
) -> Bool = "ImGui_InputDoubleEx"

///|
/// Generated raw binding for `ImGui_InputScalar`.
pub extern "C" fn im_gui_input_scalar(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
) -> Bool = "ImGui_InputScalar"

///|
/// Generated raw binding for `ImGui_InputScalarEx`.
pub extern "C" fn im_gui_input_scalar_ex(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
  _p5 : CString,
  _p6 : Int,
) -> Bool = "ImGui_InputScalarEx"

///|
/// Generated raw binding for `ImGui_InputScalarN`.
pub extern "C" fn im_gui_input_scalar_n(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
) -> Bool = "ImGui_InputScalarN"

///|
/// Generated raw binding for `ImGui_InputScalarNEx`.
pub extern "C" fn im_gui_input_scalar_n_ex(
  _p0 : CString,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
  _p6 : CString,
  _p7 : Int,
) -> Bool = "ImGui_InputScalarNEx"

///|
/// Generated raw binding for `ImGui_ColorEdit3`.
pub extern "C" fn im_gui_color_edit3(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Int,
) -> Bool = "ImGui_ColorEdit3"

///|
/// Generated raw binding for `ImGui_ColorEdit4`.
pub extern "C" fn im_gui_color_edit4(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Int,
) -> Bool = "ImGui_ColorEdit4"

///|
/// Generated raw binding for `ImGui_ColorPicker3`.
pub extern "C" fn im_gui_color_picker3(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Int,
) -> Bool = "ImGui_ColorPicker3"

///|
/// Generated raw binding for `ImGui_ColorPicker4`.
pub extern "C" fn im_gui_color_picker4(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Int,
  _p3 : FloatPtr,
) -> Bool = "ImGui_ColorPicker4"

///|
/// Generated raw binding for `ImGui_ColorButton`.
pub extern "C" fn im_gui_color_button(
  _p0 : CString,
  _p1 : ImVec4,
  _p2 : Int,
) -> Bool = "ImGui_ColorButton"

///|
/// Generated raw binding for `ImGui_ColorButtonEx`.
pub extern "C" fn im_gui_color_button_ex(
  _p0 : CString,
  _p1 : ImVec4,
  _p2 : Int,
  _p3 : ImVec2,
) -> Bool = "ImGui_ColorButtonEx"

///|
/// Generated raw binding for `ImGui_SetColorEditOptions`.
pub extern "C" fn im_gui_set_color_edit_options(_p0 : Int) -> Unit = "ImGui_SetColorEditOptions"

///|
/// Generated raw binding for `ImGui_TreeNode`.
pub extern "C" fn im_gui_tree_node(_p0 : CString) -> Bool = "ImGui_TreeNode"

///|
/// Generated raw binding for `ImGui_TreeNodeStr`.
pub extern "C" fn im_gui_tree_node_str(_p0 : CString, _p1 : CString) -> Bool = "moonbit_dcimgui_ImGui_TreeNodeStr"

///|
/// Generated raw binding for `ImGui_TreeNodeStrUnformatted`.
pub extern "C" fn im_gui_tree_node_str_unformatted(
  _p0 : CString,
  _p1 : CString,
) -> Bool = "ImGui_TreeNodeStrUnformatted"

///|
/// Generated raw binding for `ImGui_TreeNodePtr`.
pub extern "C" fn im_gui_tree_node_ptr(_p0 : VoidPtr, _p1 : CString) -> Bool = "moonbit_dcimgui_ImGui_TreeNodePtr"

///|
/// Generated raw binding for `ImGui_TreeNodePtrUnformatted`.
pub extern "C" fn im_gui_tree_node_ptr_unformatted(
  _p0 : VoidPtr,
  _p1 : CString,
) -> Bool = "ImGui_TreeNodePtrUnformatted"

///|
/// Generated raw binding for `ImGui_TreeNodeV`.
pub extern "C" fn im_gui_tree_node_v(
  _p0 : CString,
  _p1 : CString,
  _p2 : VaList,
) -> Bool = "ImGui_TreeNodeV"

///|
/// Generated raw binding for `ImGui_TreeNodeVPtr`.
pub extern "C" fn im_gui_tree_node_v_ptr(
  _p0 : VoidPtr,
  _p1 : CString,
  _p2 : VaList,
) -> Bool = "ImGui_TreeNodeVPtr"

///|
/// Generated raw binding for `ImGui_TreeNodeEx`.
pub extern "C" fn im_gui_tree_node_ex(_p0 : CString, _p1 : Int) -> Bool = "ImGui_TreeNodeEx"

///|
/// Generated raw binding for `ImGui_TreeNodeExStr`.
pub extern "C" fn im_gui_tree_node_ex_str(
  _p0 : CString,
  _p1 : Int,
  _p2 : CString,
) -> Bool = "moonbit_dcimgui_ImGui_TreeNodeExStr"

///|
/// Generated raw binding for `ImGui_TreeNodeExStrUnformatted`.
pub extern "C" fn im_gui_tree_node_ex_str_unformatted(
  _p0 : CString,
  _p1 : Int,
  _p2 : CString,
) -> Bool = "ImGui_TreeNodeExStrUnformatted"

///|
/// Generated raw binding for `ImGui_TreeNodeExPtr`.
pub extern "C" fn im_gui_tree_node_ex_ptr(
  _p0 : VoidPtr,
  _p1 : Int,
  _p2 : CString,
) -> Bool = "moonbit_dcimgui_ImGui_TreeNodeExPtr"

///|
/// Generated raw binding for `ImGui_TreeNodeExPtrUnformatted`.
pub extern "C" fn im_gui_tree_node_ex_ptr_unformatted(
  _p0 : VoidPtr,
  _p1 : Int,
  _p2 : CString,
) -> Bool = "ImGui_TreeNodeExPtrUnformatted"

///|
/// Generated raw binding for `ImGui_TreeNodeExV`.
pub extern "C" fn im_gui_tree_node_ex_v(
  _p0 : CString,
  _p1 : Int,
  _p2 : CString,
  _p3 : VaList,
) -> Bool = "ImGui_TreeNodeExV"

///|
/// Generated raw binding for `ImGui_TreeNodeExVPtr`.
pub extern "C" fn im_gui_tree_node_ex_v_ptr(
  _p0 : VoidPtr,
  _p1 : Int,
  _p2 : CString,
  _p3 : VaList,
) -> Bool = "ImGui_TreeNodeExVPtr"

///|
/// Generated raw binding for `ImGui_TreePush`.
pub extern "C" fn im_gui_tree_push(_p0 : CString) -> Unit = "ImGui_TreePush"

///|
/// Generated raw binding for `ImGui_TreePushPtr`.
pub extern "C" fn im_gui_tree_push_ptr(_p0 : VoidPtr) -> Unit = "ImGui_TreePushPtr"

///|
/// Generated raw binding for `ImGui_TreePop`.
pub extern "C" fn im_gui_tree_pop() -> Unit = "ImGui_TreePop"

///|
/// Generated raw binding for `ImGui_GetTreeNodeToLabelSpacing`.
pub extern "C" fn im_gui_get_tree_node_to_label_spacing() -> Float = "ImGui_GetTreeNodeToLabelSpacing"

///|
/// Generated raw binding for `ImGui_CollapsingHeader`.
pub extern "C" fn im_gui_collapsing_header(_p0 : CString, _p1 : Int) -> Bool = "ImGui_CollapsingHeader"

///|
/// Generated raw binding for `ImGui_CollapsingHeaderBoolPtr`.
pub extern "C" fn im_gui_collapsing_header_bool_ptr(
  _p0 : CString,
  _p1 : BoolPtr,
  _p2 : Int,
) -> Bool = "ImGui_CollapsingHeaderBoolPtr"

///|
/// Generated raw binding for `ImGui_SetNextItemOpen`.
pub extern "C" fn im_gui_set_next_item_open(_p0 : Bool, _p1 : Int) -> Unit = "ImGui_SetNextItemOpen"

///|
/// Generated raw binding for `ImGui_SetNextItemStorageID`.
pub extern "C" fn im_gui_set_next_item_storage_id(_p0 : UInt) -> Unit = "ImGui_SetNextItemStorageID"

///|
/// Generated raw binding for `ImGui_TreeNodeGetOpen`.
pub extern "C" fn im_gui_tree_node_get_open(_p0 : UInt) -> Bool = "ImGui_TreeNodeGetOpen"

///|
/// Generated raw binding for `ImGui_Selectable`.
pub extern "C" fn im_gui_selectable(_p0 : CString) -> Bool = "ImGui_Selectable"

///|
/// Generated raw binding for `ImGui_SelectableEx`.
pub extern "C" fn im_gui_selectable_ex(
  _p0 : CString,
  _p1 : Bool,
  _p2 : Int,
  _p3 : ImVec2,
) -> Bool = "ImGui_SelectableEx"

///|
/// Generated raw binding for `ImGui_SelectableBoolPtr`.
pub extern "C" fn im_gui_selectable_bool_ptr(
  _p0 : CString,
  _p1 : BoolPtr,
  _p2 : Int,
) -> Bool = "ImGui_SelectableBoolPtr"

///|
/// Generated raw binding for `ImGui_SelectableBoolPtrEx`.
pub extern "C" fn im_gui_selectable_bool_ptr_ex(
  _p0 : CString,
  _p1 : BoolPtr,
  _p2 : Int,
  _p3 : ImVec2,
) -> Bool = "ImGui_SelectableBoolPtrEx"

///|
/// Generated raw binding for `ImGui_BeginMultiSelect`.
pub extern "C" fn im_gui_begin_multi_select(_p0 : Int) -> ImGuiMultiSelectIO = "ImGui_BeginMultiSelect"

///|
/// Generated raw binding for `ImGui_BeginMultiSelectEx`.
pub extern "C" fn im_gui_begin_multi_select_ex(
  _p0 : Int,
  _p1 : Int,
  _p2 : Int,
) -> ImGuiMultiSelectIO = "ImGui_BeginMultiSelectEx"

///|
/// Generated raw binding for `ImGui_EndMultiSelect`.
pub extern "C" fn im_gui_end_multi_select() -> ImGuiMultiSelectIO = "ImGui_EndMultiSelect"

///|
/// Generated raw binding for `ImGui_SetNextItemSelectionUserData`.
pub extern "C" fn im_gui_set_next_item_selection_user_data(_p0 : Int64) -> Unit = "ImGui_SetNextItemSelectionUserData"

///|
/// Generated raw binding for `ImGui_IsItemToggledSelection`.
pub extern "C" fn im_gui_is_item_toggled_selection() -> Bool = "ImGui_IsItemToggledSelection"

///|
/// Generated raw binding for `ImGui_BeginListBox`.
pub extern "C" fn im_gui_begin_list_box(_p0 : CString, _p1 : ImVec2) -> Bool = "ImGui_BeginListBox"

///|
/// Generated raw binding for `ImGui_EndListBox`.
pub extern "C" fn im_gui_end_list_box() -> Unit = "ImGui_EndListBox"

///|
/// Generated raw binding for `ImGui_ListBox`.
pub extern "C" fn im_gui_list_box(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : CStringPtr,
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_ListBox"

///|
/// Generated raw binding for `ImGui_ListBoxCallback`.
pub extern "C" fn im_gui_list_box_callback(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : FunctionPtr,
  _p3 : VoidPtr,
  _p4 : Int,
) -> Bool = "ImGui_ListBoxCallback"

///|
/// Generated raw binding for `ImGui_ListBoxCallbackEx`.
pub extern "C" fn im_gui_list_box_callback_ex(
  _p0 : CString,
  _p1 : IntPtr,
  _p2 : FunctionPtr,
  _p3 : VoidPtr,
  _p4 : Int,
  _p5 : Int,
) -> Bool = "ImGui_ListBoxCallbackEx"

///|
/// Generated raw binding for `ImGui_PlotLines`.
pub extern "C" fn im_gui_plot_lines(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Int,
) -> Unit = "ImGui_PlotLines"

///|
/// Generated raw binding for `ImGui_PlotLinesEx`.
pub extern "C" fn im_gui_plot_lines_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : CString,
  _p5 : Float,
  _p6 : Float,
  _p7 : ImVec2,
  _p8 : Int,
) -> Unit = "ImGui_PlotLinesEx"

///|
/// Generated raw binding for `ImGui_PlotLinesCallback`.
pub extern "C" fn im_gui_plot_lines_callback(
  _p0 : CString,
  _p1 : FunctionPtr,
  _p2 : VoidPtr,
  _p3 : Int,
) -> Unit = "ImGui_PlotLinesCallback"

///|
/// Generated raw binding for `ImGui_PlotLinesCallbackEx`.
pub extern "C" fn im_gui_plot_lines_callback_ex(
  _p0 : CString,
  _p1 : FunctionPtr,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : Int,
  _p5 : CString,
  _p6 : Float,
  _p7 : Float,
  _p8 : ImVec2,
) -> Unit = "ImGui_PlotLinesCallbackEx"

///|
/// Generated raw binding for `ImGui_PlotHistogram`.
pub extern "C" fn im_gui_plot_histogram(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Int,
) -> Unit = "ImGui_PlotHistogram"

///|
/// Generated raw binding for `ImGui_PlotHistogramEx`.
pub extern "C" fn im_gui_plot_histogram_ex(
  _p0 : CString,
  _p1 : FloatPtr,
  _p2 : Int,
  _p3 : Int,
  _p4 : CString,
  _p5 : Float,
  _p6 : Float,
  _p7 : ImVec2,
  _p8 : Int,
) -> Unit = "ImGui_PlotHistogramEx"

///|
/// Generated raw binding for `ImGui_PlotHistogramCallback`.
pub extern "C" fn im_gui_plot_histogram_callback(
  _p0 : CString,
  _p1 : FunctionPtr,
  _p2 : VoidPtr,
  _p3 : Int,
) -> Unit = "ImGui_PlotHistogramCallback"

///|
/// Generated raw binding for `ImGui_PlotHistogramCallbackEx`.
pub extern "C" fn im_gui_plot_histogram_callback_ex(
  _p0 : CString,
  _p1 : FunctionPtr,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : Int,
  _p5 : CString,
  _p6 : Float,
  _p7 : Float,
  _p8 : ImVec2,
) -> Unit = "ImGui_PlotHistogramCallbackEx"

///|
/// Generated raw binding for `ImGui_BeginMenuBar`.
pub extern "C" fn im_gui_begin_menu_bar() -> Bool = "ImGui_BeginMenuBar"

///|
/// Generated raw binding for `ImGui_EndMenuBar`.
pub extern "C" fn im_gui_end_menu_bar() -> Unit = "ImGui_EndMenuBar"

///|
/// Generated raw binding for `ImGui_BeginMainMenuBar`.
pub extern "C" fn im_gui_begin_main_menu_bar() -> Bool = "ImGui_BeginMainMenuBar"

///|
/// Generated raw binding for `ImGui_EndMainMenuBar`.
pub extern "C" fn im_gui_end_main_menu_bar() -> Unit = "ImGui_EndMainMenuBar"

///|
/// Generated raw binding for `ImGui_BeginMenu`.
pub extern "C" fn im_gui_begin_menu(_p0 : CString) -> Bool = "ImGui_BeginMenu"

///|
/// Generated raw binding for `ImGui_BeginMenuEx`.
pub extern "C" fn im_gui_begin_menu_ex(_p0 : CString, _p1 : Bool) -> Bool = "ImGui_BeginMenuEx"

///|
/// Generated raw binding for `ImGui_EndMenu`.
pub extern "C" fn im_gui_end_menu() -> Unit = "ImGui_EndMenu"

///|
/// Generated raw binding for `ImGui_MenuItem`.
pub extern "C" fn im_gui_menu_item(_p0 : CString) -> Bool = "ImGui_MenuItem"

///|
/// Generated raw binding for `ImGui_MenuItemEx`.
pub extern "C" fn im_gui_menu_item_ex(
  _p0 : CString,
  _p1 : CString,
  _p2 : Bool,
  _p3 : Bool,
) -> Bool = "ImGui_MenuItemEx"

///|
/// Generated raw binding for `ImGui_MenuItemBoolPtr`.
pub extern "C" fn im_gui_menu_item_bool_ptr(
  _p0 : CString,
  _p1 : CString,
  _p2 : BoolPtr,
  _p3 : Bool,
) -> Bool = "ImGui_MenuItemBoolPtr"

///|
/// Generated raw binding for `ImGui_BeginTooltip`.
pub extern "C" fn im_gui_begin_tooltip() -> Bool = "ImGui_BeginTooltip"

///|
/// Generated raw binding for `ImGui_EndTooltip`.
pub extern "C" fn im_gui_end_tooltip() -> Unit = "ImGui_EndTooltip"

///|
/// Generated raw binding for `ImGui_SetTooltip`.
pub extern "C" fn im_gui_set_tooltip(_p0 : CString) -> Unit = "moonbit_dcimgui_ImGui_SetTooltip"

///|
/// Generated raw binding for `ImGui_SetTooltipUnformatted`.
pub extern "C" fn im_gui_set_tooltip_unformatted(_p0 : CString) -> Unit = "ImGui_SetTooltipUnformatted"

///|
/// Generated raw binding for `ImGui_SetTooltipV`.
pub extern "C" fn im_gui_set_tooltip_v(_p0 : CString, _p1 : VaList) -> Unit = "ImGui_SetTooltipV"

///|
/// Generated raw binding for `ImGui_BeginItemTooltip`.
pub extern "C" fn im_gui_begin_item_tooltip() -> Bool = "ImGui_BeginItemTooltip"

///|
/// Generated raw binding for `ImGui_SetItemTooltip`.
pub extern "C" fn im_gui_set_item_tooltip(_p0 : CString) -> Unit = "moonbit_dcimgui_ImGui_SetItemTooltip"

///|
/// Generated raw binding for `ImGui_SetItemTooltipUnformatted`.
pub extern "C" fn im_gui_set_item_tooltip_unformatted(_p0 : CString) -> Unit = "ImGui_SetItemTooltipUnformatted"

///|
/// Generated raw binding for `ImGui_SetItemTooltipV`.
pub extern "C" fn im_gui_set_item_tooltip_v(
  _p0 : CString,
  _p1 : VaList,
) -> Unit = "ImGui_SetItemTooltipV"

///|
/// Generated raw binding for `ImGui_BeginPopup`.
pub extern "C" fn im_gui_begin_popup(_p0 : CString, _p1 : Int) -> Bool = "ImGui_BeginPopup"

///|
/// Generated raw binding for `ImGui_BeginPopupModal`.
pub extern "C" fn im_gui_begin_popup_modal(
  _p0 : CString,
  _p1 : BoolPtr,
  _p2 : Int,
) -> Bool = "ImGui_BeginPopupModal"

///|
/// Generated raw binding for `ImGui_EndPopup`.
pub extern "C" fn im_gui_end_popup() -> Unit = "ImGui_EndPopup"

///|
/// Generated raw binding for `ImGui_OpenPopup`.
pub extern "C" fn im_gui_open_popup(_p0 : CString, _p1 : Int) -> Unit = "ImGui_OpenPopup"

///|
/// Generated raw binding for `ImGui_OpenPopupID`.
pub extern "C" fn im_gui_open_popup_id(_p0 : UInt, _p1 : Int) -> Unit = "ImGui_OpenPopupID"

///|
/// Generated raw binding for `ImGui_OpenPopupOnItemClick`.
pub extern "C" fn im_gui_open_popup_on_item_click(
  _p0 : CString,
  _p1 : Int,
) -> Unit = "ImGui_OpenPopupOnItemClick"

///|
/// Generated raw binding for `ImGui_CloseCurrentPopup`.
pub extern "C" fn im_gui_close_current_popup() -> Unit = "ImGui_CloseCurrentPopup"

///|
/// Generated raw binding for `ImGui_BeginPopupContextItem`.
pub extern "C" fn im_gui_begin_popup_context_item() -> Bool = "ImGui_BeginPopupContextItem"

///|
/// Generated raw binding for `ImGui_BeginPopupContextItemEx`.
pub extern "C" fn im_gui_begin_popup_context_item_ex(
  _p0 : CString,
  _p1 : Int,
) -> Bool = "ImGui_BeginPopupContextItemEx"

///|
/// Generated raw binding for `ImGui_BeginPopupContextWindow`.
pub extern "C" fn im_gui_begin_popup_context_window() -> Bool = "ImGui_BeginPopupContextWindow"

///|
/// Generated raw binding for `ImGui_BeginPopupContextWindowEx`.
pub extern "C" fn im_gui_begin_popup_context_window_ex(
  _p0 : CString,
  _p1 : Int,
) -> Bool = "ImGui_BeginPopupContextWindowEx"

///|
/// Generated raw binding for `ImGui_BeginPopupContextVoid`.
pub extern "C" fn im_gui_begin_popup_context_void() -> Bool = "ImGui_BeginPopupContextVoid"

///|
/// Generated raw binding for `ImGui_BeginPopupContextVoidEx`.
pub extern "C" fn im_gui_begin_popup_context_void_ex(
  _p0 : CString,
  _p1 : Int,
) -> Bool = "ImGui_BeginPopupContextVoidEx"

///|
/// Generated raw binding for `ImGui_IsPopupOpen`.
pub extern "C" fn im_gui_is_popup_open(_p0 : CString, _p1 : Int) -> Bool = "ImGui_IsPopupOpen"

///|
/// Generated raw binding for `ImGui_BeginTable`.
pub extern "C" fn im_gui_begin_table(
  _p0 : CString,
  _p1 : Int,
  _p2 : Int,
) -> Bool = "ImGui_BeginTable"

///|
/// Generated raw binding for `ImGui_BeginTableEx`.
pub extern "C" fn im_gui_begin_table_ex(
  _p0 : CString,
  _p1 : Int,
  _p2 : Int,
  _p3 : ImVec2,
  _p4 : Float,
) -> Bool = "ImGui_BeginTableEx"

///|
/// Generated raw binding for `ImGui_EndTable`.
pub extern "C" fn im_gui_end_table() -> Unit = "ImGui_EndTable"

///|
/// Generated raw binding for `ImGui_TableNextRow`.
pub extern "C" fn im_gui_table_next_row() -> Unit = "ImGui_TableNextRow"

///|
/// Generated raw binding for `ImGui_TableNextRowEx`.
pub extern "C" fn im_gui_table_next_row_ex(_p0 : Int, _p1 : Float) -> Unit = "ImGui_TableNextRowEx"

///|
/// Generated raw binding for `ImGui_TableNextColumn`.
pub extern "C" fn im_gui_table_next_column() -> Bool = "ImGui_TableNextColumn"

///|
/// Generated raw binding for `ImGui_TableSetColumnIndex`.
pub extern "C" fn im_gui_table_set_column_index(_p0 : Int) -> Bool = "ImGui_TableSetColumnIndex"

///|
/// Generated raw binding for `ImGui_TableSetupColumn`.
pub extern "C" fn im_gui_table_setup_column(_p0 : CString, _p1 : Int) -> Unit = "ImGui_TableSetupColumn"

///|
/// Generated raw binding for `ImGui_TableSetupColumnEx`.
pub extern "C" fn im_gui_table_setup_column_ex(
  _p0 : CString,
  _p1 : Int,
  _p2 : Float,
  _p3 : UInt,
) -> Unit = "ImGui_TableSetupColumnEx"

///|
/// Generated raw binding for `ImGui_TableSetupScrollFreeze`.
pub extern "C" fn im_gui_table_setup_scroll_freeze(
  _p0 : Int,
  _p1 : Int,
) -> Unit = "ImGui_TableSetupScrollFreeze"

///|
/// Generated raw binding for `ImGui_TableHeader`.
pub extern "C" fn im_gui_table_header(_p0 : CString) -> Unit = "ImGui_TableHeader"

///|
/// Generated raw binding for `ImGui_TableHeadersRow`.
pub extern "C" fn im_gui_table_headers_row() -> Unit = "ImGui_TableHeadersRow"

///|
/// Generated raw binding for `ImGui_TableAngledHeadersRow`.
pub extern "C" fn im_gui_table_angled_headers_row() -> Unit = "ImGui_TableAngledHeadersRow"

///|
/// Generated raw binding for `ImGui_TableGetSortSpecs`.
pub extern "C" fn im_gui_table_get_sort_specs() -> ImGuiTableSortSpecs = "ImGui_TableGetSortSpecs"

///|
/// Generated raw binding for `ImGui_TableGetColumnCount`.
pub extern "C" fn im_gui_table_get_column_count() -> Int = "ImGui_TableGetColumnCount"

///|
/// Generated raw binding for `ImGui_TableGetColumnIndex`.
pub extern "C" fn im_gui_table_get_column_index() -> Int = "ImGui_TableGetColumnIndex"

///|
/// Generated raw binding for `ImGui_TableGetRowIndex`.
pub extern "C" fn im_gui_table_get_row_index() -> Int = "ImGui_TableGetRowIndex"

///|
/// Generated raw binding for `ImGui_TableGetColumnName`.
pub extern "C" fn im_gui_table_get_column_name(_p0 : Int) -> CString = "ImGui_TableGetColumnName"

///|
/// Generated raw binding for `ImGui_TableGetColumnFlags`.
pub extern "C" fn im_gui_table_get_column_flags(_p0 : Int) -> Int = "ImGui_TableGetColumnFlags"

///|
/// Generated raw binding for `ImGui_TableSetColumnEnabled`.
pub extern "C" fn im_gui_table_set_column_enabled(
  _p0 : Int,
  _p1 : Bool,
) -> Unit = "ImGui_TableSetColumnEnabled"

///|
/// Generated raw binding for `ImGui_TableGetHoveredColumn`.
pub extern "C" fn im_gui_table_get_hovered_column() -> Int = "ImGui_TableGetHoveredColumn"

///|
/// Generated raw binding for `ImGui_TableSetBgColor`.
pub extern "C" fn im_gui_table_set_bg_color(
  _p0 : Int,
  _p1 : UInt,
  _p2 : Int,
) -> Unit = "ImGui_TableSetBgColor"

///|
/// Generated raw binding for `ImGui_Columns`.
pub extern "C" fn im_gui_columns() -> Unit = "ImGui_Columns"

///|
/// Generated raw binding for `ImGui_ColumnsEx`.
pub extern "C" fn im_gui_columns_ex(
  _p0 : Int,
  _p1 : CString,
  _p2 : Bool,
) -> Unit = "ImGui_ColumnsEx"

///|
/// Generated raw binding for `ImGui_NextColumn`.
pub extern "C" fn im_gui_next_column() -> Unit = "ImGui_NextColumn"

///|
/// Generated raw binding for `ImGui_GetColumnIndex`.
pub extern "C" fn im_gui_get_column_index() -> Int = "ImGui_GetColumnIndex"

///|
/// Generated raw binding for `ImGui_GetColumnWidth`.
pub extern "C" fn im_gui_get_column_width(_p0 : Int) -> Float = "ImGui_GetColumnWidth"

///|
/// Generated raw binding for `ImGui_SetColumnWidth`.
pub extern "C" fn im_gui_set_column_width(_p0 : Int, _p1 : Float) -> Unit = "ImGui_SetColumnWidth"

///|
/// Generated raw binding for `ImGui_GetColumnOffset`.
pub extern "C" fn im_gui_get_column_offset(_p0 : Int) -> Float = "ImGui_GetColumnOffset"

///|
/// Generated raw binding for `ImGui_SetColumnOffset`.
pub extern "C" fn im_gui_set_column_offset(_p0 : Int, _p1 : Float) -> Unit = "ImGui_SetColumnOffset"

///|
/// Generated raw binding for `ImGui_GetColumnsCount`.
pub extern "C" fn im_gui_get_columns_count() -> Int = "ImGui_GetColumnsCount"

///|
/// Generated raw binding for `ImGui_BeginTabBar`.
pub extern "C" fn im_gui_begin_tab_bar(_p0 : CString, _p1 : Int) -> Bool = "ImGui_BeginTabBar"

///|
/// Generated raw binding for `ImGui_EndTabBar`.
pub extern "C" fn im_gui_end_tab_bar() -> Unit = "ImGui_EndTabBar"

///|
/// Generated raw binding for `ImGui_BeginTabItem`.
pub extern "C" fn im_gui_begin_tab_item(
  _p0 : CString,
  _p1 : BoolPtr,
  _p2 : Int,
) -> Bool = "ImGui_BeginTabItem"

///|
/// Generated raw binding for `ImGui_EndTabItem`.
pub extern "C" fn im_gui_end_tab_item() -> Unit = "ImGui_EndTabItem"

///|
/// Generated raw binding for `ImGui_TabItemButton`.
pub extern "C" fn im_gui_tab_item_button(_p0 : CString, _p1 : Int) -> Bool = "ImGui_TabItemButton"

///|
/// Generated raw binding for `ImGui_SetTabItemClosed`.
pub extern "C" fn im_gui_set_tab_item_closed(_p0 : CString) -> Unit = "ImGui_SetTabItemClosed"

///|
/// Generated raw binding for `ImGui_LogToTTY`.
pub extern "C" fn im_gui_log_to_tty(_p0 : Int) -> Unit = "ImGui_LogToTTY"

///|
/// Generated raw binding for `ImGui_LogToFile`.
pub extern "C" fn im_gui_log_to_file(_p0 : Int, _p1 : CString) -> Unit = "ImGui_LogToFile"

///|
/// Generated raw binding for `ImGui_LogToClipboard`.
pub extern "C" fn im_gui_log_to_clipboard(_p0 : Int) -> Unit = "ImGui_LogToClipboard"

///|
/// Generated raw binding for `ImGui_LogFinish`.
pub extern "C" fn im_gui_log_finish() -> Unit = "ImGui_LogFinish"

///|
/// Generated raw binding for `ImGui_LogButtons`.
pub extern "C" fn im_gui_log_buttons() -> Unit = "ImGui_LogButtons"

///|
/// Generated raw binding for `ImGui_LogText`.
pub extern "C" fn im_gui_log_text(_p0 : CString) -> Unit = "moonbit_dcimgui_ImGui_LogText"

///|
/// Generated raw binding for `ImGui_LogTextUnformatted`.
pub extern "C" fn im_gui_log_text_unformatted(_p0 : CString) -> Unit = "ImGui_LogTextUnformatted"

///|
/// Generated raw binding for `ImGui_LogTextV`.
pub extern "C" fn im_gui_log_text_v(_p0 : CString, _p1 : VaList) -> Unit = "ImGui_LogTextV"

///|
/// Generated raw binding for `ImGui_BeginDragDropSource`.
pub extern "C" fn im_gui_begin_drag_drop_source(_p0 : Int) -> Bool = "ImGui_BeginDragDropSource"

///|
/// Generated raw binding for `ImGui_SetDragDropPayload`.
pub extern "C" fn im_gui_set_drag_drop_payload(
  _p0 : CString,
  _p1 : VoidPtr,
  _p2 : UInt64,
  _p3 : Int,
) -> Bool = "ImGui_SetDragDropPayload"

///|
/// Generated raw binding for `ImGui_EndDragDropSource`.
pub extern "C" fn im_gui_end_drag_drop_source() -> Unit = "ImGui_EndDragDropSource"

///|
/// Generated raw binding for `ImGui_BeginDragDropTarget`.
pub extern "C" fn im_gui_begin_drag_drop_target() -> Bool = "ImGui_BeginDragDropTarget"

///|
/// Generated raw binding for `ImGui_AcceptDragDropPayload`.
pub extern "C" fn im_gui_accept_drag_drop_payload(
  _p0 : CString,
  _p1 : Int,
) -> ImGuiPayload = "ImGui_AcceptDragDropPayload"

///|
/// Generated raw binding for `ImGui_EndDragDropTarget`.
pub extern "C" fn im_gui_end_drag_drop_target() -> Unit = "ImGui_EndDragDropTarget"

///|
/// Generated raw binding for `ImGui_GetDragDropPayload`.
pub extern "C" fn im_gui_get_drag_drop_payload() -> ImGuiPayload = "ImGui_GetDragDropPayload"

///|
/// Generated raw binding for `ImGui_BeginDisabled`.
pub extern "C" fn im_gui_begin_disabled(_p0 : Bool) -> Unit = "ImGui_BeginDisabled"

///|
/// Generated raw binding for `ImGui_EndDisabled`.
pub extern "C" fn im_gui_end_disabled() -> Unit = "ImGui_EndDisabled"

///|
/// Generated raw binding for `ImGui_PushClipRect`.
pub extern "C" fn im_gui_push_clip_rect(
  _p0 : ImVec2,
  _p1 : ImVec2,
  _p2 : Bool,
) -> Unit = "ImGui_PushClipRect"

///|
/// Generated raw binding for `ImGui_PopClipRect`.
pub extern "C" fn im_gui_pop_clip_rect() -> Unit = "ImGui_PopClipRect"

///|
/// Generated raw binding for `ImGui_SetItemDefaultFocus`.
pub extern "C" fn im_gui_set_item_default_focus() -> Unit = "ImGui_SetItemDefaultFocus"

///|
/// Generated raw binding for `ImGui_SetKeyboardFocusHere`.
pub extern "C" fn im_gui_set_keyboard_focus_here() -> Unit = "ImGui_SetKeyboardFocusHere"

///|
/// Generated raw binding for `ImGui_SetKeyboardFocusHereEx`.
pub extern "C" fn im_gui_set_keyboard_focus_here_ex(_p0 : Int) -> Unit = "ImGui_SetKeyboardFocusHereEx"

///|
/// Generated raw binding for `ImGui_SetNavCursorVisible`.
pub extern "C" fn im_gui_set_nav_cursor_visible(_p0 : Bool) -> Unit = "ImGui_SetNavCursorVisible"

///|
/// Generated raw binding for `ImGui_SetNextItemAllowOverlap`.
pub extern "C" fn im_gui_set_next_item_allow_overlap() -> Unit = "ImGui_SetNextItemAllowOverlap"

///|
/// Generated raw binding for `ImGui_IsItemHovered`.
pub extern "C" fn im_gui_is_item_hovered(_p0 : Int) -> Bool = "ImGui_IsItemHovered"

///|
/// Generated raw binding for `ImGui_IsItemActive`.
pub extern "C" fn im_gui_is_item_active() -> Bool = "ImGui_IsItemActive"

///|
/// Generated raw binding for `ImGui_IsItemFocused`.
pub extern "C" fn im_gui_is_item_focused() -> Bool = "ImGui_IsItemFocused"

///|
/// Generated raw binding for `ImGui_IsItemClicked`.
pub extern "C" fn im_gui_is_item_clicked() -> Bool = "ImGui_IsItemClicked"

///|
/// Generated raw binding for `ImGui_IsItemClickedEx`.
pub extern "C" fn im_gui_is_item_clicked_ex(_p0 : Int) -> Bool = "ImGui_IsItemClickedEx"

///|
/// Generated raw binding for `ImGui_IsItemVisible`.
pub extern "C" fn im_gui_is_item_visible() -> Bool = "ImGui_IsItemVisible"

///|
/// Generated raw binding for `ImGui_IsItemEdited`.
pub extern "C" fn im_gui_is_item_edited() -> Bool = "ImGui_IsItemEdited"

///|
/// Generated raw binding for `ImGui_IsItemActivated`.
pub extern "C" fn im_gui_is_item_activated() -> Bool = "ImGui_IsItemActivated"

///|
/// Generated raw binding for `ImGui_IsItemDeactivated`.
pub extern "C" fn im_gui_is_item_deactivated() -> Bool = "ImGui_IsItemDeactivated"

///|
/// Generated raw binding for `ImGui_IsItemDeactivatedAfterEdit`.
pub extern "C" fn im_gui_is_item_deactivated_after_edit() -> Bool = "ImGui_IsItemDeactivatedAfterEdit"

///|
/// Generated raw binding for `ImGui_IsItemToggledOpen`.
pub extern "C" fn im_gui_is_item_toggled_open() -> Bool = "ImGui_IsItemToggledOpen"

///|
/// Generated raw binding for `ImGui_IsAnyItemHovered`.
pub extern "C" fn im_gui_is_any_item_hovered() -> Bool = "ImGui_IsAnyItemHovered"

///|
/// Generated raw binding for `ImGui_IsAnyItemActive`.
pub extern "C" fn im_gui_is_any_item_active() -> Bool = "ImGui_IsAnyItemActive"

///|
/// Generated raw binding for `ImGui_IsAnyItemFocused`.
pub extern "C" fn im_gui_is_any_item_focused() -> Bool = "ImGui_IsAnyItemFocused"

///|
/// Generated raw binding for `ImGui_GetItemID`.
pub extern "C" fn im_gui_get_item_id() -> UInt = "ImGui_GetItemID"

///|
/// Generated raw binding for `ImGui_GetItemRectMin`.
pub extern "C" fn im_gui_get_item_rect_min() -> ImVec2 = "moonbit_dcimgui_ImGui_GetItemRectMin"

///|
/// Generated raw binding for `ImGui_GetItemRectMax`.
pub extern "C" fn im_gui_get_item_rect_max() -> ImVec2 = "moonbit_dcimgui_ImGui_GetItemRectMax"

///|
/// Generated raw binding for `ImGui_GetItemRectSize`.
pub extern "C" fn im_gui_get_item_rect_size() -> ImVec2 = "moonbit_dcimgui_ImGui_GetItemRectSize"

///|
/// Generated raw binding for `ImGui_GetItemFlags`.
pub extern "C" fn im_gui_get_item_flags() -> Int = "ImGui_GetItemFlags"

///|
/// Generated raw binding for `ImGui_GetMainViewport`.
pub extern "C" fn im_gui_get_main_viewport() -> ImGuiViewport = "ImGui_GetMainViewport"

///|
/// Generated raw binding for `ImGui_GetBackgroundDrawList`.
pub extern "C" fn im_gui_get_background_draw_list() -> ImDrawList = "ImGui_GetBackgroundDrawList"

///|
/// Generated raw binding for `ImGui_GetForegroundDrawList`.
pub extern "C" fn im_gui_get_foreground_draw_list() -> ImDrawList = "ImGui_GetForegroundDrawList"

///|
/// Generated raw binding for `ImGui_IsRectVisibleBySize`.
pub extern "C" fn im_gui_is_rect_visible_by_size(_p0 : ImVec2) -> Bool = "ImGui_IsRectVisibleBySize"

///|
/// Generated raw binding for `ImGui_IsRectVisibleImVec2Ptr`.
pub extern "C" fn im_gui_is_rect_visible_im_vec2_ptr(
  _p0 : ImVec2,
  _p1 : ImVec2,
) -> Bool = "ImGui_IsRectVisibleImVec2Ptr"

///|
/// Generated raw binding for `ImGui_GetTime`.
pub extern "C" fn im_gui_get_time() -> Double = "ImGui_GetTime"

///|
/// Generated raw binding for `ImGui_GetFrameCount`.
pub extern "C" fn im_gui_get_frame_count() -> Int = "ImGui_GetFrameCount"

///|
/// Generated raw binding for `ImGui_GetDrawListSharedData`.
pub extern "C" fn im_gui_get_draw_list_shared_data() -> ImDrawListSharedData = "ImGui_GetDrawListSharedData"

///|
/// Generated raw binding for `ImGui_GetStyleColorName`.
pub extern "C" fn im_gui_get_style_color_name(_p0 : Int) -> CString = "ImGui_GetStyleColorName"

///|
/// Generated raw binding for `ImGui_SetStateStorage`.
pub extern "C" fn im_gui_set_state_storage(_p0 : ImGuiStorage) -> Unit = "ImGui_SetStateStorage"

///|
/// Generated raw binding for `ImGui_GetStateStorage`.
pub extern "C" fn im_gui_get_state_storage() -> ImGuiStorage = "ImGui_GetStateStorage"

///|
/// Generated raw binding for `ImGui_CalcTextSize`.
pub extern "C" fn im_gui_calc_text_size(_p0 : CString) -> ImVec2 = "moonbit_dcimgui_ImGui_CalcTextSize"

///|
/// Generated raw binding for `ImGui_CalcTextSizeEx`.
pub extern "C" fn im_gui_calc_text_size_ex(
  _p0 : CString,
  _p1 : CString,
  _p2 : Bool,
  _p3 : Float,
) -> ImVec2 = "moonbit_dcimgui_ImGui_CalcTextSizeEx"

///|
/// Generated raw binding for `ImGui_ColorConvertU32ToFloat4`.
pub extern "C" fn im_gui_color_convert_u32_to_float4(_p0 : UInt) -> ImVec4 = "moonbit_dcimgui_ImGui_ColorConvertU32ToFloat4"

///|
/// Generated raw binding for `ImGui_ColorConvertFloat4ToU32`.
pub extern "C" fn im_gui_color_convert_float4_to_u32(_p0 : ImVec4) -> UInt = "ImGui_ColorConvertFloat4ToU32"

///|
/// Generated raw binding for `ImGui_ColorConvertRGBtoHSV`.
pub extern "C" fn im_gui_color_convert_rg_bto_hsv(
  _p0 : Float,
  _p1 : Float,
  _p2 : Float,
  _p3 : FloatPtr,
  _p4 : FloatPtr,
  _p5 : FloatPtr,
) -> Unit = "ImGui_ColorConvertRGBtoHSV"

///|
/// Generated raw binding for `ImGui_ColorConvertHSVtoRGB`.
pub extern "C" fn im_gui_color_convert_hs_vto_rgb(
  _p0 : Float,
  _p1 : Float,
  _p2 : Float,
  _p3 : FloatPtr,
  _p4 : FloatPtr,
  _p5 : FloatPtr,
) -> Unit = "ImGui_ColorConvertHSVtoRGB"

///|
/// Generated raw binding for `ImGui_IsKeyDown`.
pub extern "C" fn im_gui_is_key_down(_p0 : Int) -> Bool = "ImGui_IsKeyDown"

///|
/// Generated raw binding for `ImGui_IsKeyPressed`.
pub extern "C" fn im_gui_is_key_pressed(_p0 : Int) -> Bool = "ImGui_IsKeyPressed"

///|
/// Generated raw binding for `ImGui_IsKeyPressedEx`.
pub extern "C" fn im_gui_is_key_pressed_ex(_p0 : Int, _p1 : Bool) -> Bool = "ImGui_IsKeyPressedEx"

///|
/// Generated raw binding for `ImGui_IsKeyReleased`.
pub extern "C" fn im_gui_is_key_released(_p0 : Int) -> Bool = "ImGui_IsKeyReleased"

///|
/// Generated raw binding for `ImGui_IsKeyChordPressed`.
pub extern "C" fn im_gui_is_key_chord_pressed(_p0 : Int) -> Bool = "ImGui_IsKeyChordPressed"

///|
/// Generated raw binding for `ImGui_GetKeyPressedAmount`.
pub extern "C" fn im_gui_get_key_pressed_amount(
  _p0 : Int,
  _p1 : Float,
  _p2 : Float,
) -> Int = "ImGui_GetKeyPressedAmount"

///|
/// Generated raw binding for `ImGui_GetKeyName`.
pub extern "C" fn im_gui_get_key_name(_p0 : Int) -> CString = "ImGui_GetKeyName"

///|
/// Generated raw binding for `ImGui_SetNextFrameWantCaptureKeyboard`.
pub extern "C" fn im_gui_set_next_frame_want_capture_keyboard(
  _p0 : Bool,
) -> Unit = "ImGui_SetNextFrameWantCaptureKeyboard"

///|
/// Generated raw binding for `ImGui_Shortcut`.
pub extern "C" fn im_gui_shortcut(_p0 : Int, _p1 : Int) -> Bool = "ImGui_Shortcut"

///|
/// Generated raw binding for `ImGui_SetNextItemShortcut`.
pub extern "C" fn im_gui_set_next_item_shortcut(_p0 : Int, _p1 : Int) -> Unit = "ImGui_SetNextItemShortcut"

///|
/// Generated raw binding for `ImGui_SetItemKeyOwner`.
pub extern "C" fn im_gui_set_item_key_owner(_p0 : Int) -> Bool = "ImGui_SetItemKeyOwner"

///|
/// Generated raw binding for `ImGui_IsMouseDown`.
pub extern "C" fn im_gui_is_mouse_down(_p0 : Int) -> Bool = "ImGui_IsMouseDown"

///|
/// Generated raw binding for `ImGui_IsMouseClicked`.
pub extern "C" fn im_gui_is_mouse_clicked(_p0 : Int) -> Bool = "ImGui_IsMouseClicked"

///|
/// Generated raw binding for `ImGui_IsMouseClickedEx`.
pub extern "C" fn im_gui_is_mouse_clicked_ex(_p0 : Int, _p1 : Bool) -> Bool = "ImGui_IsMouseClickedEx"

///|
/// Generated raw binding for `ImGui_IsMouseReleased`.
pub extern "C" fn im_gui_is_mouse_released(_p0 : Int) -> Bool = "ImGui_IsMouseReleased"

///|
/// Generated raw binding for `ImGui_IsMouseDoubleClicked`.
pub extern "C" fn im_gui_is_mouse_double_clicked(_p0 : Int) -> Bool = "ImGui_IsMouseDoubleClicked"

///|
/// Generated raw binding for `ImGui_IsMouseReleasedWithDelay`.
pub extern "C" fn im_gui_is_mouse_released_with_delay(
  _p0 : Int,
  _p1 : Float,
) -> Bool = "ImGui_IsMouseReleasedWithDelay"

///|
/// Generated raw binding for `ImGui_GetMouseClickedCount`.
pub extern "C" fn im_gui_get_mouse_clicked_count(_p0 : Int) -> Int = "ImGui_GetMouseClickedCount"

///|
/// Generated raw binding for `ImGui_IsMouseHoveringRect`.
pub extern "C" fn im_gui_is_mouse_hovering_rect(
  _p0 : ImVec2,
  _p1 : ImVec2,
) -> Bool = "ImGui_IsMouseHoveringRect"

///|
/// Generated raw binding for `ImGui_IsMouseHoveringRectEx`.
pub extern "C" fn im_gui_is_mouse_hovering_rect_ex(
  _p0 : ImVec2,
  _p1 : ImVec2,
  _p2 : Bool,
) -> Bool = "ImGui_IsMouseHoveringRectEx"

///|
/// Generated raw binding for `ImGui_IsMousePosValid`.
pub extern "C" fn im_gui_is_mouse_pos_valid(_p0 : ImVec2) -> Bool = "ImGui_IsMousePosValid"

///|
/// Generated raw binding for `ImGui_IsAnyMouseDown`.
pub extern "C" fn im_gui_is_any_mouse_down() -> Bool = "ImGui_IsAnyMouseDown"

///|
/// Generated raw binding for `ImGui_GetMousePos`.
pub extern "C" fn im_gui_get_mouse_pos() -> ImVec2 = "moonbit_dcimgui_ImGui_GetMousePos"

///|
/// Generated raw binding for `ImGui_GetMousePosOnOpeningCurrentPopup`.
pub extern "C" fn im_gui_get_mouse_pos_on_opening_current_popup() -> ImVec2 = "moonbit_dcimgui_ImGui_GetMousePosOnOpeningCurrentPopup"

///|
/// Generated raw binding for `ImGui_IsMouseDragging`.
pub extern "C" fn im_gui_is_mouse_dragging(_p0 : Int, _p1 : Float) -> Bool = "ImGui_IsMouseDragging"

///|
/// Generated raw binding for `ImGui_GetMouseDragDelta`.
pub extern "C" fn im_gui_get_mouse_drag_delta(_p0 : Int, _p1 : Float) -> ImVec2 = "moonbit_dcimgui_ImGui_GetMouseDragDelta"

///|
/// Generated raw binding for `ImGui_ResetMouseDragDelta`.
pub extern "C" fn im_gui_reset_mouse_drag_delta() -> Unit = "ImGui_ResetMouseDragDelta"

///|
/// Generated raw binding for `ImGui_ResetMouseDragDeltaEx`.
pub extern "C" fn im_gui_reset_mouse_drag_delta_ex(_p0 : Int) -> Unit = "ImGui_ResetMouseDragDeltaEx"

///|
/// Generated raw binding for `ImGui_GetMouseCursor`.
pub extern "C" fn im_gui_get_mouse_cursor() -> Int = "ImGui_GetMouseCursor"

///|
/// Generated raw binding for `ImGui_SetMouseCursor`.
pub extern "C" fn im_gui_set_mouse_cursor(_p0 : Int) -> Unit = "ImGui_SetMouseCursor"

///|
/// Generated raw binding for `ImGui_SetNextFrameWantCaptureMouse`.
pub extern "C" fn im_gui_set_next_frame_want_capture_mouse(_p0 : Bool) -> Unit = "ImGui_SetNextFrameWantCaptureMouse"

///|
/// Generated raw binding for `ImGui_GetClipboardText`.
pub extern "C" fn im_gui_get_clipboard_text() -> CString = "ImGui_GetClipboardText"

///|
/// Generated raw binding for `ImGui_SetClipboardText`.
pub extern "C" fn im_gui_set_clipboard_text(_p0 : CString) -> Unit = "ImGui_SetClipboardText"

///|
/// Generated raw binding for `ImGui_LoadIniSettingsFromDisk`.
pub extern "C" fn im_gui_load_ini_settings_from_disk(_p0 : CString) -> Unit = "ImGui_LoadIniSettingsFromDisk"

///|
/// Generated raw binding for `ImGui_LoadIniSettingsFromMemory`.
pub extern "C" fn im_gui_load_ini_settings_from_memory(
  _p0 : CString,
  _p1 : UInt64,
) -> Unit = "ImGui_LoadIniSettingsFromMemory"

///|
/// Generated raw binding for `ImGui_SaveIniSettingsToDisk`.
pub extern "C" fn im_gui_save_ini_settings_to_disk(_p0 : CString) -> Unit = "ImGui_SaveIniSettingsToDisk"

///|
/// Generated raw binding for `ImGui_SaveIniSettingsToMemory`.
pub extern "C" fn im_gui_save_ini_settings_to_memory(_p0 : SizeTPtr) -> CString = "ImGui_SaveIniSettingsToMemory"

///|
/// Generated raw binding for `ImGui_DebugTextEncoding`.
pub extern "C" fn im_gui_debug_text_encoding(_p0 : CString) -> Unit = "ImGui_DebugTextEncoding"

///|
/// Generated raw binding for `ImGui_DebugFlashStyleColor`.
pub extern "C" fn im_gui_debug_flash_style_color(_p0 : Int) -> Unit = "ImGui_DebugFlashStyleColor"

///|
/// Generated raw binding for `ImGui_DebugStartItemPicker`.
pub extern "C" fn im_gui_debug_start_item_picker() -> Unit = "ImGui_DebugStartItemPicker"

///|
/// Generated raw binding for `ImGui_DebugCheckVersionAndDataLayout`.
pub extern "C" fn im_gui_debug_check_version_and_data_layout(
  _p0 : CString,
  _p1 : UInt64,
  _p2 : UInt64,
  _p3 : UInt64,
  _p4 : UInt64,
  _p5 : UInt64,
  _p6 : UInt64,
) -> Bool = "ImGui_DebugCheckVersionAndDataLayout"

///|
/// Generated raw binding for `ImGui_DebugLog`.
pub extern "C" fn im_gui_debug_log(_p0 : CString) -> Unit = "moonbit_dcimgui_ImGui_DebugLog"

///|
/// Generated raw binding for `ImGui_DebugLogUnformatted`.
pub extern "C" fn im_gui_debug_log_unformatted(_p0 : CString) -> Unit = "ImGui_DebugLogUnformatted"

///|
/// Generated raw binding for `ImGui_DebugLogV`.
pub extern "C" fn im_gui_debug_log_v(_p0 : CString, _p1 : VaList) -> Unit = "ImGui_DebugLogV"

///|
/// Generated raw binding for `ImGui_SetAllocatorFunctions`.
pub extern "C" fn im_gui_set_allocator_functions(
  _p0 : ImGuiMemAllocFunc,
  _p1 : ImGuiMemFreeFunc,
  _p2 : VoidPtr,
) -> Unit = "ImGui_SetAllocatorFunctions"

///|
/// Generated raw binding for `ImGui_GetAllocatorFunctions`.
pub extern "C" fn im_gui_get_allocator_functions(
  _p0 : ImGuiMemAllocFuncPtr,
  _p1 : ImGuiMemFreeFuncPtr,
  _p2 : VoidPtrPtr,
) -> Unit = "ImGui_GetAllocatorFunctions"

///|
/// Generated raw binding for `ImGui_MemAlloc`.
pub extern "C" fn im_gui_mem_alloc(_p0 : UInt64) -> VoidPtr = "ImGui_MemAlloc"

///|
/// Generated raw binding for `ImGui_MemFree`.
pub extern "C" fn im_gui_mem_free(_p0 : VoidPtr) -> Unit = "ImGui_MemFree"

///|
/// Generated raw binding for `ImVector_Construct`.
pub extern "C" fn im_vector_construct(_p0 : VoidPtr) -> Unit = "ImVector_Construct"

///|
/// Generated raw binding for `ImVector_Destruct`.
pub extern "C" fn im_vector_destruct(_p0 : VoidPtr) -> Unit = "ImVector_Destruct"

///|
/// Generated raw placeholder for unavailable optional `ImStr_FromCharStr`.
pub fn im_str_from_char_str(_p0 : CString) -> ImStr raise RawBindingError {
  raise RawBindingUnavailable("ImStr_FromCharStr")
}

///|
/// Generated raw binding for `ImGuiStyle_ScaleAllSizes`.
pub extern "C" fn im_gui_style_scale_all_sizes(
  _p0 : ImGuiStyle,
  _p1 : Float,
) -> Unit = "ImGuiStyle_ScaleAllSizes"

///|
/// Generated raw binding for `ImGuiIO_AddKeyEvent`.
pub extern "C" fn im_gui_io_add_key_event(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
) -> Unit = "ImGuiIO_AddKeyEvent"

///|
/// Generated raw binding for `ImGuiIO_AddKeyAnalogEvent`.
pub extern "C" fn im_gui_io_add_key_analog_event(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
  _p3 : Float,
) -> Unit = "ImGuiIO_AddKeyAnalogEvent"

///|
/// Generated raw binding for `ImGuiIO_AddMousePosEvent`.
pub extern "C" fn im_gui_io_add_mouse_pos_event(
  _p0 : ImGuiIO,
  _p1 : Float,
  _p2 : Float,
) -> Unit = "ImGuiIO_AddMousePosEvent"

///|
/// Generated raw binding for `ImGuiIO_AddMouseButtonEvent`.
pub extern "C" fn im_gui_io_add_mouse_button_event(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
) -> Unit = "ImGuiIO_AddMouseButtonEvent"

///|
/// Generated raw binding for `ImGuiIO_AddMouseWheelEvent`.
pub extern "C" fn im_gui_io_add_mouse_wheel_event(
  _p0 : ImGuiIO,
  _p1 : Float,
  _p2 : Float,
) -> Unit = "ImGuiIO_AddMouseWheelEvent"

///|
/// Generated raw binding for `ImGuiIO_AddMouseSourceEvent`.
pub extern "C" fn im_gui_io_add_mouse_source_event(
  _p0 : ImGuiIO,
  _p1 : Int,
) -> Unit = "ImGuiIO_AddMouseSourceEvent"

///|
/// Generated raw binding for `ImGuiIO_AddFocusEvent`.
pub extern "C" fn im_gui_io_add_focus_event(_p0 : ImGuiIO, _p1 : Bool) -> Unit = "ImGuiIO_AddFocusEvent"

///|
/// Generated raw binding for `ImGuiIO_AddInputCharacter`.
pub extern "C" fn im_gui_io_add_input_character(
  _p0 : ImGuiIO,
  _p1 : UInt,
) -> Unit = "ImGuiIO_AddInputCharacter"

///|
/// Generated raw binding for `ImGuiIO_AddInputCharacterUTF16`.
pub extern "C" fn im_gui_io_add_input_character_utf16(
  _p0 : ImGuiIO,
  _p1 : Int,
) -> Unit = "ImGuiIO_AddInputCharacterUTF16"

///|
/// Generated raw binding for `ImGuiIO_AddInputCharactersUTF8`.
pub extern "C" fn im_gui_io_add_input_characters_utf8(
  _p0 : ImGuiIO,
  _p1 : CString,
) -> Unit = "ImGuiIO_AddInputCharactersUTF8"

///|
/// Generated raw binding for `ImGuiIO_SetKeyEventNativeData`.
pub extern "C" fn im_gui_io_set_key_event_native_data(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Int,
  _p3 : Int,
) -> Unit = "ImGuiIO_SetKeyEventNativeData"

///|
/// Generated raw binding for `ImGuiIO_SetKeyEventNativeDataEx`.
pub extern "C" fn im_gui_io_set_key_event_native_data_ex(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
) -> Unit = "ImGuiIO_SetKeyEventNativeDataEx"

///|
/// Generated raw binding for `ImGuiIO_SetAppAcceptingEvents`.
pub extern "C" fn im_gui_io_set_app_accepting_events(
  _p0 : ImGuiIO,
  _p1 : Bool,
) -> Unit = "ImGuiIO_SetAppAcceptingEvents"

///|
/// Generated raw binding for `ImGuiIO_ClearEventsQueue`.
pub extern "C" fn im_gui_io_clear_events_queue(_p0 : ImGuiIO) -> Unit = "ImGuiIO_ClearEventsQueue"

///|
/// Generated raw binding for `ImGuiIO_ClearInputKeys`.
pub extern "C" fn im_gui_io_clear_input_keys(_p0 : ImGuiIO) -> Unit = "ImGuiIO_ClearInputKeys"

///|
/// Generated raw binding for `ImGuiIO_ClearInputMouse`.
pub extern "C" fn im_gui_io_clear_input_mouse(_p0 : ImGuiIO) -> Unit = "ImGuiIO_ClearInputMouse"

///|
/// Generated raw binding for `ImGuiInputTextCallbackData_DeleteChars`.
pub extern "C" fn im_gui_input_text_callback_data_delete_chars(
  _p0 : ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImGuiInputTextCallbackData_DeleteChars"

///|
/// Generated raw binding for `ImGuiInputTextCallbackData_InsertChars`.
pub extern "C" fn im_gui_input_text_callback_data_insert_chars(
  _p0 : ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : CString,
  _p3 : CString,
) -> Unit = "ImGuiInputTextCallbackData_InsertChars"

///|
/// Generated raw binding for `ImGuiInputTextCallbackData_SelectAll`.
pub extern "C" fn im_gui_input_text_callback_data_select_all(
  _p0 : ImGuiInputTextCallbackData,
) -> Unit = "ImGuiInputTextCallbackData_SelectAll"

///|
/// Generated raw binding for `ImGuiInputTextCallbackData_SetSelection`.
pub extern "C" fn im_gui_input_text_callback_data_set_selection(
  _p0 : ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImGuiInputTextCallbackData_SetSelection"

///|
/// Generated raw binding for `ImGuiInputTextCallbackData_ClearSelection`.
pub extern "C" fn im_gui_input_text_callback_data_clear_selection(
  _p0 : ImGuiInputTextCallbackData,
) -> Unit = "ImGuiInputTextCallbackData_ClearSelection"

///|
/// Generated raw binding for `ImGuiInputTextCallbackData_HasSelection`.
pub extern "C" fn im_gui_input_text_callback_data_has_selection(
  _p0 : ImGuiInputTextCallbackData,
) -> Bool = "ImGuiInputTextCallbackData_HasSelection"

///|
/// Generated raw binding for `ImGuiPayload_Clear`.
pub extern "C" fn im_gui_payload_clear(_p0 : ImGuiPayload) -> Unit = "ImGuiPayload_Clear"

///|
/// Generated raw binding for `ImGuiPayload_IsDataType`.
pub extern "C" fn im_gui_payload_is_data_type(
  _p0 : ImGuiPayload,
  _p1 : CString,
) -> Bool = "ImGuiPayload_IsDataType"

///|
/// Generated raw binding for `ImGuiPayload_IsPreview`.
pub extern "C" fn im_gui_payload_is_preview(_p0 : ImGuiPayload) -> Bool = "ImGuiPayload_IsPreview"

///|
/// Generated raw binding for `ImGuiPayload_IsDelivery`.
pub extern "C" fn im_gui_payload_is_delivery(_p0 : ImGuiPayload) -> Bool = "ImGuiPayload_IsDelivery"

///|
/// Generated raw binding for `ImGuiTextFilter_ImGuiTextRange_empty`.
pub extern "C" fn im_gui_text_filter_im_gui_text_range_empty(
  _p0 : ImGuiTextFilter_ImGuiTextRange,
) -> Bool = "ImGuiTextFilter_ImGuiTextRange_empty"

///|
/// Generated raw binding for `ImGuiTextFilter_ImGuiTextRange_split`.
pub extern "C" fn im_gui_text_filter_im_gui_text_range_split(
  _p0 : ImGuiTextFilter_ImGuiTextRange,
  _p1 : Int,
  _p2 : ImVector_ImGuiTextRange,
) -> Unit = "ImGuiTextFilter_ImGuiTextRange_split"

///|
/// Generated raw binding for `ImGuiTextFilter_Draw`.
pub extern "C" fn im_gui_text_filter_draw(
  _p0 : ImGuiTextFilter,
  _p1 : CString,
  _p2 : Float,
) -> Bool = "ImGuiTextFilter_Draw"

///|
/// Generated raw binding for `ImGuiTextFilter_PassFilter`.
pub extern "C" fn im_gui_text_filter_pass_filter(
  _p0 : ImGuiTextFilter,
  _p1 : CString,
  _p2 : CString,
) -> Bool = "ImGuiTextFilter_PassFilter"

///|
/// Generated raw binding for `ImGuiTextFilter_Build`.
pub extern "C" fn im_gui_text_filter_build(_p0 : ImGuiTextFilter) -> Unit = "ImGuiTextFilter_Build"

///|
/// Generated raw binding for `ImGuiTextFilter_Clear`.
pub extern "C" fn im_gui_text_filter_clear(_p0 : ImGuiTextFilter) -> Unit = "ImGuiTextFilter_Clear"

///|
/// Generated raw binding for `ImGuiTextFilter_IsActive`.
pub extern "C" fn im_gui_text_filter_is_active(_p0 : ImGuiTextFilter) -> Bool = "ImGuiTextFilter_IsActive"

///|
/// Generated raw binding for `ImGuiTextBuffer_begin`.
pub extern "C" fn im_gui_text_buffer_begin(_p0 : ImGuiTextBuffer) -> CString = "ImGuiTextBuffer_begin"

///|
/// Generated raw binding for `ImGuiTextBuffer_end`.
pub extern "C" fn im_gui_text_buffer_end(_p0 : ImGuiTextBuffer) -> CString = "ImGuiTextBuffer_end"

///|
/// Generated raw binding for `ImGuiTextBuffer_size`.
pub extern "C" fn im_gui_text_buffer_size(_p0 : ImGuiTextBuffer) -> Int = "ImGuiTextBuffer_size"

///|
/// Generated raw binding for `ImGuiTextBuffer_empty`.
pub extern "C" fn im_gui_text_buffer_empty(_p0 : ImGuiTextBuffer) -> Bool = "ImGuiTextBuffer_empty"

///|
/// Generated raw binding for `ImGuiTextBuffer_clear`.
pub extern "C" fn im_gui_text_buffer_clear(_p0 : ImGuiTextBuffer) -> Unit = "ImGuiTextBuffer_clear"

///|
/// Generated raw binding for `ImGuiTextBuffer_resize`.
pub extern "C" fn im_gui_text_buffer_resize(
  _p0 : ImGuiTextBuffer,
  _p1 : Int,
) -> Unit = "ImGuiTextBuffer_resize"

///|
/// Generated raw binding for `ImGuiTextBuffer_reserve`.
pub extern "C" fn im_gui_text_buffer_reserve(
  _p0 : ImGuiTextBuffer,
  _p1 : Int,
) -> Unit = "ImGuiTextBuffer_reserve"

///|
/// Generated raw binding for `ImGuiTextBuffer_c_str`.
pub extern "C" fn im_gui_text_buffer_c_str(_p0 : ImGuiTextBuffer) -> CString = "ImGuiTextBuffer_c_str"

///|
/// Generated raw binding for `ImGuiTextBuffer_append`.
pub extern "C" fn im_gui_text_buffer_append(
  _p0 : ImGuiTextBuffer,
  _p1 : CString,
  _p2 : CString,
) -> Unit = "ImGuiTextBuffer_append"

///|
/// Generated raw binding for `ImGuiTextBuffer_appendf`.
pub extern "C" fn im_gui_text_buffer_appendf(
  _p0 : ImGuiTextBuffer,
  _p1 : CString,
) -> Unit = "moonbit_dcimgui_ImGuiTextBuffer_appendf"

///|
/// Generated raw binding for `ImGuiTextBuffer_appendfv`.
pub extern "C" fn im_gui_text_buffer_appendfv(
  _p0 : ImGuiTextBuffer,
  _p1 : CString,
  _p2 : VaList,
) -> Unit = "ImGuiTextBuffer_appendfv"

///|
/// Generated raw binding for `ImGuiStorage_Clear`.
pub extern "C" fn im_gui_storage_clear(_p0 : ImGuiStorage) -> Unit = "ImGuiStorage_Clear"

///|
/// Generated raw binding for `ImGuiStorage_GetInt`.
pub extern "C" fn im_gui_storage_get_int(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> Int = "ImGuiStorage_GetInt"

///|
/// Generated raw binding for `ImGuiStorage_SetInt`.
pub extern "C" fn im_gui_storage_set_int(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> Unit = "ImGuiStorage_SetInt"

///|
/// Generated raw binding for `ImGuiStorage_GetBool`.
pub extern "C" fn im_gui_storage_get_bool(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Bool = "ImGuiStorage_GetBool"

///|
/// Generated raw binding for `ImGuiStorage_SetBool`.
pub extern "C" fn im_gui_storage_set_bool(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Unit = "ImGuiStorage_SetBool"

///|
/// Generated raw binding for `ImGuiStorage_GetFloat`.
pub extern "C" fn im_gui_storage_get_float(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> Float = "ImGuiStorage_GetFloat"

///|
/// Generated raw binding for `ImGuiStorage_SetFloat`.
pub extern "C" fn im_gui_storage_set_float(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> Unit = "ImGuiStorage_SetFloat"

///|
/// Generated raw binding for `ImGuiStorage_GetVoidPtr`.
pub extern "C" fn im_gui_storage_get_void_ptr(
  _p0 : ImGuiStorage,
  _p1 : UInt,
) -> VoidPtr = "ImGuiStorage_GetVoidPtr"

///|
/// Generated raw binding for `ImGuiStorage_SetVoidPtr`.
pub extern "C" fn im_gui_storage_set_void_ptr(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : VoidPtr,
) -> Unit = "ImGuiStorage_SetVoidPtr"

///|
/// Generated raw binding for `ImGuiStorage_GetIntRef`.
pub extern "C" fn im_gui_storage_get_int_ref(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> IntPtr = "ImGuiStorage_GetIntRef"

///|
/// Generated raw binding for `ImGuiStorage_GetBoolRef`.
pub extern "C" fn im_gui_storage_get_bool_ref(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> BoolPtr = "ImGuiStorage_GetBoolRef"

///|
/// Generated raw binding for `ImGuiStorage_GetFloatRef`.
pub extern "C" fn im_gui_storage_get_float_ref(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> FloatPtr = "ImGuiStorage_GetFloatRef"

///|
/// Generated raw binding for `ImGuiStorage_GetVoidPtrRef`.
pub extern "C" fn im_gui_storage_get_void_ptr_ref(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : VoidPtr,
) -> VoidPtrPtr = "ImGuiStorage_GetVoidPtrRef"

///|
/// Generated raw binding for `ImGuiStorage_BuildSortByKey`.
pub extern "C" fn im_gui_storage_build_sort_by_key(_p0 : ImGuiStorage) -> Unit = "ImGuiStorage_BuildSortByKey"

///|
/// Generated raw binding for `ImGuiStorage_SetAllInt`.
pub extern "C" fn im_gui_storage_set_all_int(
  _p0 : ImGuiStorage,
  _p1 : Int,
) -> Unit = "ImGuiStorage_SetAllInt"

///|
/// Generated raw binding for `ImGuiListClipper_Begin`.
pub extern "C" fn im_gui_list_clipper_begin(
  _p0 : ImGuiListClipper,
  _p1 : Int,
  _p2 : Float,
) -> Unit = "ImGuiListClipper_Begin"

///|
/// Generated raw binding for `ImGuiListClipper_End`.
pub extern "C" fn im_gui_list_clipper_end(_p0 : ImGuiListClipper) -> Unit = "ImGuiListClipper_End"

///|
/// Generated raw binding for `ImGuiListClipper_Step`.
pub extern "C" fn im_gui_list_clipper_step(_p0 : ImGuiListClipper) -> Bool = "ImGuiListClipper_Step"

///|
/// Generated raw binding for `ImGuiListClipper_IncludeItemByIndex`.
pub extern "C" fn im_gui_list_clipper_include_item_by_index(
  _p0 : ImGuiListClipper,
  _p1 : Int,
) -> Unit = "ImGuiListClipper_IncludeItemByIndex"

///|
/// Generated raw binding for `ImGuiListClipper_IncludeItemsByIndex`.
pub extern "C" fn im_gui_list_clipper_include_items_by_index(
  _p0 : ImGuiListClipper,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImGuiListClipper_IncludeItemsByIndex"

///|
/// Generated raw binding for `ImGuiListClipper_SeekCursorForItem`.
pub extern "C" fn im_gui_list_clipper_seek_cursor_for_item(
  _p0 : ImGuiListClipper,
  _p1 : Int,
) -> Unit = "ImGuiListClipper_SeekCursorForItem"

///|
/// Generated raw binding for `ImColor_SetHSV`.
pub extern "C" fn im_color_set_hsv(
  _p0 : ImColor,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
) -> Unit = "ImColor_SetHSV"

///|
/// Generated raw binding for `ImColor_HSV`.
pub extern "C" fn im_color_hsv(
  _p0 : Float,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
) -> ImColor = "moonbit_dcimgui_ImColor_HSV"

///|
/// Generated raw binding for `ImGuiSelectionBasicStorage_ApplyRequests`.
pub extern "C" fn im_gui_selection_basic_storage_apply_requests(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : ImGuiMultiSelectIO,
) -> Unit = "ImGuiSelectionBasicStorage_ApplyRequests"

///|
/// Generated raw binding for `ImGuiSelectionBasicStorage_Contains`.
pub extern "C" fn im_gui_selection_basic_storage_contains(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : UInt,
) -> Bool = "ImGuiSelectionBasicStorage_Contains"

///|
/// Generated raw binding for `ImGuiSelectionBasicStorage_Clear`.
pub extern "C" fn im_gui_selection_basic_storage_clear(
  _p0 : ImGuiSelectionBasicStorage,
) -> Unit = "ImGuiSelectionBasicStorage_Clear"

///|
/// Generated raw binding for `ImGuiSelectionBasicStorage_Swap`.
pub extern "C" fn im_gui_selection_basic_storage_swap(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : ImGuiSelectionBasicStorage,
) -> Unit = "ImGuiSelectionBasicStorage_Swap"

///|
/// Generated raw binding for `ImGuiSelectionBasicStorage_SetItemSelected`.
pub extern "C" fn im_gui_selection_basic_storage_set_item_selected(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Unit = "ImGuiSelectionBasicStorage_SetItemSelected"

///|
/// Generated raw binding for `ImGuiSelectionBasicStorage_GetNextSelectedItem`.
pub extern "C" fn im_gui_selection_basic_storage_get_next_selected_item(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : VoidPtrPtr,
  _p2 : ImGuiIDPtr,
) -> Bool = "ImGuiSelectionBasicStorage_GetNextSelectedItem"

///|
/// Generated raw binding for `ImGuiSelectionBasicStorage_GetStorageIdFromIndex`.
pub extern "C" fn im_gui_selection_basic_storage_get_storage_id_from_index(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : Int,
) -> UInt = "ImGuiSelectionBasicStorage_GetStorageIdFromIndex"

///|
/// Generated raw binding for `ImGuiSelectionExternalStorage_ApplyRequests`.
pub extern "C" fn im_gui_selection_external_storage_apply_requests(
  _p0 : ImGuiSelectionExternalStorage,
  _p1 : ImGuiMultiSelectIO,
) -> Unit = "ImGuiSelectionExternalStorage_ApplyRequests"

///|
/// Generated raw binding for `ImDrawCmd_GetTexID`.
pub extern "C" fn im_draw_cmd_get_tex_id(_p0 : ImDrawCmd) -> UInt64 = "ImDrawCmd_GetTexID"

///|
/// Generated raw binding for `ImDrawListSplitter_Clear`.
pub extern "C" fn im_draw_list_splitter_clear(_p0 : ImDrawListSplitter) -> Unit = "ImDrawListSplitter_Clear"

///|
/// Generated raw binding for `ImDrawListSplitter_ClearFreeMemory`.
pub extern "C" fn im_draw_list_splitter_clear_free_memory(
  _p0 : ImDrawListSplitter,
) -> Unit = "ImDrawListSplitter_ClearFreeMemory"

///|
/// Generated raw binding for `ImDrawListSplitter_Split`.
pub extern "C" fn im_draw_list_splitter_split(
  _p0 : ImDrawListSplitter,
  _p1 : ImDrawList,
  _p2 : Int,
) -> Unit = "ImDrawListSplitter_Split"

///|
/// Generated raw binding for `ImDrawListSplitter_Merge`.
pub extern "C" fn im_draw_list_splitter_merge(
  _p0 : ImDrawListSplitter,
  _p1 : ImDrawList,
) -> Unit = "ImDrawListSplitter_Merge"

///|
/// Generated raw binding for `ImDrawListSplitter_SetCurrentChannel`.
pub extern "C" fn im_draw_list_splitter_set_current_channel(
  _p0 : ImDrawListSplitter,
  _p1 : ImDrawList,
  _p2 : Int,
) -> Unit = "ImDrawListSplitter_SetCurrentChannel"

///|
/// Generated raw binding for `ImDrawList_PushClipRect`.
pub extern "C" fn im_draw_list_push_clip_rect(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Bool,
) -> Unit = "ImDrawList_PushClipRect"

///|
/// Generated raw binding for `ImDrawList_PushClipRectFullScreen`.
pub extern "C" fn im_draw_list_push_clip_rect_full_screen(
  _p0 : ImDrawList,
) -> Unit = "ImDrawList_PushClipRectFullScreen"

///|
/// Generated raw binding for `ImDrawList_PopClipRect`.
pub extern "C" fn im_draw_list_pop_clip_rect(_p0 : ImDrawList) -> Unit = "ImDrawList_PopClipRect"

///|
/// Generated raw binding for `ImDrawList_PushTexture`.
pub extern "C" fn im_draw_list_push_texture(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
) -> Unit = "ImDrawList_PushTexture"

///|
/// Generated raw binding for `ImDrawList_PopTexture`.
pub extern "C" fn im_draw_list_pop_texture(_p0 : ImDrawList) -> Unit = "ImDrawList_PopTexture"

///|
/// Generated raw binding for `ImDrawList_GetClipRectMin`.
pub extern "C" fn im_draw_list_get_clip_rect_min(_p0 : ImDrawList) -> ImVec2 = "moonbit_dcimgui_ImDrawList_GetClipRectMin"

///|
/// Generated raw binding for `ImDrawList_GetClipRectMax`.
pub extern "C" fn im_draw_list_get_clip_rect_max(_p0 : ImDrawList) -> ImVec2 = "moonbit_dcimgui_ImDrawList_GetClipRectMax"

///|
/// Generated raw binding for `ImDrawList_AddLine`.
pub extern "C" fn im_draw_list_add_line(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddLine"

///|
/// Generated raw binding for `ImDrawList_AddLineEx`.
pub extern "C" fn im_draw_list_add_line_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
) -> Unit = "ImDrawList_AddLineEx"

///|
/// Generated raw binding for `ImDrawList_AddLineH`.
pub extern "C" fn im_draw_list_add_line_h(
  _p0 : ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
) -> Unit = "ImDrawList_AddLineH"

///|
/// Generated raw binding for `ImDrawList_AddLineHEx`.
pub extern "C" fn im_draw_list_add_line_h_ex(
  _p0 : ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
  _p5 : Float,
) -> Unit = "ImDrawList_AddLineHEx"

///|
/// Generated raw binding for `ImDrawList_AddLineV`.
pub extern "C" fn im_draw_list_add_line_v(
  _p0 : ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
) -> Unit = "ImDrawList_AddLineV"

///|
/// Generated raw binding for `ImDrawList_AddLineVEx`.
pub extern "C" fn im_draw_list_add_line_v_ex(
  _p0 : ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
  _p5 : Float,
) -> Unit = "ImDrawList_AddLineVEx"

///|
/// Generated raw binding for `ImDrawList_AddRect`.
pub extern "C" fn im_draw_list_add_rect(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddRect"

///|
/// Generated raw binding for `ImDrawList_AddRectEx`.
pub extern "C" fn im_draw_list_add_rect_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Float,
  _p6 : Int,
) -> Unit = "ImDrawList_AddRectEx"

///|
/// Generated raw binding for `ImDrawList_AddRectFilled`.
pub extern "C" fn im_draw_list_add_rect_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddRectFilled"

///|
/// Generated raw binding for `ImDrawList_AddRectFilledEx`.
pub extern "C" fn im_draw_list_add_rect_filled_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList_AddRectFilledEx"

///|
/// Generated raw binding for `ImDrawList_AddRectFilledMultiColor`.
pub extern "C" fn im_draw_list_add_rect_filled_multi_color(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : UInt,
  _p5 : UInt,
  _p6 : UInt,
) -> Unit = "ImDrawList_AddRectFilledMultiColor"

///|
/// Generated raw binding for `ImDrawList_AddQuad`.
pub extern "C" fn im_draw_list_add_quad(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : UInt,
) -> Unit = "ImDrawList_AddQuad"

///|
/// Generated raw binding for `ImDrawList_AddQuadEx`.
pub extern "C" fn im_draw_list_add_quad_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : UInt,
  _p6 : Float,
) -> Unit = "ImDrawList_AddQuadEx"

///|
/// Generated raw binding for `ImDrawList_AddQuadFilled`.
pub extern "C" fn im_draw_list_add_quad_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : UInt,
) -> Unit = "ImDrawList_AddQuadFilled"

///|
/// Generated raw binding for `ImDrawList_AddTriangle`.
pub extern "C" fn im_draw_list_add_triangle(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : UInt,
) -> Unit = "ImDrawList_AddTriangle"

///|
/// Generated raw binding for `ImDrawList_AddTriangleEx`.
pub extern "C" fn im_draw_list_add_triangle_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : Float,
) -> Unit = "ImDrawList_AddTriangleEx"

///|
/// Generated raw binding for `ImDrawList_AddTriangleFilled`.
pub extern "C" fn im_draw_list_add_triangle_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : UInt,
) -> Unit = "ImDrawList_AddTriangleFilled"

///|
/// Generated raw binding for `ImDrawList_AddCircle`.
pub extern "C" fn im_draw_list_add_circle(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddCircle"

///|
/// Generated raw binding for `ImDrawList_AddCircleEx`.
pub extern "C" fn im_draw_list_add_circle_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit = "ImDrawList_AddCircleEx"

///|
/// Generated raw binding for `ImDrawList_AddCircleFilled`.
pub extern "C" fn im_draw_list_add_circle_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit = "ImDrawList_AddCircleFilled"

///|
/// Generated raw binding for `ImDrawList_AddNgon`.
pub extern "C" fn im_draw_list_add_ngon(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit = "ImDrawList_AddNgon"

///|
/// Generated raw binding for `ImDrawList_AddNgonEx`.
pub extern "C" fn im_draw_list_add_ngon_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit = "ImDrawList_AddNgonEx"

///|
/// Generated raw binding for `ImDrawList_AddNgonFilled`.
pub extern "C" fn im_draw_list_add_ngon_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit = "ImDrawList_AddNgonFilled"

///|
/// Generated raw binding for `ImDrawList_AddEllipse`.
pub extern "C" fn im_draw_list_add_ellipse(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddEllipse"

///|
/// Generated raw binding for `ImDrawList_AddEllipseEx`.
pub extern "C" fn im_draw_list_add_ellipse_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
  _p6 : Float,
) -> Unit = "ImDrawList_AddEllipseEx"

///|
/// Generated raw binding for `ImDrawList_AddEllipseFilled`.
pub extern "C" fn im_draw_list_add_ellipse_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddEllipseFilled"

///|
/// Generated raw binding for `ImDrawList_AddEllipseFilledEx`.
pub extern "C" fn im_draw_list_add_ellipse_filled_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList_AddEllipseFilledEx"

///|
/// Generated raw binding for `ImDrawList_AddText`.
pub extern "C" fn im_draw_list_add_text(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : UInt,
  _p3 : CString,
) -> Unit = "ImDrawList_AddText"

///|
/// Generated raw binding for `ImDrawList_AddTextEx`.
pub extern "C" fn im_draw_list_add_text_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : UInt,
  _p3 : CString,
  _p4 : CString,
) -> Unit = "ImDrawList_AddTextEx"

///|
/// Generated raw binding for `ImDrawList_AddTextImFontPtr`.
pub extern "C" fn im_draw_list_add_text_im_font_ptr(
  _p0 : ImDrawList,
  _p1 : ImFont,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : CString,
) -> Unit = "ImDrawList_AddTextImFontPtr"

///|
/// Generated raw binding for `ImDrawList_AddTextImFontPtrEx`.
pub extern "C" fn im_draw_list_add_text_im_font_ptr_ex(
  _p0 : ImDrawList,
  _p1 : ImFont,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : CString,
  _p6 : CString,
  _p7 : Float,
  _p8 : ImVec4,
) -> Unit = "ImDrawList_AddTextImFontPtrEx"

///|
/// Generated raw binding for `ImDrawList_AddBezierCubic`.
pub extern "C" fn im_draw_list_add_bezier_cubic(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : UInt,
  _p6 : Float,
  _p7 : Int,
) -> Unit = "ImDrawList_AddBezierCubic"

///|
/// Generated raw binding for `ImDrawList_AddBezierQuadratic`.
pub extern "C" fn im_draw_list_add_bezier_quadratic(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : Float,
  _p6 : Int,
) -> Unit = "ImDrawList_AddBezierQuadratic"

///|
/// Generated raw binding for `ImDrawList_AddPolyline`.
pub extern "C" fn im_draw_list_add_polyline(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList_AddPolyline"

///|
/// Generated raw binding for `ImDrawList_AddConvexPolyFilled`.
pub extern "C" fn im_draw_list_add_convex_poly_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddConvexPolyFilled"

///|
/// Generated raw binding for `ImDrawList_AddConcavePolyFilled`.
pub extern "C" fn im_draw_list_add_concave_poly_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddConcavePolyFilled"

///|
/// Generated raw binding for `ImDrawList_AddImage`.
pub extern "C" fn im_draw_list_add_image(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
) -> Unit = "ImDrawList_AddImage"

///|
/// Generated raw binding for `ImDrawList_AddImageEx`.
pub extern "C" fn im_draw_list_add_image_ex(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : ImVec2,
  _p6 : UInt,
) -> Unit = "ImDrawList_AddImageEx"

///|
/// Generated raw binding for `ImDrawList_AddImageQuad`.
pub extern "C" fn im_draw_list_add_image_quad(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : ImVec2,
) -> Unit = "ImDrawList_AddImageQuad"

///|
/// Generated raw binding for `ImDrawList_AddImageQuadEx`.
pub extern "C" fn im_draw_list_add_image_quad_ex(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : ImVec2,
  _p6 : ImVec2,
  _p7 : ImVec2,
  _p8 : ImVec2,
  _p9 : ImVec2,
  _p10 : UInt,
) -> Unit = "ImDrawList_AddImageQuadEx"

///|
/// Generated raw binding for `ImDrawList_AddImageRounded`.
pub extern "C" fn im_draw_list_add_image_rounded(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : ImVec2,
  _p6 : UInt,
  _p7 : Float,
  _p8 : Int,
) -> Unit = "ImDrawList_AddImageRounded"

///|
/// Generated raw binding for `ImDrawList_PathClear`.
pub extern "C" fn im_draw_list_path_clear(_p0 : ImDrawList) -> Unit = "ImDrawList_PathClear"

///|
/// Generated raw binding for `ImDrawList_PathLineTo`.
pub extern "C" fn im_draw_list_path_line_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
) -> Unit = "ImDrawList_PathLineTo"

///|
/// Generated raw binding for `ImDrawList_PathLineToMergeDuplicate`.
pub extern "C" fn im_draw_list_path_line_to_merge_duplicate(
  _p0 : ImDrawList,
  _p1 : ImVec2,
) -> Unit = "ImDrawList_PathLineToMergeDuplicate"

///|
/// Generated raw binding for `ImDrawList_PathFillConvex`.
pub extern "C" fn im_draw_list_path_fill_convex(
  _p0 : ImDrawList,
  _p1 : UInt,
) -> Unit = "ImDrawList_PathFillConvex"

///|
/// Generated raw binding for `ImDrawList_PathFillConcave`.
pub extern "C" fn im_draw_list_path_fill_concave(
  _p0 : ImDrawList,
  _p1 : UInt,
) -> Unit = "ImDrawList_PathFillConcave"

///|
/// Generated raw binding for `ImDrawList_PathStroke`.
pub extern "C" fn im_draw_list_path_stroke(
  _p0 : ImDrawList,
  _p1 : UInt,
  _p2 : Float,
  _p3 : Int,
) -> Unit = "ImDrawList_PathStroke"

///|
/// Generated raw binding for `ImDrawList_PathArcTo`.
pub extern "C" fn im_draw_list_path_arc_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList_PathArcTo"

///|
/// Generated raw binding for `ImDrawList_PathArcToFast`.
pub extern "C" fn im_draw_list_path_arc_to_fast(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
) -> Unit = "ImDrawList_PathArcToFast"

///|
/// Generated raw binding for `ImDrawList_PathEllipticalArcTo`.
pub extern "C" fn im_draw_list_path_elliptical_arc_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Float,
  _p4 : Float,
  _p5 : Float,
) -> Unit = "ImDrawList_PathEllipticalArcTo"

///|
/// Generated raw binding for `ImDrawList_PathEllipticalArcToEx`.
pub extern "C" fn im_draw_list_path_elliptical_arc_to_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Float,
  _p4 : Float,
  _p5 : Float,
  _p6 : Int,
) -> Unit = "ImDrawList_PathEllipticalArcToEx"

///|
/// Generated raw binding for `ImDrawList_PathBezierCubicCurveTo`.
pub extern "C" fn im_draw_list_path_bezier_cubic_curve_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : Int,
) -> Unit = "ImDrawList_PathBezierCubicCurveTo"

///|
/// Generated raw binding for `ImDrawList_PathBezierQuadraticCurveTo`.
pub extern "C" fn im_draw_list_path_bezier_quadratic_curve_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Int,
) -> Unit = "ImDrawList_PathBezierQuadraticCurveTo"

///|
/// Generated raw binding for `ImDrawList_PathRect`.
pub extern "C" fn im_draw_list_path_rect(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Float,
  _p4 : Int,
) -> Unit = "ImDrawList_PathRect"

///|
/// Generated raw binding for `ImDrawList_AddCallback`.
pub extern "C" fn im_draw_list_add_callback(
  _p0 : ImDrawList,
  _p1 : ImDrawCallback,
) -> Unit = "ImDrawList_AddCallback"

///|
/// Generated raw binding for `ImDrawList_AddCallbackEx`.
pub extern "C" fn im_draw_list_add_callback_ex(
  _p0 : ImDrawList,
  _p1 : ImDrawCallback,
  _p2 : VoidPtr,
  _p3 : UInt64,
) -> Unit = "ImDrawList_AddCallbackEx"

///|
/// Generated raw binding for `ImDrawList_AddDrawCmd`.
pub extern "C" fn im_draw_list_add_draw_cmd(_p0 : ImDrawList) -> Unit = "ImDrawList_AddDrawCmd"

///|
/// Generated raw binding for `ImDrawList_CloneOutput`.
pub extern "C" fn im_draw_list_clone_output(_p0 : ImDrawList) -> ImDrawList = "ImDrawList_CloneOutput"

///|
/// Generated raw binding for `ImDrawList_ChannelsSplit`.
pub extern "C" fn im_draw_list_channels_split(
  _p0 : ImDrawList,
  _p1 : Int,
) -> Unit = "ImDrawList_ChannelsSplit"

///|
/// Generated raw binding for `ImDrawList_ChannelsMerge`.
pub extern "C" fn im_draw_list_channels_merge(_p0 : ImDrawList) -> Unit = "ImDrawList_ChannelsMerge"

///|
/// Generated raw binding for `ImDrawList_ChannelsSetCurrent`.
pub extern "C" fn im_draw_list_channels_set_current(
  _p0 : ImDrawList,
  _p1 : Int,
) -> Unit = "ImDrawList_ChannelsSetCurrent"

///|
/// Generated raw binding for `ImDrawList_PrimReserve`.
pub extern "C" fn im_draw_list_prim_reserve(
  _p0 : ImDrawList,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImDrawList_PrimReserve"

///|
/// Generated raw binding for `ImDrawList_PrimUnreserve`.
pub extern "C" fn im_draw_list_prim_unreserve(
  _p0 : ImDrawList,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImDrawList_PrimUnreserve"

///|
/// Generated raw binding for `ImDrawList_PrimRect`.
pub extern "C" fn im_draw_list_prim_rect(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_PrimRect"

///|
/// Generated raw binding for `ImDrawList_PrimRectUV`.
pub extern "C" fn im_draw_list_prim_rect_uv(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : UInt,
) -> Unit = "ImDrawList_PrimRectUV"

///|
/// Generated raw binding for `ImDrawList_PrimQuadUV`.
pub extern "C" fn im_draw_list_prim_quad_uv(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : ImVec2,
  _p6 : ImVec2,
  _p7 : ImVec2,
  _p8 : ImVec2,
  _p9 : UInt,
) -> Unit = "ImDrawList_PrimQuadUV"

///|
/// Generated raw binding for `ImDrawList_PrimWriteVtx`.
pub extern "C" fn im_draw_list_prim_write_vtx(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_PrimWriteVtx"

///|
/// Generated raw binding for `ImDrawList_PrimWriteIdx`.
pub extern "C" fn im_draw_list_prim_write_idx(
  _p0 : ImDrawList,
  _p1 : Int,
) -> Unit = "ImDrawList_PrimWriteIdx"

///|
/// Generated raw binding for `ImDrawList_PrimVtx`.
pub extern "C" fn im_draw_list_prim_vtx(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_PrimVtx"

///|
/// Generated raw binding for `ImDrawList_AddRectImDrawFlags`.
pub extern "C" fn im_draw_list_add_rect_im_draw_flags(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
  _p6 : Float,
) -> Unit = "ImDrawList_AddRectImDrawFlags"

///|
/// Generated raw binding for `ImDrawList_AddPolylineImDrawFlags`.
pub extern "C" fn im_draw_list_add_polyline_im_draw_flags(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit = "ImDrawList_AddPolylineImDrawFlags"

///|
/// Generated raw binding for `ImDrawList_PathStrokeImDrawFlags`.
pub extern "C" fn im_draw_list_path_stroke_im_draw_flags(
  _p0 : ImDrawList,
  _p1 : UInt,
  _p2 : Int,
  _p3 : Float,
) -> Unit = "ImDrawList_PathStrokeImDrawFlags"

///|
/// Generated raw binding for `ImDrawList_PushTextureID`.
pub extern "C" fn im_draw_list_push_texture_id(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
) -> Unit = "ImDrawList_PushTextureID"

///|
/// Generated raw binding for `ImDrawList_PopTextureID`.
pub extern "C" fn im_draw_list_pop_texture_id(_p0 : ImDrawList) -> Unit = "ImDrawList_PopTextureID"

///|
/// Generated raw binding for `ImDrawList__SetDrawListSharedData`.
pub extern "C" fn im_draw_list_set_draw_list_shared_data(
  _p0 : ImDrawList,
  _p1 : ImDrawListSharedData,
) -> Unit = "ImDrawList__SetDrawListSharedData"

///|
/// Generated raw binding for `ImDrawList__ResetForNewFrame`.
pub extern "C" fn im_draw_list_reset_for_new_frame(_p0 : ImDrawList) -> Unit = "ImDrawList__ResetForNewFrame"

///|
/// Generated raw binding for `ImDrawList__ClearFreeMemory`.
pub extern "C" fn im_draw_list_clear_free_memory(_p0 : ImDrawList) -> Unit = "ImDrawList__ClearFreeMemory"

///|
/// Generated raw binding for `ImDrawList__PopUnusedDrawCmd`.
pub extern "C" fn im_draw_list_pop_unused_draw_cmd(_p0 : ImDrawList) -> Unit = "ImDrawList__PopUnusedDrawCmd"

///|
/// Generated raw binding for `ImDrawList__TryMergeDrawCmds`.
pub extern "C" fn im_draw_list_try_merge_draw_cmds(_p0 : ImDrawList) -> Unit = "ImDrawList__TryMergeDrawCmds"

///|
/// Generated raw binding for `ImDrawList__OnChangedClipRect`.
pub extern "C" fn im_draw_list_on_changed_clip_rect(_p0 : ImDrawList) -> Unit = "ImDrawList__OnChangedClipRect"

///|
/// Generated raw binding for `ImDrawList__OnChangedTexture`.
pub extern "C" fn im_draw_list_on_changed_texture(_p0 : ImDrawList) -> Unit = "ImDrawList__OnChangedTexture"

///|
/// Generated raw binding for `ImDrawList__OnChangedVtxOffset`.
pub extern "C" fn im_draw_list_on_changed_vtx_offset(_p0 : ImDrawList) -> Unit = "ImDrawList__OnChangedVtxOffset"

///|
/// Generated raw binding for `ImDrawList__SetTexture`.
pub extern "C" fn im_draw_list_set_texture(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
) -> Unit = "ImDrawList__SetTexture"

///|
/// Generated raw binding for `ImDrawList__CalcCircleAutoSegmentCount`.
pub extern "C" fn im_draw_list_calc_circle_auto_segment_count(
  _p0 : ImDrawList,
  _p1 : Float,
) -> Int = "ImDrawList__CalcCircleAutoSegmentCount"

///|
/// Generated raw binding for `ImDrawList__PathArcToFastEx`.
pub extern "C" fn im_draw_list_path_arc_to_fast_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Int,
) -> Unit = "ImDrawList__PathArcToFastEx"

///|
/// Generated raw binding for `ImDrawList__PathArcToN`.
pub extern "C" fn im_draw_list_path_arc_to_n(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList__PathArcToN"

///|
/// Generated raw binding for `ImDrawData_Clear`.
pub extern "C" fn im_draw_data_clear(_p0 : ImDrawData) -> Unit = "ImDrawData_Clear"

///|
/// Generated raw binding for `ImDrawData_AddDrawList`.
pub extern "C" fn im_draw_data_add_draw_list(
  _p0 : ImDrawData,
  _p1 : ImDrawList,
) -> Unit = "ImDrawData_AddDrawList"

///|
/// Generated raw binding for `ImDrawData_DeIndexAllBuffers`.
pub extern "C" fn im_draw_data_de_index_all_buffers(_p0 : ImDrawData) -> Unit = "ImDrawData_DeIndexAllBuffers"

///|
/// Generated raw binding for `ImDrawData_ScaleClipRects`.
pub extern "C" fn im_draw_data_scale_clip_rects(
  _p0 : ImDrawData,
  _p1 : ImVec2,
) -> Unit = "ImDrawData_ScaleClipRects"

///|
/// Generated raw binding for `ImTextureData_Create`.
pub extern "C" fn im_texture_data_create(
  _p0 : ImTextureData,
  _p1 : ImTextureFormat,
  _p2 : Int,
  _p3 : Int,
) -> Unit = "ImTextureData_Create"

///|
/// Generated raw binding for `ImTextureData_DestroyPixels`.
pub extern "C" fn im_texture_data_destroy_pixels(_p0 : ImTextureData) -> Unit = "ImTextureData_DestroyPixels"

///|
/// Generated raw binding for `ImTextureData_GetPixels`.
pub extern "C" fn im_texture_data_get_pixels(_p0 : ImTextureData) -> VoidPtr = "ImTextureData_GetPixels"

///|
/// Generated raw binding for `ImTextureData_GetPixelsAt`.
pub extern "C" fn im_texture_data_get_pixels_at(
  _p0 : ImTextureData,
  _p1 : Int,
  _p2 : Int,
) -> VoidPtr = "ImTextureData_GetPixelsAt"

///|
/// Generated raw binding for `ImTextureData_GetSizeInBytes`.
pub extern "C" fn im_texture_data_get_size_in_bytes(_p0 : ImTextureData) -> Int = "ImTextureData_GetSizeInBytes"

///|
/// Generated raw binding for `ImTextureData_GetPitch`.
pub extern "C" fn im_texture_data_get_pitch(_p0 : ImTextureData) -> Int = "ImTextureData_GetPitch"

///|
/// Generated raw binding for `ImTextureData_GetTexRef`.
pub extern "C" fn im_texture_data_get_tex_ref(
  _p0 : ImTextureData,
) -> ImTextureRef = "moonbit_dcimgui_ImTextureData_GetTexRef"

///|
/// Generated raw binding for `ImTextureData_GetTexID`.
pub extern "C" fn im_texture_data_get_tex_id(_p0 : ImTextureData) -> UInt64 = "ImTextureData_GetTexID"

///|
/// Generated raw binding for `ImTextureData_SetTexID`.
pub extern "C" fn im_texture_data_set_tex_id(
  _p0 : ImTextureData,
  _p1 : UInt64,
) -> Unit = "ImTextureData_SetTexID"

///|
/// Generated raw binding for `ImTextureData_SetStatus`.
pub extern "C" fn im_texture_data_set_status(
  _p0 : ImTextureData,
  _p1 : ImTextureStatus,
) -> Unit = "ImTextureData_SetStatus"

///|
/// Generated raw binding for `ImFontGlyphRangesBuilder_Clear`.
pub extern "C" fn im_font_glyph_ranges_builder_clear(
  _p0 : ImFontGlyphRangesBuilder,
) -> Unit = "ImFontGlyphRangesBuilder_Clear"

///|
/// Generated raw binding for `ImFontGlyphRangesBuilder_GetBit`.
pub extern "C" fn im_font_glyph_ranges_builder_get_bit(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : UInt64,
) -> Bool = "ImFontGlyphRangesBuilder_GetBit"

///|
/// Generated raw binding for `ImFontGlyphRangesBuilder_SetBit`.
pub extern "C" fn im_font_glyph_ranges_builder_set_bit(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : UInt64,
) -> Unit = "ImFontGlyphRangesBuilder_SetBit"

///|
/// Generated raw binding for `ImFontGlyphRangesBuilder_AddChar`.
pub extern "C" fn im_font_glyph_ranges_builder_add_char(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : Int,
) -> Unit = "ImFontGlyphRangesBuilder_AddChar"

///|
/// Generated raw binding for `ImFontGlyphRangesBuilder_AddText`.
pub extern "C" fn im_font_glyph_ranges_builder_add_text(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : CString,
  _p2 : CString,
) -> Unit = "ImFontGlyphRangesBuilder_AddText"

///|
/// Generated raw binding for `ImFontGlyphRangesBuilder_AddRanges`.
pub extern "C" fn im_font_glyph_ranges_builder_add_ranges(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : ImWcharPtr,
) -> Unit = "ImFontGlyphRangesBuilder_AddRanges"

///|
/// Generated raw binding for `ImFontGlyphRangesBuilder_BuildRanges`.
pub extern "C" fn im_font_glyph_ranges_builder_build_ranges(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : ImVector_ImWchar,
) -> Unit = "ImFontGlyphRangesBuilder_BuildRanges"

///|
/// Generated raw binding for `ImFontAtlas_AddFont`.
pub extern "C" fn im_font_atlas_add_font(
  _p0 : ImFontAtlas,
  _p1 : ImFontConfig,
) -> ImFont = "ImFontAtlas_AddFont"

///|
/// Generated raw binding for `ImFontAtlas_AddFontDefault`.
pub extern "C" fn im_font_atlas_add_font_default(
  _p0 : ImFontAtlas,
  _p1 : ImFontConfig,
) -> ImFont = "ImFontAtlas_AddFontDefault"

///|
/// Generated raw binding for `ImFontAtlas_AddFontDefaultVector`.
pub extern "C" fn im_font_atlas_add_font_default_vector(
  _p0 : ImFontAtlas,
  _p1 : ImFontConfig,
) -> ImFont = "ImFontAtlas_AddFontDefaultVector"

///|
/// Generated raw binding for `ImFontAtlas_AddFontDefaultBitmap`.
pub extern "C" fn im_font_atlas_add_font_default_bitmap(
  _p0 : ImFontAtlas,
  _p1 : ImFontConfig,
) -> ImFont = "ImFontAtlas_AddFontDefaultBitmap"

///|
/// Generated raw binding for `ImFontAtlas_AddFontFromFileTTF`.
pub extern "C" fn im_font_atlas_add_font_from_file_ttf(
  _p0 : ImFontAtlas,
  _p1 : CString,
  _p2 : Float,
  _p3 : ImFontConfig,
  _p4 : ImWcharPtr,
) -> ImFont = "ImFontAtlas_AddFontFromFileTTF"

///|
/// Generated raw binding for `ImFontAtlas_AddFontFromMemoryTTF`.
pub extern "C" fn im_font_atlas_add_font_from_memory_ttf(
  _p0 : ImFontAtlas,
  _p1 : VoidPtr,
  _p2 : Int,
  _p3 : Float,
  _p4 : ImFontConfig,
  _p5 : ImWcharPtr,
) -> ImFont = "ImFontAtlas_AddFontFromMemoryTTF"

///|
/// Generated raw binding for `ImFontAtlas_AddFontFromMemoryCompressedTTF`.
pub extern "C" fn im_font_atlas_add_font_from_memory_compressed_ttf(
  _p0 : ImFontAtlas,
  _p1 : VoidPtr,
  _p2 : Int,
  _p3 : Float,
  _p4 : ImFontConfig,
  _p5 : ImWcharPtr,
) -> ImFont = "ImFontAtlas_AddFontFromMemoryCompressedTTF"

///|
/// Generated raw binding for `ImFontAtlas_AddFontFromMemoryCompressedBase85TTF`.
pub extern "C" fn im_font_atlas_add_font_from_memory_compressed_base85_ttf(
  _p0 : ImFontAtlas,
  _p1 : CString,
  _p2 : Float,
  _p3 : ImFontConfig,
  _p4 : ImWcharPtr,
) -> ImFont = "ImFontAtlas_AddFontFromMemoryCompressedBase85TTF"

///|
/// Generated raw binding for `ImFontAtlas_RemoveFont`.
pub extern "C" fn im_font_atlas_remove_font(
  _p0 : ImFontAtlas,
  _p1 : ImFont,
) -> Unit = "ImFontAtlas_RemoveFont"

///|
/// Generated raw binding for `ImFontAtlas_Clear`.
pub extern "C" fn im_font_atlas_clear(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_Clear"

///|
/// Generated raw binding for `ImFontAtlas_ClearFonts`.
pub extern "C" fn im_font_atlas_clear_fonts(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_ClearFonts"

///|
/// Generated raw binding for `ImFontAtlas_CompactCache`.
pub extern "C" fn im_font_atlas_compact_cache(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_CompactCache"

///|
/// Generated raw binding for `ImFontAtlas_SetFontLoader`.
pub extern "C" fn im_font_atlas_set_font_loader(
  _p0 : ImFontAtlas,
  _p1 : ImFontLoader,
) -> Unit = "ImFontAtlas_SetFontLoader"

///|
/// Generated raw binding for `ImFontAtlas_ClearInputData`.
pub extern "C" fn im_font_atlas_clear_input_data(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_ClearInputData"

///|
/// Generated raw binding for `ImFontAtlas_ClearTexData`.
pub extern "C" fn im_font_atlas_clear_tex_data(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_ClearTexData"

///|
/// Generated raw binding for `ImFontAtlas_Build`.
pub extern "C" fn im_font_atlas_build(_p0 : ImFontAtlas) -> Bool = "ImFontAtlas_Build"

///|
/// Generated raw binding for `ImFontAtlas_GetTexDataAsAlpha8`.
pub extern "C" fn im_font_atlas_get_tex_data_as_alpha8(
  _p0 : ImFontAtlas,
  _p1 : IntPtrPtr,
  _p2 : IntPtr,
  _p3 : IntPtr,
  _p4 : IntPtr,
) -> Unit = "ImFontAtlas_GetTexDataAsAlpha8"

///|
/// Generated raw binding for `ImFontAtlas_GetTexDataAsRGBA32`.
pub extern "C" fn im_font_atlas_get_tex_data_as_rgba32(
  _p0 : ImFontAtlas,
  _p1 : IntPtrPtr,
  _p2 : IntPtr,
  _p3 : IntPtr,
  _p4 : IntPtr,
) -> Unit = "ImFontAtlas_GetTexDataAsRGBA32"

///|
/// Generated raw binding for `ImFontAtlas_SetTexID`.
pub extern "C" fn im_font_atlas_set_tex_id(
  _p0 : ImFontAtlas,
  _p1 : UInt64,
) -> Unit = "ImFontAtlas_SetTexID"

///|
/// Generated raw binding for `ImFontAtlas_SetTexIDImTextureRefPtr`.
pub extern "C" fn im_font_atlas_set_tex_id_im_texture_ref_ptr(
  _p0 : ImFontAtlas,
  _p1 : ImTextureRef,
) -> Unit = "ImFontAtlas_SetTexIDImTextureRefPtr"

///|
/// Generated raw binding for `ImFontAtlas_IsBuilt`.
pub extern "C" fn im_font_atlas_is_built(_p0 : ImFontAtlas) -> Bool = "ImFontAtlas_IsBuilt"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesDefault`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_default(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesDefault"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesGreek`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_greek(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesGreek"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesKorean`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_korean(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesKorean"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesJapanese`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_japanese(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesJapanese"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesChineseFull`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_chinese_full(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesChineseFull"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_chinese_simplified_common(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesCyrillic`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_cyrillic(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesCyrillic"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesThai`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_thai(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesThai"

///|
/// Generated raw binding for `ImFontAtlas_GetGlyphRangesVietnamese`.
pub extern "C" fn im_font_atlas_get_glyph_ranges_vietnamese(
  _p0 : ImFontAtlas,
) -> ImWcharPtr = "ImFontAtlas_GetGlyphRangesVietnamese"

///|
/// Generated raw binding for `ImFontAtlas_AddCustomRect`.
pub extern "C" fn im_font_atlas_add_custom_rect(
  _p0 : ImFontAtlas,
  _p1 : Int,
  _p2 : Int,
  _p3 : ImFontAtlasRect,
) -> Int = "ImFontAtlas_AddCustomRect"

///|
/// Generated raw binding for `ImFontAtlas_RemoveCustomRect`.
pub extern "C" fn im_font_atlas_remove_custom_rect(
  _p0 : ImFontAtlas,
  _p1 : Int,
) -> Unit = "ImFontAtlas_RemoveCustomRect"

///|
/// Generated raw binding for `ImFontAtlas_GetCustomRect`.
pub extern "C" fn im_font_atlas_get_custom_rect(
  _p0 : ImFontAtlas,
  _p1 : Int,
  _p2 : ImFontAtlasRect,
) -> Bool = "ImFontAtlas_GetCustomRect"

///|
/// Generated raw binding for `ImFontAtlas_AddCustomRectRegular`.
pub extern "C" fn im_font_atlas_add_custom_rect_regular(
  _p0 : ImFontAtlas,
  _p1 : Int,
  _p2 : Int,
) -> Int = "ImFontAtlas_AddCustomRectRegular"

///|
/// Generated raw binding for `ImFontAtlas_GetCustomRectByIndex`.
pub extern "C" fn im_font_atlas_get_custom_rect_by_index(
  _p0 : ImFontAtlas,
  _p1 : Int,
) -> ImFontAtlasRect = "ImFontAtlas_GetCustomRectByIndex"

///|
/// Generated raw binding for `ImFontAtlas_CalcCustomRectUV`.
pub extern "C" fn im_font_atlas_calc_custom_rect_uv(
  _p0 : ImFontAtlas,
  _p1 : ImFontAtlasRect,
  _p2 : ImVec2,
  _p3 : ImVec2,
) -> Unit = "ImFontAtlas_CalcCustomRectUV"

///|
/// Generated raw binding for `ImFontAtlas_AddCustomRectFontGlyph`.
pub extern "C" fn im_font_atlas_add_custom_rect_font_glyph(
  _p0 : ImFontAtlas,
  _p1 : ImFont,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
  _p5 : Float,
  _p6 : ImVec2,
) -> Int = "ImFontAtlas_AddCustomRectFontGlyph"

///|
/// Generated raw binding for `ImFontAtlas_AddCustomRectFontGlyphForSize`.
pub extern "C" fn im_font_atlas_add_custom_rect_font_glyph_for_size(
  _p0 : ImFontAtlas,
  _p1 : ImFont,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Int,
  _p6 : Float,
  _p7 : ImVec2,
) -> Int = "ImFontAtlas_AddCustomRectFontGlyphForSize"

///|
/// Generated raw binding for `ImFontBaked_ClearOutputData`.
pub extern "C" fn im_font_baked_clear_output_data(_p0 : ImFontBaked) -> Unit = "ImFontBaked_ClearOutputData"

///|
/// Generated raw binding for `ImFontBaked_FindGlyph`.
pub extern "C" fn im_font_baked_find_glyph(
  _p0 : ImFontBaked,
  _p1 : Int,
) -> ImFontGlyph = "ImFontBaked_FindGlyph"

///|
/// Generated raw binding for `ImFontBaked_FindGlyphNoFallback`.
pub extern "C" fn im_font_baked_find_glyph_no_fallback(
  _p0 : ImFontBaked,
  _p1 : Int,
) -> ImFontGlyph = "ImFontBaked_FindGlyphNoFallback"

///|
/// Generated raw binding for `ImFontBaked_GetCharAdvance`.
pub extern "C" fn im_font_baked_get_char_advance(
  _p0 : ImFontBaked,
  _p1 : Int,
) -> Float = "ImFontBaked_GetCharAdvance"

///|
/// Generated raw binding for `ImFontBaked_IsGlyphLoaded`.
pub extern "C" fn im_font_baked_is_glyph_loaded(
  _p0 : ImFontBaked,
  _p1 : Int,
) -> Bool = "ImFontBaked_IsGlyphLoaded"

///|
/// Generated raw binding for `ImFont_IsGlyphInFont`.
pub extern "C" fn im_font_is_glyph_in_font(_p0 : ImFont, _p1 : Int) -> Bool = "ImFont_IsGlyphInFont"

///|
/// Generated raw binding for `ImFont_IsLoaded`.
pub extern "C" fn im_font_is_loaded(_p0 : ImFont) -> Bool = "ImFont_IsLoaded"

///|
/// Generated raw binding for `ImFont_GetDebugName`.
pub extern "C" fn im_font_get_debug_name(_p0 : ImFont) -> CString = "ImFont_GetDebugName"

///|
/// Generated raw binding for `ImFont_GetFontBaked`.
pub extern "C" fn im_font_get_font_baked(
  _p0 : ImFont,
  _p1 : Float,
) -> ImFontBaked = "ImFont_GetFontBaked"

///|
/// Generated raw binding for `ImFont_GetFontBakedEx`.
pub extern "C" fn im_font_get_font_baked_ex(
  _p0 : ImFont,
  _p1 : Float,
  _p2 : Float,
) -> ImFontBaked = "ImFont_GetFontBakedEx"

///|
/// Generated raw binding for `ImFont_CalcTextSizeA`.
pub extern "C" fn im_font_calc_text_size_a(
  _p0 : ImFont,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : CString,
) -> ImVec2 = "moonbit_dcimgui_ImFont_CalcTextSizeA"

///|
/// Generated raw binding for `ImFont_CalcTextSizeAEx`.
pub extern "C" fn im_font_calc_text_size_a_ex(
  _p0 : ImFont,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : CString,
  _p5 : CString,
  _p6 : CStringPtr,
) -> ImVec2 = "moonbit_dcimgui_ImFont_CalcTextSizeAEx"

///|
/// Generated raw binding for `ImFont_CalcWordWrapPosition`.
pub extern "C" fn im_font_calc_word_wrap_position(
  _p0 : ImFont,
  _p1 : Float,
  _p2 : CString,
  _p3 : CString,
  _p4 : Float,
) -> CString = "ImFont_CalcWordWrapPosition"

///|
/// Generated raw binding for `ImFont_RenderChar`.
pub extern "C" fn im_font_render_char(
  _p0 : ImFont,
  _p1 : ImDrawList,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : Int,
) -> Unit = "ImFont_RenderChar"

///|
/// Generated raw binding for `ImFont_RenderCharEx`.
pub extern "C" fn im_font_render_char_ex(
  _p0 : ImFont,
  _p1 : ImDrawList,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : Int,
  _p6 : ImVec4,
) -> Unit = "ImFont_RenderCharEx"

///|
/// Generated raw binding for `ImFont_RenderText`.
pub extern "C" fn im_font_render_text(
  _p0 : ImFont,
  _p1 : ImDrawList,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : ImVec4,
  _p6 : CString,
  _p7 : CString,
  _p8 : Float,
  _p9 : Int,
) -> Unit = "ImFont_RenderText"

///|
/// Generated raw binding for `ImFont_CalcWordWrapPositionA`.
pub extern "C" fn im_font_calc_word_wrap_position_a(
  _p0 : ImFont,
  _p1 : Float,
  _p2 : CString,
  _p3 : CString,
  _p4 : Float,
) -> CString = "ImFont_CalcWordWrapPositionA"

///|
/// Generated raw binding for `ImFont_ClearOutputData`.
pub extern "C" fn im_font_clear_output_data(_p0 : ImFont) -> Unit = "ImFont_ClearOutputData"

///|
/// Generated raw binding for `ImFont_AddRemapChar`.
pub extern "C" fn im_font_add_remap_char(
  _p0 : ImFont,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImFont_AddRemapChar"

///|
/// Generated raw binding for `ImFont_IsGlyphRangeUnused`.
pub extern "C" fn im_font_is_glyph_range_unused(
  _p0 : ImFont,
  _p1 : UInt,
  _p2 : UInt,
) -> Bool = "ImFont_IsGlyphRangeUnused"

///|
/// Generated raw binding for `ImGuiViewport_GetCenter`.
pub extern "C" fn im_gui_viewport_get_center(_p0 : ImGuiViewport) -> ImVec2 = "moonbit_dcimgui_ImGuiViewport_GetCenter"

///|
/// Generated raw binding for `ImGuiViewport_GetWorkCenter`.
pub extern "C" fn im_gui_viewport_get_work_center(
  _p0 : ImGuiViewport,
) -> ImVec2 = "moonbit_dcimgui_ImGuiViewport_GetWorkCenter"

///|
/// Generated raw binding for `ImGuiPlatformIO_ClearPlatformHandlers`.
pub extern "C" fn im_gui_platform_io_clear_platform_handlers(
  _p0 : ImGuiPlatformIO,
) -> Unit = "ImGuiPlatformIO_ClearPlatformHandlers"

///|
/// Generated raw binding for `ImGuiPlatformIO_ClearRendererHandlers`.
pub extern "C" fn im_gui_platform_io_clear_renderer_handlers(
  _p0 : ImGuiPlatformIO,
) -> Unit = "ImGuiPlatformIO_ClearRendererHandlers"

///|
/// Generated raw binding for `ImGui_PushFont`.
pub extern "C" fn im_gui_push_font(_p0 : ImFont) -> Unit = "ImGui_PushFont"

///|
/// Generated raw binding for `ImGui_SetWindowFontScale`.
pub extern "C" fn im_gui_set_window_font_scale(_p0 : Float) -> Unit = "ImGui_SetWindowFontScale"

///|
/// Generated raw binding for `ImGui_ImageImVec4Ptr`.
pub extern "C" fn im_gui_image_im_vec4_ptr(
  _p0 : ImTextureRef,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec4,
  _p5 : ImVec4,
) -> Unit = "ImGui_ImageImVec4Ptr"

///|
/// Generated raw binding for `ImGui_PushButtonRepeat`.
pub extern "C" fn im_gui_push_button_repeat(_p0 : Bool) -> Unit = "ImGui_PushButtonRepeat"

///|
/// Generated raw binding for `ImGui_PopButtonRepeat`.
pub extern "C" fn im_gui_pop_button_repeat() -> Unit = "ImGui_PopButtonRepeat"

///|
/// Generated raw binding for `ImGui_PushTabStop`.
pub extern "C" fn im_gui_push_tab_stop(_p0 : Bool) -> Unit = "ImGui_PushTabStop"

///|
/// Generated raw binding for `ImGui_PopTabStop`.
pub extern "C" fn im_gui_pop_tab_stop() -> Unit = "ImGui_PopTabStop"

///|
/// Generated raw binding for `ImGui_GetContentRegionMax`.
pub extern "C" fn im_gui_get_content_region_max() -> ImVec2 = "moonbit_dcimgui_ImGui_GetContentRegionMax"

///|
/// Generated raw binding for `ImGui_GetWindowContentRegionMin`.
pub extern "C" fn im_gui_get_window_content_region_min() -> ImVec2 = "moonbit_dcimgui_ImGui_GetWindowContentRegionMin"

///|
/// Generated raw binding for `ImGui_GetWindowContentRegionMax`.
pub extern "C" fn im_gui_get_window_content_region_max() -> ImVec2 = "moonbit_dcimgui_ImGui_GetWindowContentRegionMax"

///|
/// Generated getter for `ImVec2.x`.
pub extern "C" fn im_vec2_field_get_x(_self : ImVec2) -> Float = "moonbit_dcimgui_ImVec2_x_get"

///|
/// Generated setter for `ImVec2.x`.
pub extern "C" fn im_vec2_field_set_x(_self : ImVec2, _value : Float) -> Unit = "moonbit_dcimgui_ImVec2_x_set"

///|
/// Generated getter for `ImVec2.y`.
pub extern "C" fn im_vec2_field_get_y(_self : ImVec2) -> Float = "moonbit_dcimgui_ImVec2_y_get"

///|
/// Generated setter for `ImVec2.y`.
pub extern "C" fn im_vec2_field_set_y(_self : ImVec2, _value : Float) -> Unit = "moonbit_dcimgui_ImVec2_y_set"

///|
/// Generated getter for `ImVec4.x`.
pub extern "C" fn im_vec4_field_get_x(_self : ImVec4) -> Float = "moonbit_dcimgui_ImVec4_x_get"

///|
/// Generated setter for `ImVec4.x`.
pub extern "C" fn im_vec4_field_set_x(_self : ImVec4, _value : Float) -> Unit = "moonbit_dcimgui_ImVec4_x_set"

///|
/// Generated getter for `ImVec4.y`.
pub extern "C" fn im_vec4_field_get_y(_self : ImVec4) -> Float = "moonbit_dcimgui_ImVec4_y_get"

///|
/// Generated setter for `ImVec4.y`.
pub extern "C" fn im_vec4_field_set_y(_self : ImVec4, _value : Float) -> Unit = "moonbit_dcimgui_ImVec4_y_set"

///|
/// Generated getter for `ImVec4.z`.
pub extern "C" fn im_vec4_field_get_z(_self : ImVec4) -> Float = "moonbit_dcimgui_ImVec4_z_get"

///|
/// Generated setter for `ImVec4.z`.
pub extern "C" fn im_vec4_field_set_z(_self : ImVec4, _value : Float) -> Unit = "moonbit_dcimgui_ImVec4_z_set"

///|
/// Generated getter for `ImVec4.w`.
pub extern "C" fn im_vec4_field_get_w(_self : ImVec4) -> Float = "moonbit_dcimgui_ImVec4_w_get"

///|
/// Generated setter for `ImVec4.w`.
pub extern "C" fn im_vec4_field_set_w(_self : ImVec4, _value : Float) -> Unit = "moonbit_dcimgui_ImVec4_w_set"

///|
/// Generated getter for `ImTextureRef._TexData`.
pub extern "C" fn im_texture_ref_field_get_tex_data(
  _self : ImTextureRef,
) -> ImTextureData = "moonbit_dcimgui_ImTextureRef__TexData_get"

///|
/// Generated setter for `ImTextureRef._TexData`.
pub extern "C" fn im_texture_ref_field_set_tex_data(
  _self : ImTextureRef,
  _value : ImTextureData,
) -> Unit = "moonbit_dcimgui_ImTextureRef__TexData_set"

///|
/// Generated getter for `ImTextureRef._TexID`.
pub extern "C" fn im_texture_ref_field_get_tex_id(
  _self : ImTextureRef,
) -> UInt64 = "moonbit_dcimgui_ImTextureRef__TexID_get"

///|
/// Generated setter for `ImTextureRef._TexID`.
pub extern "C" fn im_texture_ref_field_set_tex_id(
  _self : ImTextureRef,
  _value : UInt64,
) -> Unit = "moonbit_dcimgui_ImTextureRef__TexID_set"

///|
/// Generated getter for `ImGuiTableSortSpecs.Specs`.
pub extern "C" fn im_gui_table_sort_specs_field_get_specs(
  _self : ImGuiTableSortSpecs,
) -> ImGuiTableColumnSortSpecs = "moonbit_dcimgui_ImGuiTableSortSpecs_Specs_get"

///|
/// Generated setter for `ImGuiTableSortSpecs.Specs`.
pub extern "C" fn im_gui_table_sort_specs_field_set_specs(
  _self : ImGuiTableSortSpecs,
  _value : ImGuiTableColumnSortSpecs,
) -> Unit = "moonbit_dcimgui_ImGuiTableSortSpecs_Specs_set"

///|
/// Generated getter for `ImGuiTableSortSpecs.SpecsCount`.
pub extern "C" fn im_gui_table_sort_specs_field_get_specs_count(
  _self : ImGuiTableSortSpecs,
) -> Int = "moonbit_dcimgui_ImGuiTableSortSpecs_SpecsCount_get"

///|
/// Generated setter for `ImGuiTableSortSpecs.SpecsCount`.
pub extern "C" fn im_gui_table_sort_specs_field_set_specs_count(
  _self : ImGuiTableSortSpecs,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiTableSortSpecs_SpecsCount_set"

///|
/// Generated getter for `ImGuiTableSortSpecs.SpecsDirty`.
pub extern "C" fn im_gui_table_sort_specs_field_get_specs_dirty(
  _self : ImGuiTableSortSpecs,
) -> Bool = "moonbit_dcimgui_ImGuiTableSortSpecs_SpecsDirty_get"

///|
/// Generated setter for `ImGuiTableSortSpecs.SpecsDirty`.
pub extern "C" fn im_gui_table_sort_specs_field_set_specs_dirty(
  _self : ImGuiTableSortSpecs,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiTableSortSpecs_SpecsDirty_set"

///|
/// Generated getter for `ImGuiTableColumnSortSpecs.ColumnUserID`.
pub extern "C" fn im_gui_table_column_sort_specs_field_get_column_user_id(
  _self : ImGuiTableColumnSortSpecs,
) -> UInt = "moonbit_dcimgui_ImGuiTableColumnSortSpecs_ColumnUserID_get"

///|
/// Generated setter for `ImGuiTableColumnSortSpecs.ColumnUserID`.
pub extern "C" fn im_gui_table_column_sort_specs_field_set_column_user_id(
  _self : ImGuiTableColumnSortSpecs,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImGuiTableColumnSortSpecs_ColumnUserID_set"

///|
/// Generated getter for `ImGuiTableColumnSortSpecs.ColumnIndex`.
pub extern "C" fn im_gui_table_column_sort_specs_field_get_column_index(
  _self : ImGuiTableColumnSortSpecs,
) -> Int = "moonbit_dcimgui_ImGuiTableColumnSortSpecs_ColumnIndex_get"

///|
/// Generated setter for `ImGuiTableColumnSortSpecs.ColumnIndex`.
pub extern "C" fn im_gui_table_column_sort_specs_field_set_column_index(
  _self : ImGuiTableColumnSortSpecs,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiTableColumnSortSpecs_ColumnIndex_set"

///|
/// Generated getter for `ImGuiTableColumnSortSpecs.SortOrder`.
pub extern "C" fn im_gui_table_column_sort_specs_field_get_sort_order(
  _self : ImGuiTableColumnSortSpecs,
) -> Int = "moonbit_dcimgui_ImGuiTableColumnSortSpecs_SortOrder_get"

///|
/// Generated setter for `ImGuiTableColumnSortSpecs.SortOrder`.
pub extern "C" fn im_gui_table_column_sort_specs_field_set_sort_order(
  _self : ImGuiTableColumnSortSpecs,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiTableColumnSortSpecs_SortOrder_set"

///|
/// Generated getter for `ImGuiTableColumnSortSpecs.SortDirection`.
pub extern "C" fn im_gui_table_column_sort_specs_field_get_sort_direction(
  _self : ImGuiTableColumnSortSpecs,
) -> Int = "moonbit_dcimgui_ImGuiTableColumnSortSpecs_SortDirection_get"

///|
/// Generated setter for `ImGuiTableColumnSortSpecs.SortDirection`.
pub extern "C" fn im_gui_table_column_sort_specs_field_set_sort_direction(
  _self : ImGuiTableColumnSortSpecs,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiTableColumnSortSpecs_SortDirection_set"

///|
/// Generated getter for `ImVector_ImGuiTextRange.Size`.
pub extern "C" fn im_vector_im_gui_text_range_field_get_size(
  _self : ImVector_ImGuiTextRange,
) -> Int = "moonbit_dcimgui_ImVector_ImGuiTextRange_Size_get"

///|
/// Generated setter for `ImVector_ImGuiTextRange.Size`.
pub extern "C" fn im_vector_im_gui_text_range_field_set_size(
  _self : ImVector_ImGuiTextRange,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiTextRange_Size_set"

///|
/// Generated getter for `ImVector_ImGuiTextRange.Capacity`.
pub extern "C" fn im_vector_im_gui_text_range_field_get_capacity(
  _self : ImVector_ImGuiTextRange,
) -> Int = "moonbit_dcimgui_ImVector_ImGuiTextRange_Capacity_get"

///|
/// Generated setter for `ImVector_ImGuiTextRange.Capacity`.
pub extern "C" fn im_vector_im_gui_text_range_field_set_capacity(
  _self : ImVector_ImGuiTextRange,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiTextRange_Capacity_set"

///|
/// Generated getter for `ImVector_ImGuiTextRange.Data`.
pub extern "C" fn im_vector_im_gui_text_range_field_get_data(
  _self : ImVector_ImGuiTextRange,
) -> ImGuiTextFilter_ImGuiTextRange = "moonbit_dcimgui_ImVector_ImGuiTextRange_Data_get"

///|
/// Generated setter for `ImVector_ImGuiTextRange.Data`.
pub extern "C" fn im_vector_im_gui_text_range_field_set_data(
  _self : ImVector_ImGuiTextRange,
  _value : ImGuiTextFilter_ImGuiTextRange,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiTextRange_Data_set"

///|
/// Generated getter for `ImVector_char.Size`.
pub extern "C" fn im_vector_char_field_get_size(_self : ImVector_char) -> Int = "moonbit_dcimgui_ImVector_char_Size_get"

///|
/// Generated setter for `ImVector_char.Size`.
pub extern "C" fn im_vector_char_field_set_size(
  _self : ImVector_char,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_char_Size_set"

///|
/// Generated getter for `ImVector_char.Capacity`.
pub extern "C" fn im_vector_char_field_get_capacity(
  _self : ImVector_char,
) -> Int = "moonbit_dcimgui_ImVector_char_Capacity_get"

///|
/// Generated setter for `ImVector_char.Capacity`.
pub extern "C" fn im_vector_char_field_set_capacity(
  _self : ImVector_char,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_char_Capacity_set"

///|
/// Generated getter for `ImVector_char.Data`.
pub extern "C" fn im_vector_char_field_get_data(
  _self : ImVector_char,
) -> CString = "moonbit_dcimgui_ImVector_char_Data_get"

///|
/// Generated setter for `ImVector_char.Data`.
pub extern "C" fn im_vector_char_field_set_data(
  _self : ImVector_char,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImVector_char_Data_set"

///|
/// Generated getter for `ImVector_ImGuiStoragePair.Size`.
pub extern "C" fn im_vector_im_gui_storage_pair_field_get_size(
  _self : ImVector_ImGuiStoragePair,
) -> Int = "moonbit_dcimgui_ImVector_ImGuiStoragePair_Size_get"

///|
/// Generated setter for `ImVector_ImGuiStoragePair.Size`.
pub extern "C" fn im_vector_im_gui_storage_pair_field_set_size(
  _self : ImVector_ImGuiStoragePair,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiStoragePair_Size_set"

///|
/// Generated getter for `ImVector_ImGuiStoragePair.Capacity`.
pub extern "C" fn im_vector_im_gui_storage_pair_field_get_capacity(
  _self : ImVector_ImGuiStoragePair,
) -> Int = "moonbit_dcimgui_ImVector_ImGuiStoragePair_Capacity_get"

///|
/// Generated setter for `ImVector_ImGuiStoragePair.Capacity`.
pub extern "C" fn im_vector_im_gui_storage_pair_field_set_capacity(
  _self : ImVector_ImGuiStoragePair,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiStoragePair_Capacity_set"

///|
/// Generated getter for `ImVector_ImGuiStoragePair.Data`.
pub extern "C" fn im_vector_im_gui_storage_pair_field_get_data(
  _self : ImVector_ImGuiStoragePair,
) -> ImGuiStoragePair = "moonbit_dcimgui_ImVector_ImGuiStoragePair_Data_get"

///|
/// Generated setter for `ImVector_ImGuiStoragePair.Data`.
pub extern "C" fn im_vector_im_gui_storage_pair_field_set_data(
  _self : ImVector_ImGuiStoragePair,
  _value : ImGuiStoragePair,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiStoragePair_Data_set"

///|
/// Generated getter for `ImVector_ImGuiSelectionRequest.Size`.
pub extern "C" fn im_vector_im_gui_selection_request_field_get_size(
  _self : ImVector_ImGuiSelectionRequest,
) -> Int = "moonbit_dcimgui_ImVector_ImGuiSelectionRequest_Size_get"

///|
/// Generated setter for `ImVector_ImGuiSelectionRequest.Size`.
pub extern "C" fn im_vector_im_gui_selection_request_field_set_size(
  _self : ImVector_ImGuiSelectionRequest,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiSelectionRequest_Size_set"

///|
/// Generated getter for `ImVector_ImGuiSelectionRequest.Capacity`.
pub extern "C" fn im_vector_im_gui_selection_request_field_get_capacity(
  _self : ImVector_ImGuiSelectionRequest,
) -> Int = "moonbit_dcimgui_ImVector_ImGuiSelectionRequest_Capacity_get"

///|
/// Generated setter for `ImVector_ImGuiSelectionRequest.Capacity`.
pub extern "C" fn im_vector_im_gui_selection_request_field_set_capacity(
  _self : ImVector_ImGuiSelectionRequest,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiSelectionRequest_Capacity_set"

///|
/// Generated getter for `ImVector_ImGuiSelectionRequest.Data`.
pub extern "C" fn im_vector_im_gui_selection_request_field_get_data(
  _self : ImVector_ImGuiSelectionRequest,
) -> ImGuiSelectionRequest = "moonbit_dcimgui_ImVector_ImGuiSelectionRequest_Data_get"

///|
/// Generated setter for `ImVector_ImGuiSelectionRequest.Data`.
pub extern "C" fn im_vector_im_gui_selection_request_field_set_data(
  _self : ImVector_ImGuiSelectionRequest,
  _value : ImGuiSelectionRequest,
) -> Unit = "moonbit_dcimgui_ImVector_ImGuiSelectionRequest_Data_set"

///|
/// Generated getter for `ImVector_ImDrawChannel.Size`.
pub extern "C" fn im_vector_im_draw_channel_field_get_size(
  _self : ImVector_ImDrawChannel,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawChannel_Size_get"

///|
/// Generated setter for `ImVector_ImDrawChannel.Size`.
pub extern "C" fn im_vector_im_draw_channel_field_set_size(
  _self : ImVector_ImDrawChannel,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawChannel_Size_set"

///|
/// Generated getter for `ImVector_ImDrawChannel.Capacity`.
pub extern "C" fn im_vector_im_draw_channel_field_get_capacity(
  _self : ImVector_ImDrawChannel,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawChannel_Capacity_get"

///|
/// Generated setter for `ImVector_ImDrawChannel.Capacity`.
pub extern "C" fn im_vector_im_draw_channel_field_set_capacity(
  _self : ImVector_ImDrawChannel,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawChannel_Capacity_set"

///|
/// Generated getter for `ImVector_ImDrawChannel.Data`.
pub extern "C" fn im_vector_im_draw_channel_field_get_data(
  _self : ImVector_ImDrawChannel,
) -> ImDrawChannel = "moonbit_dcimgui_ImVector_ImDrawChannel_Data_get"

///|
/// Generated setter for `ImVector_ImDrawChannel.Data`.
pub extern "C" fn im_vector_im_draw_channel_field_set_data(
  _self : ImVector_ImDrawChannel,
  _value : ImDrawChannel,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawChannel_Data_set"

///|
/// Generated getter for `ImVector_ImDrawCmd.Size`.
pub extern "C" fn im_vector_im_draw_cmd_field_get_size(
  _self : ImVector_ImDrawCmd,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawCmd_Size_get"

///|
/// Generated setter for `ImVector_ImDrawCmd.Size`.
pub extern "C" fn im_vector_im_draw_cmd_field_set_size(
  _self : ImVector_ImDrawCmd,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawCmd_Size_set"

///|
/// Generated getter for `ImVector_ImDrawCmd.Capacity`.
pub extern "C" fn im_vector_im_draw_cmd_field_get_capacity(
  _self : ImVector_ImDrawCmd,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawCmd_Capacity_get"

///|
/// Generated setter for `ImVector_ImDrawCmd.Capacity`.
pub extern "C" fn im_vector_im_draw_cmd_field_set_capacity(
  _self : ImVector_ImDrawCmd,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawCmd_Capacity_set"

///|
/// Generated getter for `ImVector_ImDrawCmd.Data`.
pub extern "C" fn im_vector_im_draw_cmd_field_get_data(
  _self : ImVector_ImDrawCmd,
) -> ImDrawCmd = "moonbit_dcimgui_ImVector_ImDrawCmd_Data_get"

///|
/// Generated setter for `ImVector_ImDrawCmd.Data`.
pub extern "C" fn im_vector_im_draw_cmd_field_set_data(
  _self : ImVector_ImDrawCmd,
  _value : ImDrawCmd,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawCmd_Data_set"

///|
/// Generated getter for `ImVector_ImDrawIdx.Size`.
pub extern "C" fn im_vector_im_draw_idx_field_get_size(
  _self : ImVector_ImDrawIdx,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawIdx_Size_get"

///|
/// Generated setter for `ImVector_ImDrawIdx.Size`.
pub extern "C" fn im_vector_im_draw_idx_field_set_size(
  _self : ImVector_ImDrawIdx,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawIdx_Size_set"

///|
/// Generated getter for `ImVector_ImDrawIdx.Capacity`.
pub extern "C" fn im_vector_im_draw_idx_field_get_capacity(
  _self : ImVector_ImDrawIdx,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawIdx_Capacity_get"

///|
/// Generated setter for `ImVector_ImDrawIdx.Capacity`.
pub extern "C" fn im_vector_im_draw_idx_field_set_capacity(
  _self : ImVector_ImDrawIdx,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawIdx_Capacity_set"

///|
/// Generated getter for `ImVector_ImDrawIdx.Data`.
pub extern "C" fn im_vector_im_draw_idx_field_get_data(
  _self : ImVector_ImDrawIdx,
) -> ImDrawIdxPtr = "moonbit_dcimgui_ImVector_ImDrawIdx_Data_get"

///|
/// Generated setter for `ImVector_ImDrawIdx.Data`.
pub extern "C" fn im_vector_im_draw_idx_field_set_data(
  _self : ImVector_ImDrawIdx,
  _value : ImDrawIdxPtr,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawIdx_Data_set"

///|
/// Generated getter for `ImVector_ImDrawVert.Size`.
pub extern "C" fn im_vector_im_draw_vert_field_get_size(
  _self : ImVector_ImDrawVert,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawVert_Size_get"

///|
/// Generated setter for `ImVector_ImDrawVert.Size`.
pub extern "C" fn im_vector_im_draw_vert_field_set_size(
  _self : ImVector_ImDrawVert,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawVert_Size_set"

///|
/// Generated getter for `ImVector_ImDrawVert.Capacity`.
pub extern "C" fn im_vector_im_draw_vert_field_get_capacity(
  _self : ImVector_ImDrawVert,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawVert_Capacity_get"

///|
/// Generated setter for `ImVector_ImDrawVert.Capacity`.
pub extern "C" fn im_vector_im_draw_vert_field_set_capacity(
  _self : ImVector_ImDrawVert,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawVert_Capacity_set"

///|
/// Generated getter for `ImVector_ImDrawVert.Data`.
pub extern "C" fn im_vector_im_draw_vert_field_get_data(
  _self : ImVector_ImDrawVert,
) -> ImDrawVert = "moonbit_dcimgui_ImVector_ImDrawVert_Data_get"

///|
/// Generated setter for `ImVector_ImDrawVert.Data`.
pub extern "C" fn im_vector_im_draw_vert_field_set_data(
  _self : ImVector_ImDrawVert,
  _value : ImDrawVert,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawVert_Data_set"

///|
/// Generated getter for `ImVector_ImVec2.Size`.
pub extern "C" fn im_vector_im_vec2_field_get_size(
  _self : ImVector_ImVec2,
) -> Int = "moonbit_dcimgui_ImVector_ImVec2_Size_get"

///|
/// Generated setter for `ImVector_ImVec2.Size`.
pub extern "C" fn im_vector_im_vec2_field_set_size(
  _self : ImVector_ImVec2,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImVec2_Size_set"

///|
/// Generated getter for `ImVector_ImVec2.Capacity`.
pub extern "C" fn im_vector_im_vec2_field_get_capacity(
  _self : ImVector_ImVec2,
) -> Int = "moonbit_dcimgui_ImVector_ImVec2_Capacity_get"

///|
/// Generated setter for `ImVector_ImVec2.Capacity`.
pub extern "C" fn im_vector_im_vec2_field_set_capacity(
  _self : ImVector_ImVec2,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImVec2_Capacity_set"

///|
/// Generated getter for `ImVector_ImVec2.Data`.
pub extern "C" fn im_vector_im_vec2_field_get_data(
  _self : ImVector_ImVec2,
) -> ImVec2 = "moonbit_dcimgui_ImVector_ImVec2_Data_get"

///|
/// Generated setter for `ImVector_ImVec2.Data`.
pub extern "C" fn im_vector_im_vec2_field_set_data(
  _self : ImVector_ImVec2,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImVector_ImVec2_Data_set"

///|
/// Generated getter for `ImVector_ImVec4.Size`.
pub extern "C" fn im_vector_im_vec4_field_get_size(
  _self : ImVector_ImVec4,
) -> Int = "moonbit_dcimgui_ImVector_ImVec4_Size_get"

///|
/// Generated setter for `ImVector_ImVec4.Size`.
pub extern "C" fn im_vector_im_vec4_field_set_size(
  _self : ImVector_ImVec4,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImVec4_Size_set"

///|
/// Generated getter for `ImVector_ImVec4.Capacity`.
pub extern "C" fn im_vector_im_vec4_field_get_capacity(
  _self : ImVector_ImVec4,
) -> Int = "moonbit_dcimgui_ImVector_ImVec4_Capacity_get"

///|
/// Generated setter for `ImVector_ImVec4.Capacity`.
pub extern "C" fn im_vector_im_vec4_field_set_capacity(
  _self : ImVector_ImVec4,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImVec4_Capacity_set"

///|
/// Generated getter for `ImVector_ImVec4.Data`.
pub extern "C" fn im_vector_im_vec4_field_get_data(
  _self : ImVector_ImVec4,
) -> ImVec4 = "moonbit_dcimgui_ImVector_ImVec4_Data_get"

///|
/// Generated setter for `ImVector_ImVec4.Data`.
pub extern "C" fn im_vector_im_vec4_field_set_data(
  _self : ImVector_ImVec4,
  _value : ImVec4,
) -> Unit = "moonbit_dcimgui_ImVector_ImVec4_Data_set"

///|
/// Generated getter for `ImVector_ImTextureRef.Size`.
pub extern "C" fn im_vector_im_texture_ref_field_get_size(
  _self : ImVector_ImTextureRef,
) -> Int = "moonbit_dcimgui_ImVector_ImTextureRef_Size_get"

///|
/// Generated setter for `ImVector_ImTextureRef.Size`.
pub extern "C" fn im_vector_im_texture_ref_field_set_size(
  _self : ImVector_ImTextureRef,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureRef_Size_set"

///|
/// Generated getter for `ImVector_ImTextureRef.Capacity`.
pub extern "C" fn im_vector_im_texture_ref_field_get_capacity(
  _self : ImVector_ImTextureRef,
) -> Int = "moonbit_dcimgui_ImVector_ImTextureRef_Capacity_get"

///|
/// Generated setter for `ImVector_ImTextureRef.Capacity`.
pub extern "C" fn im_vector_im_texture_ref_field_set_capacity(
  _self : ImVector_ImTextureRef,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureRef_Capacity_set"

///|
/// Generated getter for `ImVector_ImTextureRef.Data`.
pub extern "C" fn im_vector_im_texture_ref_field_get_data(
  _self : ImVector_ImTextureRef,
) -> ImTextureRef = "moonbit_dcimgui_ImVector_ImTextureRef_Data_get"

///|
/// Generated setter for `ImVector_ImTextureRef.Data`.
pub extern "C" fn im_vector_im_texture_ref_field_set_data(
  _self : ImVector_ImTextureRef,
  _value : ImTextureRef,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureRef_Data_set"

///|
/// Generated getter for `ImVector_ImU8.Size`.
pub extern "C" fn im_vector_im_u8_field_get_size(_self : ImVector_ImU8) -> Int = "moonbit_dcimgui_ImVector_ImU8_Size_get"

///|
/// Generated setter for `ImVector_ImU8.Size`.
pub extern "C" fn im_vector_im_u8_field_set_size(
  _self : ImVector_ImU8,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImU8_Size_set"

///|
/// Generated getter for `ImVector_ImU8.Capacity`.
pub extern "C" fn im_vector_im_u8_field_get_capacity(
  _self : ImVector_ImU8,
) -> Int = "moonbit_dcimgui_ImVector_ImU8_Capacity_get"

///|
/// Generated setter for `ImVector_ImU8.Capacity`.
pub extern "C" fn im_vector_im_u8_field_set_capacity(
  _self : ImVector_ImU8,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImU8_Capacity_set"

///|
/// Generated getter for `ImVector_ImU8.Data`.
pub extern "C" fn im_vector_im_u8_field_get_data(
  _self : ImVector_ImU8,
) -> ImU8Ptr = "moonbit_dcimgui_ImVector_ImU8_Data_get"

///|
/// Generated setter for `ImVector_ImU8.Data`.
pub extern "C" fn im_vector_im_u8_field_set_data(
  _self : ImVector_ImU8,
  _value : ImU8Ptr,
) -> Unit = "moonbit_dcimgui_ImVector_ImU8_Data_set"

///|
/// Generated getter for `ImVector_ImDrawListPtr.Size`.
pub extern "C" fn im_vector_im_draw_list_ptr_field_get_size(
  _self : ImVector_ImDrawListPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawListPtr_Size_get"

///|
/// Generated setter for `ImVector_ImDrawListPtr.Size`.
pub extern "C" fn im_vector_im_draw_list_ptr_field_set_size(
  _self : ImVector_ImDrawListPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawListPtr_Size_set"

///|
/// Generated getter for `ImVector_ImDrawListPtr.Capacity`.
pub extern "C" fn im_vector_im_draw_list_ptr_field_get_capacity(
  _self : ImVector_ImDrawListPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawListPtr_Capacity_get"

///|
/// Generated setter for `ImVector_ImDrawListPtr.Capacity`.
pub extern "C" fn im_vector_im_draw_list_ptr_field_set_capacity(
  _self : ImVector_ImDrawListPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawListPtr_Capacity_set"

///|
/// Generated getter for `ImVector_ImDrawListPtr.Data`.
pub extern "C" fn im_vector_im_draw_list_ptr_field_get_data(
  _self : ImVector_ImDrawListPtr,
) -> ImDrawListPtr = "moonbit_dcimgui_ImVector_ImDrawListPtr_Data_get"

///|
/// Generated setter for `ImVector_ImDrawListPtr.Data`.
pub extern "C" fn im_vector_im_draw_list_ptr_field_set_data(
  _self : ImVector_ImDrawListPtr,
  _value : ImDrawListPtr,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawListPtr_Data_set"

///|
/// Generated getter for `ImVector_ImTextureRect.Size`.
pub extern "C" fn im_vector_im_texture_rect_field_get_size(
  _self : ImVector_ImTextureRect,
) -> Int = "moonbit_dcimgui_ImVector_ImTextureRect_Size_get"

///|
/// Generated setter for `ImVector_ImTextureRect.Size`.
pub extern "C" fn im_vector_im_texture_rect_field_set_size(
  _self : ImVector_ImTextureRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureRect_Size_set"

///|
/// Generated getter for `ImVector_ImTextureRect.Capacity`.
pub extern "C" fn im_vector_im_texture_rect_field_get_capacity(
  _self : ImVector_ImTextureRect,
) -> Int = "moonbit_dcimgui_ImVector_ImTextureRect_Capacity_get"

///|
/// Generated setter for `ImVector_ImTextureRect.Capacity`.
pub extern "C" fn im_vector_im_texture_rect_field_set_capacity(
  _self : ImVector_ImTextureRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureRect_Capacity_set"

///|
/// Generated getter for `ImVector_ImTextureRect.Data`.
pub extern "C" fn im_vector_im_texture_rect_field_get_data(
  _self : ImVector_ImTextureRect,
) -> ImTextureRect = "moonbit_dcimgui_ImVector_ImTextureRect_Data_get"

///|
/// Generated setter for `ImVector_ImTextureRect.Data`.
pub extern "C" fn im_vector_im_texture_rect_field_set_data(
  _self : ImVector_ImTextureRect,
  _value : ImTextureRect,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureRect_Data_set"

///|
/// Generated getter for `ImVector_ImU32.Size`.
pub extern "C" fn im_vector_im_u32_field_get_size(
  _self : ImVector_ImU32,
) -> Int = "moonbit_dcimgui_ImVector_ImU32_Size_get"

///|
/// Generated setter for `ImVector_ImU32.Size`.
pub extern "C" fn im_vector_im_u32_field_set_size(
  _self : ImVector_ImU32,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImU32_Size_set"

///|
/// Generated getter for `ImVector_ImU32.Capacity`.
pub extern "C" fn im_vector_im_u32_field_get_capacity(
  _self : ImVector_ImU32,
) -> Int = "moonbit_dcimgui_ImVector_ImU32_Capacity_get"

///|
/// Generated setter for `ImVector_ImU32.Capacity`.
pub extern "C" fn im_vector_im_u32_field_set_capacity(
  _self : ImVector_ImU32,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImU32_Capacity_set"

///|
/// Generated getter for `ImVector_ImU32.Data`.
pub extern "C" fn im_vector_im_u32_field_get_data(
  _self : ImVector_ImU32,
) -> ImU32Ptr = "moonbit_dcimgui_ImVector_ImU32_Data_get"

///|
/// Generated setter for `ImVector_ImU32.Data`.
pub extern "C" fn im_vector_im_u32_field_set_data(
  _self : ImVector_ImU32,
  _value : ImU32Ptr,
) -> Unit = "moonbit_dcimgui_ImVector_ImU32_Data_set"

///|
/// Generated getter for `ImVector_ImWchar.Size`.
pub extern "C" fn im_vector_im_wchar_field_get_size(
  _self : ImVector_ImWchar,
) -> Int = "moonbit_dcimgui_ImVector_ImWchar_Size_get"

///|
/// Generated setter for `ImVector_ImWchar.Size`.
pub extern "C" fn im_vector_im_wchar_field_set_size(
  _self : ImVector_ImWchar,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImWchar_Size_set"

///|
/// Generated getter for `ImVector_ImWchar.Capacity`.
pub extern "C" fn im_vector_im_wchar_field_get_capacity(
  _self : ImVector_ImWchar,
) -> Int = "moonbit_dcimgui_ImVector_ImWchar_Capacity_get"

///|
/// Generated setter for `ImVector_ImWchar.Capacity`.
pub extern "C" fn im_vector_im_wchar_field_set_capacity(
  _self : ImVector_ImWchar,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImWchar_Capacity_set"

///|
/// Generated getter for `ImVector_ImWchar.Data`.
pub extern "C" fn im_vector_im_wchar_field_get_data(
  _self : ImVector_ImWchar,
) -> ImWcharPtr = "moonbit_dcimgui_ImVector_ImWchar_Data_get"

///|
/// Generated setter for `ImVector_ImWchar.Data`.
pub extern "C" fn im_vector_im_wchar_field_set_data(
  _self : ImVector_ImWchar,
  _value : ImWcharPtr,
) -> Unit = "moonbit_dcimgui_ImVector_ImWchar_Data_set"

///|
/// Generated getter for `ImVector_ImFontPtr.Size`.
pub extern "C" fn im_vector_im_font_ptr_field_get_size(
  _self : ImVector_ImFontPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImFontPtr_Size_get"

///|
/// Generated setter for `ImVector_ImFontPtr.Size`.
pub extern "C" fn im_vector_im_font_ptr_field_set_size(
  _self : ImVector_ImFontPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontPtr_Size_set"

///|
/// Generated getter for `ImVector_ImFontPtr.Capacity`.
pub extern "C" fn im_vector_im_font_ptr_field_get_capacity(
  _self : ImVector_ImFontPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImFontPtr_Capacity_get"

///|
/// Generated setter for `ImVector_ImFontPtr.Capacity`.
pub extern "C" fn im_vector_im_font_ptr_field_set_capacity(
  _self : ImVector_ImFontPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontPtr_Capacity_set"

///|
/// Generated getter for `ImVector_ImFontPtr.Data`.
pub extern "C" fn im_vector_im_font_ptr_field_get_data(
  _self : ImVector_ImFontPtr,
) -> ImFontPtr = "moonbit_dcimgui_ImVector_ImFontPtr_Data_get"

///|
/// Generated setter for `ImVector_ImFontPtr.Data`.
pub extern "C" fn im_vector_im_font_ptr_field_set_data(
  _self : ImVector_ImFontPtr,
  _value : ImFontPtr,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontPtr_Data_set"

///|
/// Generated getter for `ImVector_ImFontConfig.Size`.
pub extern "C" fn im_vector_im_font_config_field_get_size(
  _self : ImVector_ImFontConfig,
) -> Int = "moonbit_dcimgui_ImVector_ImFontConfig_Size_get"

///|
/// Generated setter for `ImVector_ImFontConfig.Size`.
pub extern "C" fn im_vector_im_font_config_field_set_size(
  _self : ImVector_ImFontConfig,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontConfig_Size_set"

///|
/// Generated getter for `ImVector_ImFontConfig.Capacity`.
pub extern "C" fn im_vector_im_font_config_field_get_capacity(
  _self : ImVector_ImFontConfig,
) -> Int = "moonbit_dcimgui_ImVector_ImFontConfig_Capacity_get"

///|
/// Generated setter for `ImVector_ImFontConfig.Capacity`.
pub extern "C" fn im_vector_im_font_config_field_set_capacity(
  _self : ImVector_ImFontConfig,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontConfig_Capacity_set"

///|
/// Generated getter for `ImVector_ImFontConfig.Data`.
pub extern "C" fn im_vector_im_font_config_field_get_data(
  _self : ImVector_ImFontConfig,
) -> ImFontConfig = "moonbit_dcimgui_ImVector_ImFontConfig_Data_get"

///|
/// Generated setter for `ImVector_ImFontConfig.Data`.
pub extern "C" fn im_vector_im_font_config_field_set_data(
  _self : ImVector_ImFontConfig,
  _value : ImFontConfig,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontConfig_Data_set"

///|
/// Generated getter for `ImVector_ImDrawListSharedDataPtr.Size`.
pub extern "C" fn im_vector_im_draw_list_shared_data_ptr_field_get_size(
  _self : ImVector_ImDrawListSharedDataPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawListSharedDataPtr_Size_get"

///|
/// Generated setter for `ImVector_ImDrawListSharedDataPtr.Size`.
pub extern "C" fn im_vector_im_draw_list_shared_data_ptr_field_set_size(
  _self : ImVector_ImDrawListSharedDataPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawListSharedDataPtr_Size_set"

///|
/// Generated getter for `ImVector_ImDrawListSharedDataPtr.Capacity`.
pub extern "C" fn im_vector_im_draw_list_shared_data_ptr_field_get_capacity(
  _self : ImVector_ImDrawListSharedDataPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImDrawListSharedDataPtr_Capacity_get"

///|
/// Generated setter for `ImVector_ImDrawListSharedDataPtr.Capacity`.
pub extern "C" fn im_vector_im_draw_list_shared_data_ptr_field_set_capacity(
  _self : ImVector_ImDrawListSharedDataPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawListSharedDataPtr_Capacity_set"

///|
/// Generated getter for `ImVector_ImDrawListSharedDataPtr.Data`.
pub extern "C" fn im_vector_im_draw_list_shared_data_ptr_field_get_data(
  _self : ImVector_ImDrawListSharedDataPtr,
) -> ImDrawListSharedDataPtr = "moonbit_dcimgui_ImVector_ImDrawListSharedDataPtr_Data_get"

///|
/// Generated setter for `ImVector_ImDrawListSharedDataPtr.Data`.
pub extern "C" fn im_vector_im_draw_list_shared_data_ptr_field_set_data(
  _self : ImVector_ImDrawListSharedDataPtr,
  _value : ImDrawListSharedDataPtr,
) -> Unit = "moonbit_dcimgui_ImVector_ImDrawListSharedDataPtr_Data_set"

///|
/// Generated getter for `ImVector_float.Size`.
pub extern "C" fn im_vector_float_field_get_size(_self : ImVector_float) -> Int = "moonbit_dcimgui_ImVector_float_Size_get"

///|
/// Generated setter for `ImVector_float.Size`.
pub extern "C" fn im_vector_float_field_set_size(
  _self : ImVector_float,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_float_Size_set"

///|
/// Generated getter for `ImVector_float.Capacity`.
pub extern "C" fn im_vector_float_field_get_capacity(
  _self : ImVector_float,
) -> Int = "moonbit_dcimgui_ImVector_float_Capacity_get"

///|
/// Generated setter for `ImVector_float.Capacity`.
pub extern "C" fn im_vector_float_field_set_capacity(
  _self : ImVector_float,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_float_Capacity_set"

///|
/// Generated getter for `ImVector_float.Data`.
pub extern "C" fn im_vector_float_field_get_data(
  _self : ImVector_float,
) -> FloatPtr = "moonbit_dcimgui_ImVector_float_Data_get"

///|
/// Generated setter for `ImVector_float.Data`.
pub extern "C" fn im_vector_float_field_set_data(
  _self : ImVector_float,
  _value : FloatPtr,
) -> Unit = "moonbit_dcimgui_ImVector_float_Data_set"

///|
/// Generated getter for `ImVector_ImU16.Size`.
pub extern "C" fn im_vector_im_u16_field_get_size(
  _self : ImVector_ImU16,
) -> Int = "moonbit_dcimgui_ImVector_ImU16_Size_get"

///|
/// Generated setter for `ImVector_ImU16.Size`.
pub extern "C" fn im_vector_im_u16_field_set_size(
  _self : ImVector_ImU16,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImU16_Size_set"

///|
/// Generated getter for `ImVector_ImU16.Capacity`.
pub extern "C" fn im_vector_im_u16_field_get_capacity(
  _self : ImVector_ImU16,
) -> Int = "moonbit_dcimgui_ImVector_ImU16_Capacity_get"

///|
/// Generated setter for `ImVector_ImU16.Capacity`.
pub extern "C" fn im_vector_im_u16_field_set_capacity(
  _self : ImVector_ImU16,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImU16_Capacity_set"

///|
/// Generated getter for `ImVector_ImU16.Data`.
pub extern "C" fn im_vector_im_u16_field_get_data(
  _self : ImVector_ImU16,
) -> ImU16Ptr = "moonbit_dcimgui_ImVector_ImU16_Data_get"

///|
/// Generated setter for `ImVector_ImU16.Data`.
pub extern "C" fn im_vector_im_u16_field_set_data(
  _self : ImVector_ImU16,
  _value : ImU16Ptr,
) -> Unit = "moonbit_dcimgui_ImVector_ImU16_Data_set"

///|
/// Generated getter for `ImVector_ImFontGlyph.Size`.
pub extern "C" fn im_vector_im_font_glyph_field_get_size(
  _self : ImVector_ImFontGlyph,
) -> Int = "moonbit_dcimgui_ImVector_ImFontGlyph_Size_get"

///|
/// Generated setter for `ImVector_ImFontGlyph.Size`.
pub extern "C" fn im_vector_im_font_glyph_field_set_size(
  _self : ImVector_ImFontGlyph,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontGlyph_Size_set"

///|
/// Generated getter for `ImVector_ImFontGlyph.Capacity`.
pub extern "C" fn im_vector_im_font_glyph_field_get_capacity(
  _self : ImVector_ImFontGlyph,
) -> Int = "moonbit_dcimgui_ImVector_ImFontGlyph_Capacity_get"

///|
/// Generated setter for `ImVector_ImFontGlyph.Capacity`.
pub extern "C" fn im_vector_im_font_glyph_field_set_capacity(
  _self : ImVector_ImFontGlyph,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontGlyph_Capacity_set"

///|
/// Generated getter for `ImVector_ImFontGlyph.Data`.
pub extern "C" fn im_vector_im_font_glyph_field_get_data(
  _self : ImVector_ImFontGlyph,
) -> ImFontGlyph = "moonbit_dcimgui_ImVector_ImFontGlyph_Data_get"

///|
/// Generated setter for `ImVector_ImFontGlyph.Data`.
pub extern "C" fn im_vector_im_font_glyph_field_set_data(
  _self : ImVector_ImFontGlyph,
  _value : ImFontGlyph,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontGlyph_Data_set"

///|
/// Generated getter for `ImVector_ImFontConfigPtr.Size`.
pub extern "C" fn im_vector_im_font_config_ptr_field_get_size(
  _self : ImVector_ImFontConfigPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImFontConfigPtr_Size_get"

///|
/// Generated setter for `ImVector_ImFontConfigPtr.Size`.
pub extern "C" fn im_vector_im_font_config_ptr_field_set_size(
  _self : ImVector_ImFontConfigPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontConfigPtr_Size_set"

///|
/// Generated getter for `ImVector_ImFontConfigPtr.Capacity`.
pub extern "C" fn im_vector_im_font_config_ptr_field_get_capacity(
  _self : ImVector_ImFontConfigPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImFontConfigPtr_Capacity_get"

///|
/// Generated setter for `ImVector_ImFontConfigPtr.Capacity`.
pub extern "C" fn im_vector_im_font_config_ptr_field_set_capacity(
  _self : ImVector_ImFontConfigPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontConfigPtr_Capacity_set"

///|
/// Generated getter for `ImVector_ImFontConfigPtr.Data`.
pub extern "C" fn im_vector_im_font_config_ptr_field_get_data(
  _self : ImVector_ImFontConfigPtr,
) -> ImFontConfigPtr = "moonbit_dcimgui_ImVector_ImFontConfigPtr_Data_get"

///|
/// Generated setter for `ImVector_ImFontConfigPtr.Data`.
pub extern "C" fn im_vector_im_font_config_ptr_field_set_data(
  _self : ImVector_ImFontConfigPtr,
  _value : ImFontConfigPtr,
) -> Unit = "moonbit_dcimgui_ImVector_ImFontConfigPtr_Data_set"

///|
/// Generated getter for `ImVector_ImTextureDataPtr.Size`.
pub extern "C" fn im_vector_im_texture_data_ptr_field_get_size(
  _self : ImVector_ImTextureDataPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImTextureDataPtr_Size_get"

///|
/// Generated setter for `ImVector_ImTextureDataPtr.Size`.
pub extern "C" fn im_vector_im_texture_data_ptr_field_set_size(
  _self : ImVector_ImTextureDataPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureDataPtr_Size_set"

///|
/// Generated getter for `ImVector_ImTextureDataPtr.Capacity`.
pub extern "C" fn im_vector_im_texture_data_ptr_field_get_capacity(
  _self : ImVector_ImTextureDataPtr,
) -> Int = "moonbit_dcimgui_ImVector_ImTextureDataPtr_Capacity_get"

///|
/// Generated setter for `ImVector_ImTextureDataPtr.Capacity`.
pub extern "C" fn im_vector_im_texture_data_ptr_field_set_capacity(
  _self : ImVector_ImTextureDataPtr,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureDataPtr_Capacity_set"

///|
/// Generated getter for `ImVector_ImTextureDataPtr.Data`.
pub extern "C" fn im_vector_im_texture_data_ptr_field_get_data(
  _self : ImVector_ImTextureDataPtr,
) -> ImTextureDataPtr = "moonbit_dcimgui_ImVector_ImTextureDataPtr_Data_get"

///|
/// Generated setter for `ImVector_ImTextureDataPtr.Data`.
pub extern "C" fn im_vector_im_texture_data_ptr_field_set_data(
  _self : ImVector_ImTextureDataPtr,
  _value : ImTextureDataPtr,
) -> Unit = "moonbit_dcimgui_ImVector_ImTextureDataPtr_Data_set"

///|
/// Generated getter for `ImGuiStyle.FontSizeBase`.
pub extern "C" fn im_gui_style_field_get_font_size_base(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_FontSizeBase_get"

///|
/// Generated setter for `ImGuiStyle.FontSizeBase`.
pub extern "C" fn im_gui_style_field_set_font_size_base(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_FontSizeBase_set"

///|
/// Generated getter for `ImGuiStyle.FontScaleMain`.
pub extern "C" fn im_gui_style_field_get_font_scale_main(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_FontScaleMain_get"

///|
/// Generated setter for `ImGuiStyle.FontScaleMain`.
pub extern "C" fn im_gui_style_field_set_font_scale_main(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_FontScaleMain_set"

///|
/// Generated getter for `ImGuiStyle.FontScaleDpi`.
pub extern "C" fn im_gui_style_field_get_font_scale_dpi(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_FontScaleDpi_get"

///|
/// Generated setter for `ImGuiStyle.FontScaleDpi`.
pub extern "C" fn im_gui_style_field_set_font_scale_dpi(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_FontScaleDpi_set"

///|
/// Generated getter for `ImGuiStyle.Alpha`.
pub extern "C" fn im_gui_style_field_get_alpha(_self : ImGuiStyle) -> Float = "moonbit_dcimgui_ImGuiStyle_Alpha_get"

///|
/// Generated setter for `ImGuiStyle.Alpha`.
pub extern "C" fn im_gui_style_field_set_alpha(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_Alpha_set"

///|
/// Generated getter for `ImGuiStyle.DisabledAlpha`.
pub extern "C" fn im_gui_style_field_get_disabled_alpha(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_DisabledAlpha_get"

///|
/// Generated setter for `ImGuiStyle.DisabledAlpha`.
pub extern "C" fn im_gui_style_field_set_disabled_alpha(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_DisabledAlpha_set"

///|
/// Generated getter for `ImGuiStyle.WindowPadding`.
pub extern "C" fn im_gui_style_field_get_window_padding(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_WindowPadding_get"

///|
/// Generated setter for `ImGuiStyle.WindowPadding`.
pub extern "C" fn im_gui_style_field_set_window_padding(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_WindowPadding_set"

///|
/// Generated getter for `ImGuiStyle.WindowRounding`.
pub extern "C" fn im_gui_style_field_get_window_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_WindowRounding_get"

///|
/// Generated setter for `ImGuiStyle.WindowRounding`.
pub extern "C" fn im_gui_style_field_set_window_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_WindowRounding_set"

///|
/// Generated getter for `ImGuiStyle.WindowBorderSize`.
pub extern "C" fn im_gui_style_field_get_window_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_WindowBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.WindowBorderSize`.
pub extern "C" fn im_gui_style_field_set_window_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_WindowBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.WindowBorderHoverPadding`.
pub extern "C" fn im_gui_style_field_get_window_border_hover_padding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_WindowBorderHoverPadding_get"

///|
/// Generated setter for `ImGuiStyle.WindowBorderHoverPadding`.
pub extern "C" fn im_gui_style_field_set_window_border_hover_padding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_WindowBorderHoverPadding_set"

///|
/// Generated getter for `ImGuiStyle.WindowMinSize`.
pub extern "C" fn im_gui_style_field_get_window_min_size(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_WindowMinSize_get"

///|
/// Generated setter for `ImGuiStyle.WindowMinSize`.
pub extern "C" fn im_gui_style_field_set_window_min_size(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_WindowMinSize_set"

///|
/// Generated getter for `ImGuiStyle.WindowTitleAlign`.
pub extern "C" fn im_gui_style_field_get_window_title_align(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_WindowTitleAlign_get"

///|
/// Generated setter for `ImGuiStyle.WindowTitleAlign`.
pub extern "C" fn im_gui_style_field_set_window_title_align(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_WindowTitleAlign_set"

///|
/// Generated getter for `ImGuiStyle.WindowMenuButtonPosition`.
pub extern "C" fn im_gui_style_field_get_window_menu_button_position(
  _self : ImGuiStyle,
) -> Int = "moonbit_dcimgui_ImGuiStyle_WindowMenuButtonPosition_get"

///|
/// Generated setter for `ImGuiStyle.WindowMenuButtonPosition`.
pub extern "C" fn im_gui_style_field_set_window_menu_button_position(
  _self : ImGuiStyle,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_WindowMenuButtonPosition_set"

///|
/// Generated getter for `ImGuiStyle.ChildRounding`.
pub extern "C" fn im_gui_style_field_get_child_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ChildRounding_get"

///|
/// Generated setter for `ImGuiStyle.ChildRounding`.
pub extern "C" fn im_gui_style_field_set_child_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ChildRounding_set"

///|
/// Generated getter for `ImGuiStyle.ChildBorderSize`.
pub extern "C" fn im_gui_style_field_get_child_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ChildBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.ChildBorderSize`.
pub extern "C" fn im_gui_style_field_set_child_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ChildBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.PopupRounding`.
pub extern "C" fn im_gui_style_field_get_popup_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_PopupRounding_get"

///|
/// Generated setter for `ImGuiStyle.PopupRounding`.
pub extern "C" fn im_gui_style_field_set_popup_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_PopupRounding_set"

///|
/// Generated getter for `ImGuiStyle.PopupBorderSize`.
pub extern "C" fn im_gui_style_field_get_popup_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_PopupBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.PopupBorderSize`.
pub extern "C" fn im_gui_style_field_set_popup_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_PopupBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.FramePadding`.
pub extern "C" fn im_gui_style_field_get_frame_padding(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_FramePadding_get"

///|
/// Generated setter for `ImGuiStyle.FramePadding`.
pub extern "C" fn im_gui_style_field_set_frame_padding(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_FramePadding_set"

///|
/// Generated getter for `ImGuiStyle.FrameRounding`.
pub extern "C" fn im_gui_style_field_get_frame_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_FrameRounding_get"

///|
/// Generated setter for `ImGuiStyle.FrameRounding`.
pub extern "C" fn im_gui_style_field_set_frame_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_FrameRounding_set"

///|
/// Generated getter for `ImGuiStyle.FrameBorderSize`.
pub extern "C" fn im_gui_style_field_get_frame_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_FrameBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.FrameBorderSize`.
pub extern "C" fn im_gui_style_field_set_frame_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_FrameBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.ItemSpacing`.
pub extern "C" fn im_gui_style_field_get_item_spacing(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_ItemSpacing_get"

///|
/// Generated setter for `ImGuiStyle.ItemSpacing`.
pub extern "C" fn im_gui_style_field_set_item_spacing(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ItemSpacing_set"

///|
/// Generated getter for `ImGuiStyle.ItemInnerSpacing`.
pub extern "C" fn im_gui_style_field_get_item_inner_spacing(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_ItemInnerSpacing_get"

///|
/// Generated setter for `ImGuiStyle.ItemInnerSpacing`.
pub extern "C" fn im_gui_style_field_set_item_inner_spacing(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ItemInnerSpacing_set"

///|
/// Generated getter for `ImGuiStyle.CellPadding`.
pub extern "C" fn im_gui_style_field_get_cell_padding(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_CellPadding_get"

///|
/// Generated setter for `ImGuiStyle.CellPadding`.
pub extern "C" fn im_gui_style_field_set_cell_padding(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_CellPadding_set"

///|
/// Generated getter for `ImGuiStyle.TouchExtraPadding`.
pub extern "C" fn im_gui_style_field_get_touch_extra_padding(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_TouchExtraPadding_get"

///|
/// Generated setter for `ImGuiStyle.TouchExtraPadding`.
pub extern "C" fn im_gui_style_field_set_touch_extra_padding(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TouchExtraPadding_set"

///|
/// Generated getter for `ImGuiStyle.IndentSpacing`.
pub extern "C" fn im_gui_style_field_get_indent_spacing(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_IndentSpacing_get"

///|
/// Generated setter for `ImGuiStyle.IndentSpacing`.
pub extern "C" fn im_gui_style_field_set_indent_spacing(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_IndentSpacing_set"

///|
/// Generated getter for `ImGuiStyle.ColumnsMinSpacing`.
pub extern "C" fn im_gui_style_field_get_columns_min_spacing(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ColumnsMinSpacing_get"

///|
/// Generated setter for `ImGuiStyle.ColumnsMinSpacing`.
pub extern "C" fn im_gui_style_field_set_columns_min_spacing(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ColumnsMinSpacing_set"

///|
/// Generated getter for `ImGuiStyle.ScrollbarSize`.
pub extern "C" fn im_gui_style_field_get_scrollbar_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ScrollbarSize_get"

///|
/// Generated setter for `ImGuiStyle.ScrollbarSize`.
pub extern "C" fn im_gui_style_field_set_scrollbar_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ScrollbarSize_set"

///|
/// Generated getter for `ImGuiStyle.ScrollbarRounding`.
pub extern "C" fn im_gui_style_field_get_scrollbar_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ScrollbarRounding_get"

///|
/// Generated setter for `ImGuiStyle.ScrollbarRounding`.
pub extern "C" fn im_gui_style_field_set_scrollbar_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ScrollbarRounding_set"

///|
/// Generated getter for `ImGuiStyle.ScrollbarPadding`.
pub extern "C" fn im_gui_style_field_get_scrollbar_padding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ScrollbarPadding_get"

///|
/// Generated setter for `ImGuiStyle.ScrollbarPadding`.
pub extern "C" fn im_gui_style_field_set_scrollbar_padding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ScrollbarPadding_set"

///|
/// Generated getter for `ImGuiStyle.GrabMinSize`.
pub extern "C" fn im_gui_style_field_get_grab_min_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_GrabMinSize_get"

///|
/// Generated setter for `ImGuiStyle.GrabMinSize`.
pub extern "C" fn im_gui_style_field_set_grab_min_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_GrabMinSize_set"

///|
/// Generated getter for `ImGuiStyle.GrabRounding`.
pub extern "C" fn im_gui_style_field_get_grab_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_GrabRounding_get"

///|
/// Generated setter for `ImGuiStyle.GrabRounding`.
pub extern "C" fn im_gui_style_field_set_grab_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_GrabRounding_set"

///|
/// Generated getter for `ImGuiStyle.LogSliderDeadzone`.
pub extern "C" fn im_gui_style_field_get_log_slider_deadzone(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_LogSliderDeadzone_get"

///|
/// Generated setter for `ImGuiStyle.LogSliderDeadzone`.
pub extern "C" fn im_gui_style_field_set_log_slider_deadzone(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_LogSliderDeadzone_set"

///|
/// Generated getter for `ImGuiStyle.ImageRounding`.
pub extern "C" fn im_gui_style_field_get_image_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ImageRounding_get"

///|
/// Generated setter for `ImGuiStyle.ImageRounding`.
pub extern "C" fn im_gui_style_field_set_image_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ImageRounding_set"

///|
/// Generated getter for `ImGuiStyle.ImageBorderSize`.
pub extern "C" fn im_gui_style_field_get_image_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ImageBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.ImageBorderSize`.
pub extern "C" fn im_gui_style_field_set_image_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ImageBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.TabRounding`.
pub extern "C" fn im_gui_style_field_get_tab_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TabRounding_get"

///|
/// Generated setter for `ImGuiStyle.TabRounding`.
pub extern "C" fn im_gui_style_field_set_tab_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TabRounding_set"

///|
/// Generated getter for `ImGuiStyle.TabBorderSize`.
pub extern "C" fn im_gui_style_field_get_tab_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TabBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.TabBorderSize`.
pub extern "C" fn im_gui_style_field_set_tab_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TabBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.TabMinWidthBase`.
pub extern "C" fn im_gui_style_field_get_tab_min_width_base(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TabMinWidthBase_get"

///|
/// Generated setter for `ImGuiStyle.TabMinWidthBase`.
pub extern "C" fn im_gui_style_field_set_tab_min_width_base(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TabMinWidthBase_set"

///|
/// Generated getter for `ImGuiStyle.TabMinWidthShrink`.
pub extern "C" fn im_gui_style_field_get_tab_min_width_shrink(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TabMinWidthShrink_get"

///|
/// Generated setter for `ImGuiStyle.TabMinWidthShrink`.
pub extern "C" fn im_gui_style_field_set_tab_min_width_shrink(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TabMinWidthShrink_set"

///|
/// Generated getter for `ImGuiStyle.TabCloseButtonMinWidthSelected`.
pub extern "C" fn im_gui_style_field_get_tab_close_button_min_width_selected(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TabCloseButtonMinWidthSelected_get"

///|
/// Generated setter for `ImGuiStyle.TabCloseButtonMinWidthSelected`.
pub extern "C" fn im_gui_style_field_set_tab_close_button_min_width_selected(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TabCloseButtonMinWidthSelected_set"

///|
/// Generated getter for `ImGuiStyle.TabCloseButtonMinWidthUnselected`.
pub extern "C" fn im_gui_style_field_get_tab_close_button_min_width_unselected(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TabCloseButtonMinWidthUnselected_get"

///|
/// Generated setter for `ImGuiStyle.TabCloseButtonMinWidthUnselected`.
pub extern "C" fn im_gui_style_field_set_tab_close_button_min_width_unselected(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TabCloseButtonMinWidthUnselected_set"

///|
/// Generated getter for `ImGuiStyle.TabBarBorderSize`.
pub extern "C" fn im_gui_style_field_get_tab_bar_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TabBarBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.TabBarBorderSize`.
pub extern "C" fn im_gui_style_field_set_tab_bar_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TabBarBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.TabBarOverlineSize`.
pub extern "C" fn im_gui_style_field_get_tab_bar_overline_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TabBarOverlineSize_get"

///|
/// Generated setter for `ImGuiStyle.TabBarOverlineSize`.
pub extern "C" fn im_gui_style_field_set_tab_bar_overline_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TabBarOverlineSize_set"

///|
/// Generated getter for `ImGuiStyle.TableAngledHeadersAngle`.
pub extern "C" fn im_gui_style_field_get_table_angled_headers_angle(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TableAngledHeadersAngle_get"

///|
/// Generated setter for `ImGuiStyle.TableAngledHeadersAngle`.
pub extern "C" fn im_gui_style_field_set_table_angled_headers_angle(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TableAngledHeadersAngle_set"

///|
/// Generated getter for `ImGuiStyle.TableAngledHeadersTextAlign`.
pub extern "C" fn im_gui_style_field_get_table_angled_headers_text_align(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_TableAngledHeadersTextAlign_get"

///|
/// Generated setter for `ImGuiStyle.TableAngledHeadersTextAlign`.
pub extern "C" fn im_gui_style_field_set_table_angled_headers_text_align(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TableAngledHeadersTextAlign_set"

///|
/// Generated getter for `ImGuiStyle.TreeLinesFlags`.
pub extern "C" fn im_gui_style_field_get_tree_lines_flags(
  _self : ImGuiStyle,
) -> Int = "moonbit_dcimgui_ImGuiStyle_TreeLinesFlags_get"

///|
/// Generated setter for `ImGuiStyle.TreeLinesFlags`.
pub extern "C" fn im_gui_style_field_set_tree_lines_flags(
  _self : ImGuiStyle,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TreeLinesFlags_set"

///|
/// Generated getter for `ImGuiStyle.TreeLinesSize`.
pub extern "C" fn im_gui_style_field_get_tree_lines_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TreeLinesSize_get"

///|
/// Generated setter for `ImGuiStyle.TreeLinesSize`.
pub extern "C" fn im_gui_style_field_set_tree_lines_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TreeLinesSize_set"

///|
/// Generated getter for `ImGuiStyle.TreeLinesRounding`.
pub extern "C" fn im_gui_style_field_get_tree_lines_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_TreeLinesRounding_get"

///|
/// Generated setter for `ImGuiStyle.TreeLinesRounding`.
pub extern "C" fn im_gui_style_field_set_tree_lines_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_TreeLinesRounding_set"

///|
/// Generated getter for `ImGuiStyle.DragDropTargetRounding`.
pub extern "C" fn im_gui_style_field_get_drag_drop_target_rounding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_DragDropTargetRounding_get"

///|
/// Generated setter for `ImGuiStyle.DragDropTargetRounding`.
pub extern "C" fn im_gui_style_field_set_drag_drop_target_rounding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_DragDropTargetRounding_set"

///|
/// Generated getter for `ImGuiStyle.DragDropTargetBorderSize`.
pub extern "C" fn im_gui_style_field_get_drag_drop_target_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_DragDropTargetBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.DragDropTargetBorderSize`.
pub extern "C" fn im_gui_style_field_set_drag_drop_target_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_DragDropTargetBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.DragDropTargetPadding`.
pub extern "C" fn im_gui_style_field_get_drag_drop_target_padding(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_DragDropTargetPadding_get"

///|
/// Generated setter for `ImGuiStyle.DragDropTargetPadding`.
pub extern "C" fn im_gui_style_field_set_drag_drop_target_padding(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_DragDropTargetPadding_set"

///|
/// Generated getter for `ImGuiStyle.ColorMarkerSize`.
pub extern "C" fn im_gui_style_field_get_color_marker_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_ColorMarkerSize_get"

///|
/// Generated setter for `ImGuiStyle.ColorMarkerSize`.
pub extern "C" fn im_gui_style_field_set_color_marker_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ColorMarkerSize_set"

///|
/// Generated getter for `ImGuiStyle.ColorButtonPosition`.
pub extern "C" fn im_gui_style_field_get_color_button_position(
  _self : ImGuiStyle,
) -> Int = "moonbit_dcimgui_ImGuiStyle_ColorButtonPosition_get"

///|
/// Generated setter for `ImGuiStyle.ColorButtonPosition`.
pub extern "C" fn im_gui_style_field_set_color_button_position(
  _self : ImGuiStyle,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ColorButtonPosition_set"

///|
/// Generated getter for `ImGuiStyle.ButtonTextAlign`.
pub extern "C" fn im_gui_style_field_get_button_text_align(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_ButtonTextAlign_get"

///|
/// Generated setter for `ImGuiStyle.ButtonTextAlign`.
pub extern "C" fn im_gui_style_field_set_button_text_align(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_ButtonTextAlign_set"

///|
/// Generated getter for `ImGuiStyle.SelectableTextAlign`.
pub extern "C" fn im_gui_style_field_get_selectable_text_align(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_SelectableTextAlign_get"

///|
/// Generated setter for `ImGuiStyle.SelectableTextAlign`.
pub extern "C" fn im_gui_style_field_set_selectable_text_align(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_SelectableTextAlign_set"

///|
/// Generated getter for `ImGuiStyle.SeparatorSize`.
pub extern "C" fn im_gui_style_field_get_separator_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_SeparatorSize_get"

///|
/// Generated setter for `ImGuiStyle.SeparatorSize`.
pub extern "C" fn im_gui_style_field_set_separator_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_SeparatorSize_set"

///|
/// Generated getter for `ImGuiStyle.SeparatorTextBorderSize`.
pub extern "C" fn im_gui_style_field_get_separator_text_border_size(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_SeparatorTextBorderSize_get"

///|
/// Generated setter for `ImGuiStyle.SeparatorTextBorderSize`.
pub extern "C" fn im_gui_style_field_set_separator_text_border_size(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_SeparatorTextBorderSize_set"

///|
/// Generated getter for `ImGuiStyle.SeparatorTextAlign`.
pub extern "C" fn im_gui_style_field_get_separator_text_align(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_SeparatorTextAlign_get"

///|
/// Generated setter for `ImGuiStyle.SeparatorTextAlign`.
pub extern "C" fn im_gui_style_field_set_separator_text_align(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_SeparatorTextAlign_set"

///|
/// Generated getter for `ImGuiStyle.SeparatorTextPadding`.
pub extern "C" fn im_gui_style_field_get_separator_text_padding(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_SeparatorTextPadding_get"

///|
/// Generated setter for `ImGuiStyle.SeparatorTextPadding`.
pub extern "C" fn im_gui_style_field_set_separator_text_padding(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_SeparatorTextPadding_set"

///|
/// Generated getter for `ImGuiStyle.DisplayWindowPadding`.
pub extern "C" fn im_gui_style_field_get_display_window_padding(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_DisplayWindowPadding_get"

///|
/// Generated setter for `ImGuiStyle.DisplayWindowPadding`.
pub extern "C" fn im_gui_style_field_set_display_window_padding(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_DisplayWindowPadding_set"

///|
/// Generated getter for `ImGuiStyle.DisplaySafeAreaPadding`.
pub extern "C" fn im_gui_style_field_get_display_safe_area_padding(
  _self : ImGuiStyle,
) -> ImVec2 = "moonbit_dcimgui_ImGuiStyle_DisplaySafeAreaPadding_get"

///|
/// Generated setter for `ImGuiStyle.DisplaySafeAreaPadding`.
pub extern "C" fn im_gui_style_field_set_display_safe_area_padding(
  _self : ImGuiStyle,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_DisplaySafeAreaPadding_set"

///|
/// Generated getter for `ImGuiStyle.MouseCursorScale`.
pub extern "C" fn im_gui_style_field_get_mouse_cursor_scale(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_MouseCursorScale_get"

///|
/// Generated setter for `ImGuiStyle.MouseCursorScale`.
pub extern "C" fn im_gui_style_field_set_mouse_cursor_scale(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_MouseCursorScale_set"

///|
/// Generated getter for `ImGuiStyle.AntiAliasedLines`.
pub extern "C" fn im_gui_style_field_get_anti_aliased_lines(
  _self : ImGuiStyle,
) -> Bool = "moonbit_dcimgui_ImGuiStyle_AntiAliasedLines_get"

///|
/// Generated setter for `ImGuiStyle.AntiAliasedLines`.
pub extern "C" fn im_gui_style_field_set_anti_aliased_lines(
  _self : ImGuiStyle,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_AntiAliasedLines_set"

///|
/// Generated getter for `ImGuiStyle.AntiAliasedLinesUseTex`.
pub extern "C" fn im_gui_style_field_get_anti_aliased_lines_use_tex(
  _self : ImGuiStyle,
) -> Bool = "moonbit_dcimgui_ImGuiStyle_AntiAliasedLinesUseTex_get"

///|
/// Generated setter for `ImGuiStyle.AntiAliasedLinesUseTex`.
pub extern "C" fn im_gui_style_field_set_anti_aliased_lines_use_tex(
  _self : ImGuiStyle,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_AntiAliasedLinesUseTex_set"

///|
/// Generated getter for `ImGuiStyle.AntiAliasedFill`.
pub extern "C" fn im_gui_style_field_get_anti_aliased_fill(
  _self : ImGuiStyle,
) -> Bool = "moonbit_dcimgui_ImGuiStyle_AntiAliasedFill_get"

///|
/// Generated setter for `ImGuiStyle.AntiAliasedFill`.
pub extern "C" fn im_gui_style_field_set_anti_aliased_fill(
  _self : ImGuiStyle,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_AntiAliasedFill_set"

///|
/// Generated getter for `ImGuiStyle.CurveTessellationTol`.
pub extern "C" fn im_gui_style_field_get_curve_tessellation_tol(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_CurveTessellationTol_get"

///|
/// Generated setter for `ImGuiStyle.CurveTessellationTol`.
pub extern "C" fn im_gui_style_field_set_curve_tessellation_tol(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_CurveTessellationTol_set"

///|
/// Generated getter for `ImGuiStyle.CircleTessellationMaxError`.
pub extern "C" fn im_gui_style_field_get_circle_tessellation_max_error(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_CircleTessellationMaxError_get"

///|
/// Generated setter for `ImGuiStyle.CircleTessellationMaxError`.
pub extern "C" fn im_gui_style_field_set_circle_tessellation_max_error(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_CircleTessellationMaxError_set"

///|
/// Generated getter for `ImGuiStyle.Colors`.
pub extern "C" fn im_gui_style_field_get_colors(_self : ImGuiStyle) -> ImVec4 = "moonbit_dcimgui_ImGuiStyle_Colors_get"

///|
/// Generated getter for `ImGuiStyle.HoverStationaryDelay`.
pub extern "C" fn im_gui_style_field_get_hover_stationary_delay(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_HoverStationaryDelay_get"

///|
/// Generated setter for `ImGuiStyle.HoverStationaryDelay`.
pub extern "C" fn im_gui_style_field_set_hover_stationary_delay(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_HoverStationaryDelay_set"

///|
/// Generated getter for `ImGuiStyle.HoverDelayShort`.
pub extern "C" fn im_gui_style_field_get_hover_delay_short(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_HoverDelayShort_get"

///|
/// Generated setter for `ImGuiStyle.HoverDelayShort`.
pub extern "C" fn im_gui_style_field_set_hover_delay_short(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_HoverDelayShort_set"

///|
/// Generated getter for `ImGuiStyle.HoverDelayNormal`.
pub extern "C" fn im_gui_style_field_get_hover_delay_normal(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle_HoverDelayNormal_get"

///|
/// Generated setter for `ImGuiStyle.HoverDelayNormal`.
pub extern "C" fn im_gui_style_field_set_hover_delay_normal(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_HoverDelayNormal_set"

///|
/// Generated getter for `ImGuiStyle.HoverFlagsForTooltipMouse`.
pub extern "C" fn im_gui_style_field_get_hover_flags_for_tooltip_mouse(
  _self : ImGuiStyle,
) -> Int = "moonbit_dcimgui_ImGuiStyle_HoverFlagsForTooltipMouse_get"

///|
/// Generated setter for `ImGuiStyle.HoverFlagsForTooltipMouse`.
pub extern "C" fn im_gui_style_field_set_hover_flags_for_tooltip_mouse(
  _self : ImGuiStyle,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_HoverFlagsForTooltipMouse_set"

///|
/// Generated getter for `ImGuiStyle.HoverFlagsForTooltipNav`.
pub extern "C" fn im_gui_style_field_get_hover_flags_for_tooltip_nav(
  _self : ImGuiStyle,
) -> Int = "moonbit_dcimgui_ImGuiStyle_HoverFlagsForTooltipNav_get"

///|
/// Generated setter for `ImGuiStyle.HoverFlagsForTooltipNav`.
pub extern "C" fn im_gui_style_field_set_hover_flags_for_tooltip_nav(
  _self : ImGuiStyle,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiStyle_HoverFlagsForTooltipNav_set"

///|
/// Generated getter for `ImGuiStyle._MainScale`.
pub extern "C" fn im_gui_style_field_get_main_scale(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle__MainScale_get"

///|
/// Generated setter for `ImGuiStyle._MainScale`.
pub extern "C" fn im_gui_style_field_set_main_scale(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle__MainScale_set"

///|
/// Generated getter for `ImGuiStyle._NextFrameFontSizeBase`.
pub extern "C" fn im_gui_style_field_get_next_frame_font_size_base(
  _self : ImGuiStyle,
) -> Float = "moonbit_dcimgui_ImGuiStyle__NextFrameFontSizeBase_get"

///|
/// Generated setter for `ImGuiStyle._NextFrameFontSizeBase`.
pub extern "C" fn im_gui_style_field_set_next_frame_font_size_base(
  _self : ImGuiStyle,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStyle__NextFrameFontSizeBase_set"

///|
/// Generated getter for `ImGuiKeyData.Down`.
pub extern "C" fn im_gui_key_data_field_get_down(_self : ImGuiKeyData) -> Bool = "moonbit_dcimgui_ImGuiKeyData_Down_get"

///|
/// Generated setter for `ImGuiKeyData.Down`.
pub extern "C" fn im_gui_key_data_field_set_down(
  _self : ImGuiKeyData,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiKeyData_Down_set"

///|
/// Generated getter for `ImGuiKeyData.DownDuration`.
pub extern "C" fn im_gui_key_data_field_get_down_duration(
  _self : ImGuiKeyData,
) -> Float = "moonbit_dcimgui_ImGuiKeyData_DownDuration_get"

///|
/// Generated setter for `ImGuiKeyData.DownDuration`.
pub extern "C" fn im_gui_key_data_field_set_down_duration(
  _self : ImGuiKeyData,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiKeyData_DownDuration_set"

///|
/// Generated getter for `ImGuiKeyData.DownDurationPrev`.
pub extern "C" fn im_gui_key_data_field_get_down_duration_prev(
  _self : ImGuiKeyData,
) -> Float = "moonbit_dcimgui_ImGuiKeyData_DownDurationPrev_get"

///|
/// Generated setter for `ImGuiKeyData.DownDurationPrev`.
pub extern "C" fn im_gui_key_data_field_set_down_duration_prev(
  _self : ImGuiKeyData,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiKeyData_DownDurationPrev_set"

///|
/// Generated getter for `ImGuiKeyData.AnalogValue`.
pub extern "C" fn im_gui_key_data_field_get_analog_value(
  _self : ImGuiKeyData,
) -> Float = "moonbit_dcimgui_ImGuiKeyData_AnalogValue_get"

///|
/// Generated setter for `ImGuiKeyData.AnalogValue`.
pub extern "C" fn im_gui_key_data_field_set_analog_value(
  _self : ImGuiKeyData,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiKeyData_AnalogValue_set"

///|
/// Generated getter for `ImGuiIO.ConfigFlags`.
pub extern "C" fn im_gui_io_field_get_config_flags(_self : ImGuiIO) -> Int = "moonbit_dcimgui_ImGuiIO_ConfigFlags_get"

///|
/// Generated setter for `ImGuiIO.ConfigFlags`.
pub extern "C" fn im_gui_io_field_set_config_flags(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigFlags_set"

///|
/// Generated getter for `ImGuiIO.BackendFlags`.
pub extern "C" fn im_gui_io_field_get_backend_flags(_self : ImGuiIO) -> Int = "moonbit_dcimgui_ImGuiIO_BackendFlags_get"

///|
/// Generated setter for `ImGuiIO.BackendFlags`.
pub extern "C" fn im_gui_io_field_set_backend_flags(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_BackendFlags_set"

///|
/// Generated getter for `ImGuiIO.DisplaySize`.
pub extern "C" fn im_gui_io_field_get_display_size(_self : ImGuiIO) -> ImVec2 = "moonbit_dcimgui_ImGuiIO_DisplaySize_get"

///|
/// Generated setter for `ImGuiIO.DisplaySize`.
pub extern "C" fn im_gui_io_field_set_display_size(
  _self : ImGuiIO,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiIO_DisplaySize_set"

///|
/// Generated getter for `ImGuiIO.DisplayFramebufferScale`.
pub extern "C" fn im_gui_io_field_get_display_framebuffer_scale(
  _self : ImGuiIO,
) -> ImVec2 = "moonbit_dcimgui_ImGuiIO_DisplayFramebufferScale_get"

///|
/// Generated setter for `ImGuiIO.DisplayFramebufferScale`.
pub extern "C" fn im_gui_io_field_set_display_framebuffer_scale(
  _self : ImGuiIO,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiIO_DisplayFramebufferScale_set"

///|
/// Generated getter for `ImGuiIO.DeltaTime`.
pub extern "C" fn im_gui_io_field_get_delta_time(_self : ImGuiIO) -> Float = "moonbit_dcimgui_ImGuiIO_DeltaTime_get"

///|
/// Generated setter for `ImGuiIO.DeltaTime`.
pub extern "C" fn im_gui_io_field_set_delta_time(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_DeltaTime_set"

///|
/// Generated getter for `ImGuiIO.IniSavingRate`.
pub extern "C" fn im_gui_io_field_get_ini_saving_rate(_self : ImGuiIO) -> Float = "moonbit_dcimgui_ImGuiIO_IniSavingRate_get"

///|
/// Generated setter for `ImGuiIO.IniSavingRate`.
pub extern "C" fn im_gui_io_field_set_ini_saving_rate(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_IniSavingRate_set"

///|
/// Generated getter for `ImGuiIO.IniFilename`.
pub extern "C" fn im_gui_io_field_get_ini_filename(_self : ImGuiIO) -> CString = "moonbit_dcimgui_ImGuiIO_IniFilename_get"

///|
/// Generated setter for `ImGuiIO.IniFilename`.
pub extern "C" fn im_gui_io_field_set_ini_filename(
  _self : ImGuiIO,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImGuiIO_IniFilename_set"

///|
/// Generated getter for `ImGuiIO.LogFilename`.
pub extern "C" fn im_gui_io_field_get_log_filename(_self : ImGuiIO) -> CString = "moonbit_dcimgui_ImGuiIO_LogFilename_get"

///|
/// Generated setter for `ImGuiIO.LogFilename`.
pub extern "C" fn im_gui_io_field_set_log_filename(
  _self : ImGuiIO,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImGuiIO_LogFilename_set"

///|
/// Generated getter for `ImGuiIO.UserData`.
pub extern "C" fn im_gui_io_field_get_user_data(_self : ImGuiIO) -> VoidPtr = "moonbit_dcimgui_ImGuiIO_UserData_get"

///|
/// Generated setter for `ImGuiIO.UserData`.
pub extern "C" fn im_gui_io_field_set_user_data(
  _self : ImGuiIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiIO_UserData_set"

///|
/// Generated getter for `ImGuiIO.Fonts`.
pub extern "C" fn im_gui_io_field_get_fonts(_self : ImGuiIO) -> ImFontAtlas = "moonbit_dcimgui_ImGuiIO_Fonts_get"

///|
/// Generated setter for `ImGuiIO.Fonts`.
pub extern "C" fn im_gui_io_field_set_fonts(
  _self : ImGuiIO,
  _value : ImFontAtlas,
) -> Unit = "moonbit_dcimgui_ImGuiIO_Fonts_set"

///|
/// Generated getter for `ImGuiIO.FontDefault`.
pub extern "C" fn im_gui_io_field_get_font_default(_self : ImGuiIO) -> ImFont = "moonbit_dcimgui_ImGuiIO_FontDefault_get"

///|
/// Generated setter for `ImGuiIO.FontDefault`.
pub extern "C" fn im_gui_io_field_set_font_default(
  _self : ImGuiIO,
  _value : ImFont,
) -> Unit = "moonbit_dcimgui_ImGuiIO_FontDefault_set"

///|
/// Generated getter for `ImGuiIO.FontAllowUserScaling`.
pub extern "C" fn im_gui_io_field_get_font_allow_user_scaling(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_FontAllowUserScaling_get"

///|
/// Generated setter for `ImGuiIO.FontAllowUserScaling`.
pub extern "C" fn im_gui_io_field_set_font_allow_user_scaling(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_FontAllowUserScaling_set"

///|
/// Generated getter for `ImGuiIO.ConfigNavSwapGamepadButtons`.
pub extern "C" fn im_gui_io_field_get_config_nav_swap_gamepad_buttons(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigNavSwapGamepadButtons_get"

///|
/// Generated setter for `ImGuiIO.ConfigNavSwapGamepadButtons`.
pub extern "C" fn im_gui_io_field_set_config_nav_swap_gamepad_buttons(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigNavSwapGamepadButtons_set"

///|
/// Generated getter for `ImGuiIO.ConfigNavMoveSetMousePos`.
pub extern "C" fn im_gui_io_field_get_config_nav_move_set_mouse_pos(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigNavMoveSetMousePos_get"

///|
/// Generated setter for `ImGuiIO.ConfigNavMoveSetMousePos`.
pub extern "C" fn im_gui_io_field_set_config_nav_move_set_mouse_pos(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigNavMoveSetMousePos_set"

///|
/// Generated getter for `ImGuiIO.ConfigNavCaptureKeyboard`.
pub extern "C" fn im_gui_io_field_get_config_nav_capture_keyboard(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigNavCaptureKeyboard_get"

///|
/// Generated setter for `ImGuiIO.ConfigNavCaptureKeyboard`.
pub extern "C" fn im_gui_io_field_set_config_nav_capture_keyboard(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigNavCaptureKeyboard_set"

///|
/// Generated getter for `ImGuiIO.ConfigNavEscapeClearFocusItem`.
pub extern "C" fn im_gui_io_field_get_config_nav_escape_clear_focus_item(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigNavEscapeClearFocusItem_get"

///|
/// Generated setter for `ImGuiIO.ConfigNavEscapeClearFocusItem`.
pub extern "C" fn im_gui_io_field_set_config_nav_escape_clear_focus_item(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigNavEscapeClearFocusItem_set"

///|
/// Generated getter for `ImGuiIO.ConfigNavEscapeClearFocusWindow`.
pub extern "C" fn im_gui_io_field_get_config_nav_escape_clear_focus_window(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigNavEscapeClearFocusWindow_get"

///|
/// Generated setter for `ImGuiIO.ConfigNavEscapeClearFocusWindow`.
pub extern "C" fn im_gui_io_field_set_config_nav_escape_clear_focus_window(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigNavEscapeClearFocusWindow_set"

///|
/// Generated getter for `ImGuiIO.ConfigNavCursorVisibleAuto`.
pub extern "C" fn im_gui_io_field_get_config_nav_cursor_visible_auto(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigNavCursorVisibleAuto_get"

///|
/// Generated setter for `ImGuiIO.ConfigNavCursorVisibleAuto`.
pub extern "C" fn im_gui_io_field_set_config_nav_cursor_visible_auto(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigNavCursorVisibleAuto_set"

///|
/// Generated getter for `ImGuiIO.ConfigNavCursorVisibleAlways`.
pub extern "C" fn im_gui_io_field_get_config_nav_cursor_visible_always(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigNavCursorVisibleAlways_get"

///|
/// Generated setter for `ImGuiIO.ConfigNavCursorVisibleAlways`.
pub extern "C" fn im_gui_io_field_set_config_nav_cursor_visible_always(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigNavCursorVisibleAlways_set"

///|
/// Generated getter for `ImGuiIO.MouseDrawCursor`.
pub extern "C" fn im_gui_io_field_get_mouse_draw_cursor(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_MouseDrawCursor_get"

///|
/// Generated setter for `ImGuiIO.MouseDrawCursor`.
pub extern "C" fn im_gui_io_field_set_mouse_draw_cursor(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseDrawCursor_set"

///|
/// Generated getter for `ImGuiIO.ConfigMacOSXBehaviors`.
pub extern "C" fn im_gui_io_field_get_config_mac_osx_behaviors(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigMacOSXBehaviors_get"

///|
/// Generated setter for `ImGuiIO.ConfigMacOSXBehaviors`.
pub extern "C" fn im_gui_io_field_set_config_mac_osx_behaviors(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigMacOSXBehaviors_set"

///|
/// Generated getter for `ImGuiIO.ConfigInputTrickleEventQueue`.
pub extern "C" fn im_gui_io_field_get_config_input_trickle_event_queue(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigInputTrickleEventQueue_get"

///|
/// Generated setter for `ImGuiIO.ConfigInputTrickleEventQueue`.
pub extern "C" fn im_gui_io_field_set_config_input_trickle_event_queue(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigInputTrickleEventQueue_set"

///|
/// Generated getter for `ImGuiIO.ConfigInputTextCursorBlink`.
pub extern "C" fn im_gui_io_field_get_config_input_text_cursor_blink(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigInputTextCursorBlink_get"

///|
/// Generated setter for `ImGuiIO.ConfigInputTextCursorBlink`.
pub extern "C" fn im_gui_io_field_set_config_input_text_cursor_blink(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigInputTextCursorBlink_set"

///|
/// Generated getter for `ImGuiIO.ConfigInputTextEnterKeepActive`.
pub extern "C" fn im_gui_io_field_get_config_input_text_enter_keep_active(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigInputTextEnterKeepActive_get"

///|
/// Generated setter for `ImGuiIO.ConfigInputTextEnterKeepActive`.
pub extern "C" fn im_gui_io_field_set_config_input_text_enter_keep_active(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigInputTextEnterKeepActive_set"

///|
/// Generated getter for `ImGuiIO.ConfigDragClickToInputText`.
pub extern "C" fn im_gui_io_field_get_config_drag_click_to_input_text(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigDragClickToInputText_get"

///|
/// Generated setter for `ImGuiIO.ConfigDragClickToInputText`.
pub extern "C" fn im_gui_io_field_set_config_drag_click_to_input_text(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigDragClickToInputText_set"

///|
/// Generated getter for `ImGuiIO.ConfigWindowsResizeFromEdges`.
pub extern "C" fn im_gui_io_field_get_config_windows_resize_from_edges(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigWindowsResizeFromEdges_get"

///|
/// Generated setter for `ImGuiIO.ConfigWindowsResizeFromEdges`.
pub extern "C" fn im_gui_io_field_set_config_windows_resize_from_edges(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigWindowsResizeFromEdges_set"

///|
/// Generated getter for `ImGuiIO.ConfigWindowsMoveFromTitleBarOnly`.
pub extern "C" fn im_gui_io_field_get_config_windows_move_from_title_bar_only(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigWindowsMoveFromTitleBarOnly_get"

///|
/// Generated setter for `ImGuiIO.ConfigWindowsMoveFromTitleBarOnly`.
pub extern "C" fn im_gui_io_field_set_config_windows_move_from_title_bar_only(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigWindowsMoveFromTitleBarOnly_set"

///|
/// Generated getter for `ImGuiIO.ConfigWindowsCopyContentsWithCtrlC`.
pub extern "C" fn im_gui_io_field_get_config_windows_copy_contents_with_ctrl_c(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigWindowsCopyContentsWithCtrlC_get"

///|
/// Generated setter for `ImGuiIO.ConfigWindowsCopyContentsWithCtrlC`.
pub extern "C" fn im_gui_io_field_set_config_windows_copy_contents_with_ctrl_c(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigWindowsCopyContentsWithCtrlC_set"

///|
/// Generated getter for `ImGuiIO.ConfigScrollbarScrollByPage`.
pub extern "C" fn im_gui_io_field_get_config_scrollbar_scroll_by_page(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigScrollbarScrollByPage_get"

///|
/// Generated setter for `ImGuiIO.ConfigScrollbarScrollByPage`.
pub extern "C" fn im_gui_io_field_set_config_scrollbar_scroll_by_page(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigScrollbarScrollByPage_set"

///|
/// Generated getter for `ImGuiIO.ConfigMemoryCompactTimer`.
pub extern "C" fn im_gui_io_field_get_config_memory_compact_timer(
  _self : ImGuiIO,
) -> Float = "moonbit_dcimgui_ImGuiIO_ConfigMemoryCompactTimer_get"

///|
/// Generated setter for `ImGuiIO.ConfigMemoryCompactTimer`.
pub extern "C" fn im_gui_io_field_set_config_memory_compact_timer(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigMemoryCompactTimer_set"

///|
/// Generated getter for `ImGuiIO.MouseDoubleClickTime`.
pub extern "C" fn im_gui_io_field_get_mouse_double_click_time(
  _self : ImGuiIO,
) -> Float = "moonbit_dcimgui_ImGuiIO_MouseDoubleClickTime_get"

///|
/// Generated setter for `ImGuiIO.MouseDoubleClickTime`.
pub extern "C" fn im_gui_io_field_set_mouse_double_click_time(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseDoubleClickTime_set"

///|
/// Generated getter for `ImGuiIO.MouseDoubleClickMaxDist`.
pub extern "C" fn im_gui_io_field_get_mouse_double_click_max_dist(
  _self : ImGuiIO,
) -> Float = "moonbit_dcimgui_ImGuiIO_MouseDoubleClickMaxDist_get"

///|
/// Generated setter for `ImGuiIO.MouseDoubleClickMaxDist`.
pub extern "C" fn im_gui_io_field_set_mouse_double_click_max_dist(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseDoubleClickMaxDist_set"

///|
/// Generated getter for `ImGuiIO.MouseDragThreshold`.
pub extern "C" fn im_gui_io_field_get_mouse_drag_threshold(
  _self : ImGuiIO,
) -> Float = "moonbit_dcimgui_ImGuiIO_MouseDragThreshold_get"

///|
/// Generated setter for `ImGuiIO.MouseDragThreshold`.
pub extern "C" fn im_gui_io_field_set_mouse_drag_threshold(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseDragThreshold_set"

///|
/// Generated getter for `ImGuiIO.KeyRepeatDelay`.
pub extern "C" fn im_gui_io_field_get_key_repeat_delay(
  _self : ImGuiIO,
) -> Float = "moonbit_dcimgui_ImGuiIO_KeyRepeatDelay_get"

///|
/// Generated setter for `ImGuiIO.KeyRepeatDelay`.
pub extern "C" fn im_gui_io_field_set_key_repeat_delay(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_KeyRepeatDelay_set"

///|
/// Generated getter for `ImGuiIO.KeyRepeatRate`.
pub extern "C" fn im_gui_io_field_get_key_repeat_rate(_self : ImGuiIO) -> Float = "moonbit_dcimgui_ImGuiIO_KeyRepeatRate_get"

///|
/// Generated setter for `ImGuiIO.KeyRepeatRate`.
pub extern "C" fn im_gui_io_field_set_key_repeat_rate(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_KeyRepeatRate_set"

///|
/// Generated getter for `ImGuiIO.ConfigErrorRecovery`.
pub extern "C" fn im_gui_io_field_get_config_error_recovery(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigErrorRecovery_get"

///|
/// Generated setter for `ImGuiIO.ConfigErrorRecovery`.
pub extern "C" fn im_gui_io_field_set_config_error_recovery(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigErrorRecovery_set"

///|
/// Generated getter for `ImGuiIO.ConfigErrorRecoveryEnableAssert`.
pub extern "C" fn im_gui_io_field_get_config_error_recovery_enable_assert(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigErrorRecoveryEnableAssert_get"

///|
/// Generated setter for `ImGuiIO.ConfigErrorRecoveryEnableAssert`.
pub extern "C" fn im_gui_io_field_set_config_error_recovery_enable_assert(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigErrorRecoveryEnableAssert_set"

///|
/// Generated getter for `ImGuiIO.ConfigErrorRecoveryEnableDebugLog`.
pub extern "C" fn im_gui_io_field_get_config_error_recovery_enable_debug_log(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigErrorRecoveryEnableDebugLog_get"

///|
/// Generated setter for `ImGuiIO.ConfigErrorRecoveryEnableDebugLog`.
pub extern "C" fn im_gui_io_field_set_config_error_recovery_enable_debug_log(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigErrorRecoveryEnableDebugLog_set"

///|
/// Generated getter for `ImGuiIO.ConfigErrorRecoveryEnableTooltip`.
pub extern "C" fn im_gui_io_field_get_config_error_recovery_enable_tooltip(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigErrorRecoveryEnableTooltip_get"

///|
/// Generated setter for `ImGuiIO.ConfigErrorRecoveryEnableTooltip`.
pub extern "C" fn im_gui_io_field_set_config_error_recovery_enable_tooltip(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigErrorRecoveryEnableTooltip_set"

///|
/// Generated getter for `ImGuiIO.ConfigDebugIsDebuggerPresent`.
pub extern "C" fn im_gui_io_field_get_config_debug_is_debugger_present(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigDebugIsDebuggerPresent_get"

///|
/// Generated setter for `ImGuiIO.ConfigDebugIsDebuggerPresent`.
pub extern "C" fn im_gui_io_field_set_config_debug_is_debugger_present(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigDebugIsDebuggerPresent_set"

///|
/// Generated getter for `ImGuiIO.ConfigDebugHighlightIdConflicts`.
pub extern "C" fn im_gui_io_field_get_config_debug_highlight_id_conflicts(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigDebugHighlightIdConflicts_get"

///|
/// Generated setter for `ImGuiIO.ConfigDebugHighlightIdConflicts`.
pub extern "C" fn im_gui_io_field_set_config_debug_highlight_id_conflicts(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigDebugHighlightIdConflicts_set"

///|
/// Generated getter for `ImGuiIO.ConfigDebugHighlightIdConflictsShowItemPicker`.
pub extern "C" fn im_gui_io_field_get_config_debug_highlight_id_conflicts_show_item_picker(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigDebugHighlightIdConflictsShowItemPicker_get"

///|
/// Generated setter for `ImGuiIO.ConfigDebugHighlightIdConflictsShowItemPicker`.
pub extern "C" fn im_gui_io_field_set_config_debug_highlight_id_conflicts_show_item_picker(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigDebugHighlightIdConflictsShowItemPicker_set"

///|
/// Generated getter for `ImGuiIO.ConfigDebugBeginReturnValueOnce`.
pub extern "C" fn im_gui_io_field_get_config_debug_begin_return_value_once(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigDebugBeginReturnValueOnce_get"

///|
/// Generated setter for `ImGuiIO.ConfigDebugBeginReturnValueOnce`.
pub extern "C" fn im_gui_io_field_set_config_debug_begin_return_value_once(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigDebugBeginReturnValueOnce_set"

///|
/// Generated getter for `ImGuiIO.ConfigDebugBeginReturnValueLoop`.
pub extern "C" fn im_gui_io_field_get_config_debug_begin_return_value_loop(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigDebugBeginReturnValueLoop_get"

///|
/// Generated setter for `ImGuiIO.ConfigDebugBeginReturnValueLoop`.
pub extern "C" fn im_gui_io_field_set_config_debug_begin_return_value_loop(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigDebugBeginReturnValueLoop_set"

///|
/// Generated getter for `ImGuiIO.ConfigDebugIgnoreFocusLoss`.
pub extern "C" fn im_gui_io_field_get_config_debug_ignore_focus_loss(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigDebugIgnoreFocusLoss_get"

///|
/// Generated setter for `ImGuiIO.ConfigDebugIgnoreFocusLoss`.
pub extern "C" fn im_gui_io_field_set_config_debug_ignore_focus_loss(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigDebugIgnoreFocusLoss_set"

///|
/// Generated getter for `ImGuiIO.ConfigDebugIniSettings`.
pub extern "C" fn im_gui_io_field_get_config_debug_ini_settings(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_ConfigDebugIniSettings_get"

///|
/// Generated setter for `ImGuiIO.ConfigDebugIniSettings`.
pub extern "C" fn im_gui_io_field_set_config_debug_ini_settings(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ConfigDebugIniSettings_set"

///|
/// Generated getter for `ImGuiIO.BackendPlatformName`.
pub extern "C" fn im_gui_io_field_get_backend_platform_name(
  _self : ImGuiIO,
) -> CString = "moonbit_dcimgui_ImGuiIO_BackendPlatformName_get"

///|
/// Generated setter for `ImGuiIO.BackendPlatformName`.
pub extern "C" fn im_gui_io_field_set_backend_platform_name(
  _self : ImGuiIO,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImGuiIO_BackendPlatformName_set"

///|
/// Generated getter for `ImGuiIO.BackendRendererName`.
pub extern "C" fn im_gui_io_field_get_backend_renderer_name(
  _self : ImGuiIO,
) -> CString = "moonbit_dcimgui_ImGuiIO_BackendRendererName_get"

///|
/// Generated setter for `ImGuiIO.BackendRendererName`.
pub extern "C" fn im_gui_io_field_set_backend_renderer_name(
  _self : ImGuiIO,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImGuiIO_BackendRendererName_set"

///|
/// Generated getter for `ImGuiIO.BackendPlatformUserData`.
pub extern "C" fn im_gui_io_field_get_backend_platform_user_data(
  _self : ImGuiIO,
) -> VoidPtr = "moonbit_dcimgui_ImGuiIO_BackendPlatformUserData_get"

///|
/// Generated setter for `ImGuiIO.BackendPlatformUserData`.
pub extern "C" fn im_gui_io_field_set_backend_platform_user_data(
  _self : ImGuiIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiIO_BackendPlatformUserData_set"

///|
/// Generated getter for `ImGuiIO.BackendRendererUserData`.
pub extern "C" fn im_gui_io_field_get_backend_renderer_user_data(
  _self : ImGuiIO,
) -> VoidPtr = "moonbit_dcimgui_ImGuiIO_BackendRendererUserData_get"

///|
/// Generated setter for `ImGuiIO.BackendRendererUserData`.
pub extern "C" fn im_gui_io_field_set_backend_renderer_user_data(
  _self : ImGuiIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiIO_BackendRendererUserData_set"

///|
/// Generated getter for `ImGuiIO.BackendLanguageUserData`.
pub extern "C" fn im_gui_io_field_get_backend_language_user_data(
  _self : ImGuiIO,
) -> VoidPtr = "moonbit_dcimgui_ImGuiIO_BackendLanguageUserData_get"

///|
/// Generated setter for `ImGuiIO.BackendLanguageUserData`.
pub extern "C" fn im_gui_io_field_set_backend_language_user_data(
  _self : ImGuiIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiIO_BackendLanguageUserData_set"

///|
/// Generated getter for `ImGuiIO.WantCaptureMouse`.
pub extern "C" fn im_gui_io_field_get_want_capture_mouse(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_WantCaptureMouse_get"

///|
/// Generated setter for `ImGuiIO.WantCaptureMouse`.
pub extern "C" fn im_gui_io_field_set_want_capture_mouse(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_WantCaptureMouse_set"

///|
/// Generated getter for `ImGuiIO.WantCaptureKeyboard`.
pub extern "C" fn im_gui_io_field_get_want_capture_keyboard(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_WantCaptureKeyboard_get"

///|
/// Generated setter for `ImGuiIO.WantCaptureKeyboard`.
pub extern "C" fn im_gui_io_field_set_want_capture_keyboard(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_WantCaptureKeyboard_set"

///|
/// Generated getter for `ImGuiIO.WantTextInput`.
pub extern "C" fn im_gui_io_field_get_want_text_input(_self : ImGuiIO) -> Bool = "moonbit_dcimgui_ImGuiIO_WantTextInput_get"

///|
/// Generated setter for `ImGuiIO.WantTextInput`.
pub extern "C" fn im_gui_io_field_set_want_text_input(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_WantTextInput_set"

///|
/// Generated getter for `ImGuiIO.WantSetMousePos`.
pub extern "C" fn im_gui_io_field_get_want_set_mouse_pos(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_WantSetMousePos_get"

///|
/// Generated setter for `ImGuiIO.WantSetMousePos`.
pub extern "C" fn im_gui_io_field_set_want_set_mouse_pos(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_WantSetMousePos_set"

///|
/// Generated getter for `ImGuiIO.WantSaveIniSettings`.
pub extern "C" fn im_gui_io_field_get_want_save_ini_settings(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_WantSaveIniSettings_get"

///|
/// Generated setter for `ImGuiIO.WantSaveIniSettings`.
pub extern "C" fn im_gui_io_field_set_want_save_ini_settings(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_WantSaveIniSettings_set"

///|
/// Generated getter for `ImGuiIO.NavActive`.
pub extern "C" fn im_gui_io_field_get_nav_active(_self : ImGuiIO) -> Bool = "moonbit_dcimgui_ImGuiIO_NavActive_get"

///|
/// Generated setter for `ImGuiIO.NavActive`.
pub extern "C" fn im_gui_io_field_set_nav_active(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_NavActive_set"

///|
/// Generated getter for `ImGuiIO.NavVisible`.
pub extern "C" fn im_gui_io_field_get_nav_visible(_self : ImGuiIO) -> Bool = "moonbit_dcimgui_ImGuiIO_NavVisible_get"

///|
/// Generated setter for `ImGuiIO.NavVisible`.
pub extern "C" fn im_gui_io_field_set_nav_visible(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_NavVisible_set"

///|
/// Generated getter for `ImGuiIO.Framerate`.
pub extern "C" fn im_gui_io_field_get_framerate(_self : ImGuiIO) -> Float = "moonbit_dcimgui_ImGuiIO_Framerate_get"

///|
/// Generated setter for `ImGuiIO.Framerate`.
pub extern "C" fn im_gui_io_field_set_framerate(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_Framerate_set"

///|
/// Generated getter for `ImGuiIO.MetricsRenderVertices`.
pub extern "C" fn im_gui_io_field_get_metrics_render_vertices(
  _self : ImGuiIO,
) -> Int = "moonbit_dcimgui_ImGuiIO_MetricsRenderVertices_get"

///|
/// Generated setter for `ImGuiIO.MetricsRenderVertices`.
pub extern "C" fn im_gui_io_field_set_metrics_render_vertices(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MetricsRenderVertices_set"

///|
/// Generated getter for `ImGuiIO.MetricsRenderIndices`.
pub extern "C" fn im_gui_io_field_get_metrics_render_indices(
  _self : ImGuiIO,
) -> Int = "moonbit_dcimgui_ImGuiIO_MetricsRenderIndices_get"

///|
/// Generated setter for `ImGuiIO.MetricsRenderIndices`.
pub extern "C" fn im_gui_io_field_set_metrics_render_indices(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MetricsRenderIndices_set"

///|
/// Generated getter for `ImGuiIO.MetricsRenderWindows`.
pub extern "C" fn im_gui_io_field_get_metrics_render_windows(
  _self : ImGuiIO,
) -> Int = "moonbit_dcimgui_ImGuiIO_MetricsRenderWindows_get"

///|
/// Generated setter for `ImGuiIO.MetricsRenderWindows`.
pub extern "C" fn im_gui_io_field_set_metrics_render_windows(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MetricsRenderWindows_set"

///|
/// Generated getter for `ImGuiIO.MetricsActiveWindows`.
pub extern "C" fn im_gui_io_field_get_metrics_active_windows(
  _self : ImGuiIO,
) -> Int = "moonbit_dcimgui_ImGuiIO_MetricsActiveWindows_get"

///|
/// Generated setter for `ImGuiIO.MetricsActiveWindows`.
pub extern "C" fn im_gui_io_field_set_metrics_active_windows(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MetricsActiveWindows_set"

///|
/// Generated getter for `ImGuiIO.MouseDelta`.
pub extern "C" fn im_gui_io_field_get_mouse_delta(_self : ImGuiIO) -> ImVec2 = "moonbit_dcimgui_ImGuiIO_MouseDelta_get"

///|
/// Generated setter for `ImGuiIO.MouseDelta`.
pub extern "C" fn im_gui_io_field_set_mouse_delta(
  _self : ImGuiIO,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseDelta_set"

///|
/// Generated getter for `ImGuiIO.Ctx`.
pub extern "C" fn im_gui_io_field_get_ctx(_self : ImGuiIO) -> ImGuiContext = "moonbit_dcimgui_ImGuiIO_Ctx_get"

///|
/// Generated setter for `ImGuiIO.Ctx`.
pub extern "C" fn im_gui_io_field_set_ctx(
  _self : ImGuiIO,
  _value : ImGuiContext,
) -> Unit = "moonbit_dcimgui_ImGuiIO_Ctx_set"

///|
/// Generated getter for `ImGuiIO.MousePos`.
pub extern "C" fn im_gui_io_field_get_mouse_pos(_self : ImGuiIO) -> ImVec2 = "moonbit_dcimgui_ImGuiIO_MousePos_get"

///|
/// Generated setter for `ImGuiIO.MousePos`.
pub extern "C" fn im_gui_io_field_set_mouse_pos(
  _self : ImGuiIO,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MousePos_set"

///|
/// Generated getter for `ImGuiIO.MouseDown`.
pub extern "C" fn im_gui_io_field_get_mouse_down(_self : ImGuiIO) -> BoolPtr = "moonbit_dcimgui_ImGuiIO_MouseDown_get"

///|
/// Generated getter for `ImGuiIO.MouseWheel`.
pub extern "C" fn im_gui_io_field_get_mouse_wheel(_self : ImGuiIO) -> Float = "moonbit_dcimgui_ImGuiIO_MouseWheel_get"

///|
/// Generated setter for `ImGuiIO.MouseWheel`.
pub extern "C" fn im_gui_io_field_set_mouse_wheel(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseWheel_set"

///|
/// Generated getter for `ImGuiIO.MouseWheelH`.
pub extern "C" fn im_gui_io_field_get_mouse_wheel_h(_self : ImGuiIO) -> Float = "moonbit_dcimgui_ImGuiIO_MouseWheelH_get"

///|
/// Generated setter for `ImGuiIO.MouseWheelH`.
pub extern "C" fn im_gui_io_field_set_mouse_wheel_h(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseWheelH_set"

///|
/// Generated getter for `ImGuiIO.MouseSource`.
pub extern "C" fn im_gui_io_field_get_mouse_source(_self : ImGuiIO) -> Int = "moonbit_dcimgui_ImGuiIO_MouseSource_get"

///|
/// Generated setter for `ImGuiIO.MouseSource`.
pub extern "C" fn im_gui_io_field_set_mouse_source(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseSource_set"

///|
/// Generated getter for `ImGuiIO.KeyCtrl`.
pub extern "C" fn im_gui_io_field_get_key_ctrl(_self : ImGuiIO) -> Bool = "moonbit_dcimgui_ImGuiIO_KeyCtrl_get"

///|
/// Generated setter for `ImGuiIO.KeyCtrl`.
pub extern "C" fn im_gui_io_field_set_key_ctrl(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_KeyCtrl_set"

///|
/// Generated getter for `ImGuiIO.KeyShift`.
pub extern "C" fn im_gui_io_field_get_key_shift(_self : ImGuiIO) -> Bool = "moonbit_dcimgui_ImGuiIO_KeyShift_get"

///|
/// Generated setter for `ImGuiIO.KeyShift`.
pub extern "C" fn im_gui_io_field_set_key_shift(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_KeyShift_set"

///|
/// Generated getter for `ImGuiIO.KeyAlt`.
pub extern "C" fn im_gui_io_field_get_key_alt(_self : ImGuiIO) -> Bool = "moonbit_dcimgui_ImGuiIO_KeyAlt_get"

///|
/// Generated setter for `ImGuiIO.KeyAlt`.
pub extern "C" fn im_gui_io_field_set_key_alt(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_KeyAlt_set"

///|
/// Generated getter for `ImGuiIO.KeySuper`.
pub extern "C" fn im_gui_io_field_get_key_super(_self : ImGuiIO) -> Bool = "moonbit_dcimgui_ImGuiIO_KeySuper_get"

///|
/// Generated setter for `ImGuiIO.KeySuper`.
pub extern "C" fn im_gui_io_field_set_key_super(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_KeySuper_set"

///|
/// Generated getter for `ImGuiIO.KeyMods`.
pub extern "C" fn im_gui_io_field_get_key_mods(_self : ImGuiIO) -> Int = "moonbit_dcimgui_ImGuiIO_KeyMods_get"

///|
/// Generated setter for `ImGuiIO.KeyMods`.
pub extern "C" fn im_gui_io_field_set_key_mods(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_KeyMods_set"

///|
/// Generated getter for `ImGuiIO.KeysData`.
pub extern "C" fn im_gui_io_field_get_keys_data(
  _self : ImGuiIO,
) -> ImGuiKeyData = "moonbit_dcimgui_ImGuiIO_KeysData_get"

///|
/// Generated getter for `ImGuiIO.WantCaptureMouseUnlessPopupClose`.
pub extern "C" fn im_gui_io_field_get_want_capture_mouse_unless_popup_close(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_WantCaptureMouseUnlessPopupClose_get"

///|
/// Generated setter for `ImGuiIO.WantCaptureMouseUnlessPopupClose`.
pub extern "C" fn im_gui_io_field_set_want_capture_mouse_unless_popup_close(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_WantCaptureMouseUnlessPopupClose_set"

///|
/// Generated getter for `ImGuiIO.MousePosPrev`.
pub extern "C" fn im_gui_io_field_get_mouse_pos_prev(_self : ImGuiIO) -> ImVec2 = "moonbit_dcimgui_ImGuiIO_MousePosPrev_get"

///|
/// Generated setter for `ImGuiIO.MousePosPrev`.
pub extern "C" fn im_gui_io_field_set_mouse_pos_prev(
  _self : ImGuiIO,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MousePosPrev_set"

///|
/// Generated getter for `ImGuiIO.MouseClickedPos`.
pub extern "C" fn im_gui_io_field_get_mouse_clicked_pos(
  _self : ImGuiIO,
) -> ImVec2 = "moonbit_dcimgui_ImGuiIO_MouseClickedPos_get"

///|
/// Generated getter for `ImGuiIO.MouseClickedTime`.
pub extern "C" fn im_gui_io_field_get_mouse_clicked_time(
  _self : ImGuiIO,
) -> DoublePtr = "moonbit_dcimgui_ImGuiIO_MouseClickedTime_get"

///|
/// Generated getter for `ImGuiIO.MouseClicked`.
pub extern "C" fn im_gui_io_field_get_mouse_clicked(_self : ImGuiIO) -> BoolPtr = "moonbit_dcimgui_ImGuiIO_MouseClicked_get"

///|
/// Generated getter for `ImGuiIO.MouseDoubleClicked`.
pub extern "C" fn im_gui_io_field_get_mouse_double_clicked(
  _self : ImGuiIO,
) -> BoolPtr = "moonbit_dcimgui_ImGuiIO_MouseDoubleClicked_get"

///|
/// Generated getter for `ImGuiIO.MouseClickedCount`.
pub extern "C" fn im_gui_io_field_get_mouse_clicked_count(
  _self : ImGuiIO,
) -> ImU16Ptr = "moonbit_dcimgui_ImGuiIO_MouseClickedCount_get"

///|
/// Generated getter for `ImGuiIO.MouseClickedLastCount`.
pub extern "C" fn im_gui_io_field_get_mouse_clicked_last_count(
  _self : ImGuiIO,
) -> ImU16Ptr = "moonbit_dcimgui_ImGuiIO_MouseClickedLastCount_get"

///|
/// Generated getter for `ImGuiIO.MouseReleased`.
pub extern "C" fn im_gui_io_field_get_mouse_released(
  _self : ImGuiIO,
) -> BoolPtr = "moonbit_dcimgui_ImGuiIO_MouseReleased_get"

///|
/// Generated getter for `ImGuiIO.MouseReleasedTime`.
pub extern "C" fn im_gui_io_field_get_mouse_released_time(
  _self : ImGuiIO,
) -> DoublePtr = "moonbit_dcimgui_ImGuiIO_MouseReleasedTime_get"

///|
/// Generated getter for `ImGuiIO.MouseDownOwned`.
pub extern "C" fn im_gui_io_field_get_mouse_down_owned(
  _self : ImGuiIO,
) -> BoolPtr = "moonbit_dcimgui_ImGuiIO_MouseDownOwned_get"

///|
/// Generated getter for `ImGuiIO.MouseDownOwnedUnlessPopupClose`.
pub extern "C" fn im_gui_io_field_get_mouse_down_owned_unless_popup_close(
  _self : ImGuiIO,
) -> BoolPtr = "moonbit_dcimgui_ImGuiIO_MouseDownOwnedUnlessPopupClose_get"

///|
/// Generated getter for `ImGuiIO.MouseWheelRequestAxisSwap`.
pub extern "C" fn im_gui_io_field_get_mouse_wheel_request_axis_swap(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_MouseWheelRequestAxisSwap_get"

///|
/// Generated setter for `ImGuiIO.MouseWheelRequestAxisSwap`.
pub extern "C" fn im_gui_io_field_set_mouse_wheel_request_axis_swap(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseWheelRequestAxisSwap_set"

///|
/// Generated getter for `ImGuiIO.MouseCtrlLeftAsRightClick`.
pub extern "C" fn im_gui_io_field_get_mouse_ctrl_left_as_right_click(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_MouseCtrlLeftAsRightClick_get"

///|
/// Generated setter for `ImGuiIO.MouseCtrlLeftAsRightClick`.
pub extern "C" fn im_gui_io_field_set_mouse_ctrl_left_as_right_click(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_MouseCtrlLeftAsRightClick_set"

///|
/// Generated getter for `ImGuiIO.MouseDownDuration`.
pub extern "C" fn im_gui_io_field_get_mouse_down_duration(
  _self : ImGuiIO,
) -> FloatPtr = "moonbit_dcimgui_ImGuiIO_MouseDownDuration_get"

///|
/// Generated getter for `ImGuiIO.MouseDownDurationPrev`.
pub extern "C" fn im_gui_io_field_get_mouse_down_duration_prev(
  _self : ImGuiIO,
) -> FloatPtr = "moonbit_dcimgui_ImGuiIO_MouseDownDurationPrev_get"

///|
/// Generated getter for `ImGuiIO.MouseDragMaxDistanceSqr`.
pub extern "C" fn im_gui_io_field_get_mouse_drag_max_distance_sqr(
  _self : ImGuiIO,
) -> FloatPtr = "moonbit_dcimgui_ImGuiIO_MouseDragMaxDistanceSqr_get"

///|
/// Generated getter for `ImGuiIO.PenPressure`.
pub extern "C" fn im_gui_io_field_get_pen_pressure(_self : ImGuiIO) -> Float = "moonbit_dcimgui_ImGuiIO_PenPressure_get"

///|
/// Generated setter for `ImGuiIO.PenPressure`.
pub extern "C" fn im_gui_io_field_set_pen_pressure(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_PenPressure_set"

///|
/// Generated getter for `ImGuiIO.AppFocusLost`.
pub extern "C" fn im_gui_io_field_get_app_focus_lost(_self : ImGuiIO) -> Bool = "moonbit_dcimgui_ImGuiIO_AppFocusLost_get"

///|
/// Generated setter for `ImGuiIO.AppFocusLost`.
pub extern "C" fn im_gui_io_field_set_app_focus_lost(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_AppFocusLost_set"

///|
/// Generated getter for `ImGuiIO.AppAcceptingEvents`.
pub extern "C" fn im_gui_io_field_get_app_accepting_events(
  _self : ImGuiIO,
) -> Bool = "moonbit_dcimgui_ImGuiIO_AppAcceptingEvents_get"

///|
/// Generated setter for `ImGuiIO.AppAcceptingEvents`.
pub extern "C" fn im_gui_io_field_set_app_accepting_events(
  _self : ImGuiIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiIO_AppAcceptingEvents_set"

///|
/// Generated getter for `ImGuiIO.InputQueueSurrogate`.
pub extern "C" fn im_gui_io_field_get_input_queue_surrogate(
  _self : ImGuiIO,
) -> Int = "moonbit_dcimgui_ImGuiIO_InputQueueSurrogate_get"

///|
/// Generated setter for `ImGuiIO.InputQueueSurrogate`.
pub extern "C" fn im_gui_io_field_set_input_queue_surrogate(
  _self : ImGuiIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiIO_InputQueueSurrogate_set"

///|
/// Generated getter for `ImGuiIO.InputQueueCharacters`.
pub extern "C" fn im_gui_io_field_get_input_queue_characters(
  _self : ImGuiIO,
) -> ImVector_ImWchar = "moonbit_dcimgui_ImGuiIO_InputQueueCharacters_get"

///|
/// Generated setter for `ImGuiIO.InputQueueCharacters`.
pub extern "C" fn im_gui_io_field_set_input_queue_characters(
  _self : ImGuiIO,
  _value : ImVector_ImWchar,
) -> Unit = "moonbit_dcimgui_ImGuiIO_InputQueueCharacters_set"

///|
/// Generated getter for `ImGuiIO.FontGlobalScale`.
pub extern "C" fn im_gui_io_field_get_font_global_scale(
  _self : ImGuiIO,
) -> Float = "moonbit_dcimgui_ImGuiIO_FontGlobalScale_get"

///|
/// Generated setter for `ImGuiIO.FontGlobalScale`.
pub extern "C" fn im_gui_io_field_set_font_global_scale(
  _self : ImGuiIO,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiIO_FontGlobalScale_set"

///|
/// Generated getter for `ImGuiIO.GetClipboardTextFn`.
pub extern "C" fn im_gui_io_field_get_get_clipboard_text_fn(
  _self : ImGuiIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiIO_GetClipboardTextFn_get"

///|
/// Generated getter for `ImGuiIO.SetClipboardTextFn`.
pub extern "C" fn im_gui_io_field_get_set_clipboard_text_fn(
  _self : ImGuiIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiIO_SetClipboardTextFn_get"

///|
/// Generated getter for `ImGuiIO.ClipboardUserData`.
pub extern "C" fn im_gui_io_field_get_clipboard_user_data(
  _self : ImGuiIO,
) -> VoidPtr = "moonbit_dcimgui_ImGuiIO_ClipboardUserData_get"

///|
/// Generated setter for `ImGuiIO.ClipboardUserData`.
pub extern "C" fn im_gui_io_field_set_clipboard_user_data(
  _self : ImGuiIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiIO_ClipboardUserData_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.Ctx`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_ctx(
  _self : ImGuiInputTextCallbackData,
) -> ImGuiContext = "moonbit_dcimgui_ImGuiInputTextCallbackData_Ctx_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.Ctx`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_ctx(
  _self : ImGuiInputTextCallbackData,
  _value : ImGuiContext,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_Ctx_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.EventFlag`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_event_flag(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_EventFlag_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.EventFlag`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_event_flag(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_EventFlag_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.Flags`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_flags(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_Flags_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.Flags`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_flags(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_Flags_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.UserData`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_user_data(
  _self : ImGuiInputTextCallbackData,
) -> VoidPtr = "moonbit_dcimgui_ImGuiInputTextCallbackData_UserData_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.UserData`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_user_data(
  _self : ImGuiInputTextCallbackData,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_UserData_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.ID`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_id(
  _self : ImGuiInputTextCallbackData,
) -> UInt = "moonbit_dcimgui_ImGuiInputTextCallbackData_ID_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.ID`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_id(
  _self : ImGuiInputTextCallbackData,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_ID_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.EventKey`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_event_key(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_EventKey_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.EventKey`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_event_key(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_EventKey_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.EventChar`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_event_char(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_EventChar_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.EventChar`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_event_char(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_EventChar_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.EventActivated`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_event_activated(
  _self : ImGuiInputTextCallbackData,
) -> Bool = "moonbit_dcimgui_ImGuiInputTextCallbackData_EventActivated_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.EventActivated`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_event_activated(
  _self : ImGuiInputTextCallbackData,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_EventActivated_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.BufDirty`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_buf_dirty(
  _self : ImGuiInputTextCallbackData,
) -> Bool = "moonbit_dcimgui_ImGuiInputTextCallbackData_BufDirty_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.BufDirty`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_buf_dirty(
  _self : ImGuiInputTextCallbackData,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_BufDirty_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.Buf`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_buf(
  _self : ImGuiInputTextCallbackData,
) -> CString = "moonbit_dcimgui_ImGuiInputTextCallbackData_Buf_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.Buf`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_buf(
  _self : ImGuiInputTextCallbackData,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_Buf_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.BufTextLen`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_buf_text_len(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_BufTextLen_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.BufTextLen`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_buf_text_len(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_BufTextLen_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.BufSize`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_buf_size(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_BufSize_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.BufSize`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_buf_size(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_BufSize_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.CursorPos`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_cursor_pos(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_CursorPos_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.CursorPos`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_cursor_pos(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_CursorPos_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.SelectionStart`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_selection_start(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_SelectionStart_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.SelectionStart`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_selection_start(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_SelectionStart_set"

///|
/// Generated getter for `ImGuiInputTextCallbackData.SelectionEnd`.
pub extern "C" fn im_gui_input_text_callback_data_field_get_selection_end(
  _self : ImGuiInputTextCallbackData,
) -> Int = "moonbit_dcimgui_ImGuiInputTextCallbackData_SelectionEnd_get"

///|
/// Generated setter for `ImGuiInputTextCallbackData.SelectionEnd`.
pub extern "C" fn im_gui_input_text_callback_data_field_set_selection_end(
  _self : ImGuiInputTextCallbackData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiInputTextCallbackData_SelectionEnd_set"

///|
/// Generated getter for `ImGuiSizeCallbackData.UserData`.
pub extern "C" fn im_gui_size_callback_data_field_get_user_data(
  _self : ImGuiSizeCallbackData,
) -> VoidPtr = "moonbit_dcimgui_ImGuiSizeCallbackData_UserData_get"

///|
/// Generated setter for `ImGuiSizeCallbackData.UserData`.
pub extern "C" fn im_gui_size_callback_data_field_set_user_data(
  _self : ImGuiSizeCallbackData,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiSizeCallbackData_UserData_set"

///|
/// Generated getter for `ImGuiSizeCallbackData.Pos`.
pub extern "C" fn im_gui_size_callback_data_field_get_pos(
  _self : ImGuiSizeCallbackData,
) -> ImVec2 = "moonbit_dcimgui_ImGuiSizeCallbackData_Pos_get"

///|
/// Generated setter for `ImGuiSizeCallbackData.Pos`.
pub extern "C" fn im_gui_size_callback_data_field_set_pos(
  _self : ImGuiSizeCallbackData,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiSizeCallbackData_Pos_set"

///|
/// Generated getter for `ImGuiSizeCallbackData.CurrentSize`.
pub extern "C" fn im_gui_size_callback_data_field_get_current_size(
  _self : ImGuiSizeCallbackData,
) -> ImVec2 = "moonbit_dcimgui_ImGuiSizeCallbackData_CurrentSize_get"

///|
/// Generated setter for `ImGuiSizeCallbackData.CurrentSize`.
pub extern "C" fn im_gui_size_callback_data_field_set_current_size(
  _self : ImGuiSizeCallbackData,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiSizeCallbackData_CurrentSize_set"

///|
/// Generated getter for `ImGuiSizeCallbackData.DesiredSize`.
pub extern "C" fn im_gui_size_callback_data_field_get_desired_size(
  _self : ImGuiSizeCallbackData,
) -> ImVec2 = "moonbit_dcimgui_ImGuiSizeCallbackData_DesiredSize_get"

///|
/// Generated setter for `ImGuiSizeCallbackData.DesiredSize`.
pub extern "C" fn im_gui_size_callback_data_field_set_desired_size(
  _self : ImGuiSizeCallbackData,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiSizeCallbackData_DesiredSize_set"

///|
/// Generated getter for `ImGuiPayload.Data`.
pub extern "C" fn im_gui_payload_field_get_data(
  _self : ImGuiPayload,
) -> VoidPtr = "moonbit_dcimgui_ImGuiPayload_Data_get"

///|
/// Generated setter for `ImGuiPayload.Data`.
pub extern "C" fn im_gui_payload_field_set_data(
  _self : ImGuiPayload,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiPayload_Data_set"

///|
/// Generated getter for `ImGuiPayload.DataSize`.
pub extern "C" fn im_gui_payload_field_get_data_size(
  _self : ImGuiPayload,
) -> Int = "moonbit_dcimgui_ImGuiPayload_DataSize_get"

///|
/// Generated setter for `ImGuiPayload.DataSize`.
pub extern "C" fn im_gui_payload_field_set_data_size(
  _self : ImGuiPayload,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiPayload_DataSize_set"

///|
/// Generated getter for `ImGuiPayload.SourceId`.
pub extern "C" fn im_gui_payload_field_get_source_id(
  _self : ImGuiPayload,
) -> UInt = "moonbit_dcimgui_ImGuiPayload_SourceId_get"

///|
/// Generated setter for `ImGuiPayload.SourceId`.
pub extern "C" fn im_gui_payload_field_set_source_id(
  _self : ImGuiPayload,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImGuiPayload_SourceId_set"

///|
/// Generated getter for `ImGuiPayload.SourceParentId`.
pub extern "C" fn im_gui_payload_field_get_source_parent_id(
  _self : ImGuiPayload,
) -> UInt = "moonbit_dcimgui_ImGuiPayload_SourceParentId_get"

///|
/// Generated setter for `ImGuiPayload.SourceParentId`.
pub extern "C" fn im_gui_payload_field_set_source_parent_id(
  _self : ImGuiPayload,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImGuiPayload_SourceParentId_set"

///|
/// Generated getter for `ImGuiPayload.DataFrameCount`.
pub extern "C" fn im_gui_payload_field_get_data_frame_count(
  _self : ImGuiPayload,
) -> Int = "moonbit_dcimgui_ImGuiPayload_DataFrameCount_get"

///|
/// Generated setter for `ImGuiPayload.DataFrameCount`.
pub extern "C" fn im_gui_payload_field_set_data_frame_count(
  _self : ImGuiPayload,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiPayload_DataFrameCount_set"

///|
/// Generated getter for `ImGuiPayload.DataType`.
pub extern "C" fn im_gui_payload_field_get_data_type(
  _self : ImGuiPayload,
) -> CString = "moonbit_dcimgui_ImGuiPayload_DataType_get"

///|
/// Generated getter for `ImGuiPayload.Preview`.
pub extern "C" fn im_gui_payload_field_get_preview(
  _self : ImGuiPayload,
) -> Bool = "moonbit_dcimgui_ImGuiPayload_Preview_get"

///|
/// Generated setter for `ImGuiPayload.Preview`.
pub extern "C" fn im_gui_payload_field_set_preview(
  _self : ImGuiPayload,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiPayload_Preview_set"

///|
/// Generated getter for `ImGuiPayload.Delivery`.
pub extern "C" fn im_gui_payload_field_get_delivery(
  _self : ImGuiPayload,
) -> Bool = "moonbit_dcimgui_ImGuiPayload_Delivery_get"

///|
/// Generated setter for `ImGuiPayload.Delivery`.
pub extern "C" fn im_gui_payload_field_set_delivery(
  _self : ImGuiPayload,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiPayload_Delivery_set"

///|
/// Generated getter for `ImGuiTextFilter_ImGuiTextRange.b`.
pub extern "C" fn im_gui_text_filter_im_gui_text_range_field_get_b(
  _self : ImGuiTextFilter_ImGuiTextRange,
) -> CString = "moonbit_dcimgui_ImGuiTextFilter_ImGuiTextRange_b_get"

///|
/// Generated setter for `ImGuiTextFilter_ImGuiTextRange.b`.
pub extern "C" fn im_gui_text_filter_im_gui_text_range_field_set_b(
  _self : ImGuiTextFilter_ImGuiTextRange,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImGuiTextFilter_ImGuiTextRange_b_set"

///|
/// Generated getter for `ImGuiTextFilter_ImGuiTextRange.e`.
pub extern "C" fn im_gui_text_filter_im_gui_text_range_field_get_e(
  _self : ImGuiTextFilter_ImGuiTextRange,
) -> CString = "moonbit_dcimgui_ImGuiTextFilter_ImGuiTextRange_e_get"

///|
/// Generated setter for `ImGuiTextFilter_ImGuiTextRange.e`.
pub extern "C" fn im_gui_text_filter_im_gui_text_range_field_set_e(
  _self : ImGuiTextFilter_ImGuiTextRange,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImGuiTextFilter_ImGuiTextRange_e_set"

///|
/// Generated getter for `ImGuiTextFilter.InputBuf`.
pub extern "C" fn im_gui_text_filter_field_get_input_buf(
  _self : ImGuiTextFilter,
) -> CString = "moonbit_dcimgui_ImGuiTextFilter_InputBuf_get"

///|
/// Generated getter for `ImGuiTextFilter.Filters`.
pub extern "C" fn im_gui_text_filter_field_get_filters(
  _self : ImGuiTextFilter,
) -> ImVector_ImGuiTextRange = "moonbit_dcimgui_ImGuiTextFilter_Filters_get"

///|
/// Generated setter for `ImGuiTextFilter.Filters`.
pub extern "C" fn im_gui_text_filter_field_set_filters(
  _self : ImGuiTextFilter,
  _value : ImVector_ImGuiTextRange,
) -> Unit = "moonbit_dcimgui_ImGuiTextFilter_Filters_set"

///|
/// Generated getter for `ImGuiTextFilter.CountGrep`.
pub extern "C" fn im_gui_text_filter_field_get_count_grep(
  _self : ImGuiTextFilter,
) -> Int = "moonbit_dcimgui_ImGuiTextFilter_CountGrep_get"

///|
/// Generated setter for `ImGuiTextFilter.CountGrep`.
pub extern "C" fn im_gui_text_filter_field_set_count_grep(
  _self : ImGuiTextFilter,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiTextFilter_CountGrep_set"

///|
/// Generated getter for `ImGuiTextBuffer.Buf`.
pub extern "C" fn im_gui_text_buffer_field_get_buf(
  _self : ImGuiTextBuffer,
) -> ImVector_char = "moonbit_dcimgui_ImGuiTextBuffer_Buf_get"

///|
/// Generated setter for `ImGuiTextBuffer.Buf`.
pub extern "C" fn im_gui_text_buffer_field_set_buf(
  _self : ImGuiTextBuffer,
  _value : ImVector_char,
) -> Unit = "moonbit_dcimgui_ImGuiTextBuffer_Buf_set"

///|
/// Generated getter for `ImGuiStoragePair.key`.
pub extern "C" fn im_gui_storage_pair_field_get_key(
  _self : ImGuiStoragePair,
) -> UInt = "moonbit_dcimgui_ImGuiStoragePair_key_get"

///|
/// Generated setter for `ImGuiStoragePair.key`.
pub extern "C" fn im_gui_storage_pair_field_set_key(
  _self : ImGuiStoragePair,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImGuiStoragePair_key_set"

///|
/// Generated getter for `ImGuiStoragePair.val_i`.
pub extern "C" fn im_gui_storage_pair_field_get_val_i(
  _self : ImGuiStoragePair,
) -> Int = "moonbit_dcimgui_ImGuiStoragePair_val_i_get"

///|
/// Generated setter for `ImGuiStoragePair.val_i`.
pub extern "C" fn im_gui_storage_pair_field_set_val_i(
  _self : ImGuiStoragePair,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiStoragePair_val_i_set"

///|
/// Generated getter for `ImGuiStoragePair.val_f`.
pub extern "C" fn im_gui_storage_pair_field_get_val_f(
  _self : ImGuiStoragePair,
) -> Float = "moonbit_dcimgui_ImGuiStoragePair_val_f_get"

///|
/// Generated setter for `ImGuiStoragePair.val_f`.
pub extern "C" fn im_gui_storage_pair_field_set_val_f(
  _self : ImGuiStoragePair,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiStoragePair_val_f_set"

///|
/// Generated getter for `ImGuiStoragePair.val_p`.
pub extern "C" fn im_gui_storage_pair_field_get_val_p(
  _self : ImGuiStoragePair,
) -> VoidPtr = "moonbit_dcimgui_ImGuiStoragePair_val_p_get"

///|
/// Generated setter for `ImGuiStoragePair.val_p`.
pub extern "C" fn im_gui_storage_pair_field_set_val_p(
  _self : ImGuiStoragePair,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiStoragePair_val_p_set"

///|
/// Generated getter for `ImGuiStorage.Data`.
pub extern "C" fn im_gui_storage_field_get_data(
  _self : ImGuiStorage,
) -> ImVector_ImGuiStoragePair = "moonbit_dcimgui_ImGuiStorage_Data_get"

///|
/// Generated setter for `ImGuiStorage.Data`.
pub extern "C" fn im_gui_storage_field_set_data(
  _self : ImGuiStorage,
  _value : ImVector_ImGuiStoragePair,
) -> Unit = "moonbit_dcimgui_ImGuiStorage_Data_set"

///|
/// Generated getter for `ImGuiListClipper.DisplayStart`.
pub extern "C" fn im_gui_list_clipper_field_get_display_start(
  _self : ImGuiListClipper,
) -> Int = "moonbit_dcimgui_ImGuiListClipper_DisplayStart_get"

///|
/// Generated setter for `ImGuiListClipper.DisplayStart`.
pub extern "C" fn im_gui_list_clipper_field_set_display_start(
  _self : ImGuiListClipper,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_DisplayStart_set"

///|
/// Generated getter for `ImGuiListClipper.DisplayEnd`.
pub extern "C" fn im_gui_list_clipper_field_get_display_end(
  _self : ImGuiListClipper,
) -> Int = "moonbit_dcimgui_ImGuiListClipper_DisplayEnd_get"

///|
/// Generated setter for `ImGuiListClipper.DisplayEnd`.
pub extern "C" fn im_gui_list_clipper_field_set_display_end(
  _self : ImGuiListClipper,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_DisplayEnd_set"

///|
/// Generated getter for `ImGuiListClipper.UserIndex`.
pub extern "C" fn im_gui_list_clipper_field_get_user_index(
  _self : ImGuiListClipper,
) -> Int = "moonbit_dcimgui_ImGuiListClipper_UserIndex_get"

///|
/// Generated setter for `ImGuiListClipper.UserIndex`.
pub extern "C" fn im_gui_list_clipper_field_set_user_index(
  _self : ImGuiListClipper,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_UserIndex_set"

///|
/// Generated getter for `ImGuiListClipper.ItemsCount`.
pub extern "C" fn im_gui_list_clipper_field_get_items_count(
  _self : ImGuiListClipper,
) -> Int = "moonbit_dcimgui_ImGuiListClipper_ItemsCount_get"

///|
/// Generated setter for `ImGuiListClipper.ItemsCount`.
pub extern "C" fn im_gui_list_clipper_field_set_items_count(
  _self : ImGuiListClipper,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_ItemsCount_set"

///|
/// Generated getter for `ImGuiListClipper.ItemsHeight`.
pub extern "C" fn im_gui_list_clipper_field_get_items_height(
  _self : ImGuiListClipper,
) -> Float = "moonbit_dcimgui_ImGuiListClipper_ItemsHeight_get"

///|
/// Generated setter for `ImGuiListClipper.ItemsHeight`.
pub extern "C" fn im_gui_list_clipper_field_set_items_height(
  _self : ImGuiListClipper,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_ItemsHeight_set"

///|
/// Generated getter for `ImGuiListClipper.Flags`.
pub extern "C" fn im_gui_list_clipper_field_get_flags(
  _self : ImGuiListClipper,
) -> Int = "moonbit_dcimgui_ImGuiListClipper_Flags_get"

///|
/// Generated setter for `ImGuiListClipper.Flags`.
pub extern "C" fn im_gui_list_clipper_field_set_flags(
  _self : ImGuiListClipper,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_Flags_set"

///|
/// Generated getter for `ImGuiListClipper.StartPosY`.
pub extern "C" fn im_gui_list_clipper_field_get_start_pos_y(
  _self : ImGuiListClipper,
) -> Double = "moonbit_dcimgui_ImGuiListClipper_StartPosY_get"

///|
/// Generated setter for `ImGuiListClipper.StartPosY`.
pub extern "C" fn im_gui_list_clipper_field_set_start_pos_y(
  _self : ImGuiListClipper,
  _value : Double,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_StartPosY_set"

///|
/// Generated getter for `ImGuiListClipper.StartSeekOffsetY`.
pub extern "C" fn im_gui_list_clipper_field_get_start_seek_offset_y(
  _self : ImGuiListClipper,
) -> Double = "moonbit_dcimgui_ImGuiListClipper_StartSeekOffsetY_get"

///|
/// Generated setter for `ImGuiListClipper.StartSeekOffsetY`.
pub extern "C" fn im_gui_list_clipper_field_set_start_seek_offset_y(
  _self : ImGuiListClipper,
  _value : Double,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_StartSeekOffsetY_set"

///|
/// Generated getter for `ImGuiListClipper.Ctx`.
pub extern "C" fn im_gui_list_clipper_field_get_ctx(
  _self : ImGuiListClipper,
) -> ImGuiContext = "moonbit_dcimgui_ImGuiListClipper_Ctx_get"

///|
/// Generated setter for `ImGuiListClipper.Ctx`.
pub extern "C" fn im_gui_list_clipper_field_set_ctx(
  _self : ImGuiListClipper,
  _value : ImGuiContext,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_Ctx_set"

///|
/// Generated getter for `ImGuiListClipper.TempData`.
pub extern "C" fn im_gui_list_clipper_field_get_temp_data(
  _self : ImGuiListClipper,
) -> VoidPtr = "moonbit_dcimgui_ImGuiListClipper_TempData_get"

///|
/// Generated setter for `ImGuiListClipper.TempData`.
pub extern "C" fn im_gui_list_clipper_field_set_temp_data(
  _self : ImGuiListClipper,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiListClipper_TempData_set"

///|
/// Generated getter for `ImColor.Value`.
pub extern "C" fn im_color_field_get_value(_self : ImColor) -> ImVec4 = "moonbit_dcimgui_ImColor_Value_get"

///|
/// Generated setter for `ImColor.Value`.
pub extern "C" fn im_color_field_set_value(
  _self : ImColor,
  _value : ImVec4,
) -> Unit = "moonbit_dcimgui_ImColor_Value_set"

///|
/// Generated getter for `ImGuiMultiSelectIO.Requests`.
pub extern "C" fn im_gui_multi_select_io_field_get_requests(
  _self : ImGuiMultiSelectIO,
) -> ImVector_ImGuiSelectionRequest = "moonbit_dcimgui_ImGuiMultiSelectIO_Requests_get"

///|
/// Generated setter for `ImGuiMultiSelectIO.Requests`.
pub extern "C" fn im_gui_multi_select_io_field_set_requests(
  _self : ImGuiMultiSelectIO,
  _value : ImVector_ImGuiSelectionRequest,
) -> Unit = "moonbit_dcimgui_ImGuiMultiSelectIO_Requests_set"

///|
/// Generated getter for `ImGuiMultiSelectIO.RangeSrcItem`.
pub extern "C" fn im_gui_multi_select_io_field_get_range_src_item(
  _self : ImGuiMultiSelectIO,
) -> Int64 = "moonbit_dcimgui_ImGuiMultiSelectIO_RangeSrcItem_get"

///|
/// Generated setter for `ImGuiMultiSelectIO.RangeSrcItem`.
pub extern "C" fn im_gui_multi_select_io_field_set_range_src_item(
  _self : ImGuiMultiSelectIO,
  _value : Int64,
) -> Unit = "moonbit_dcimgui_ImGuiMultiSelectIO_RangeSrcItem_set"

///|
/// Generated getter for `ImGuiMultiSelectIO.NavIdItem`.
pub extern "C" fn im_gui_multi_select_io_field_get_nav_id_item(
  _self : ImGuiMultiSelectIO,
) -> Int64 = "moonbit_dcimgui_ImGuiMultiSelectIO_NavIdItem_get"

///|
/// Generated setter for `ImGuiMultiSelectIO.NavIdItem`.
pub extern "C" fn im_gui_multi_select_io_field_set_nav_id_item(
  _self : ImGuiMultiSelectIO,
  _value : Int64,
) -> Unit = "moonbit_dcimgui_ImGuiMultiSelectIO_NavIdItem_set"

///|
/// Generated getter for `ImGuiMultiSelectIO.NavIdSelected`.
pub extern "C" fn im_gui_multi_select_io_field_get_nav_id_selected(
  _self : ImGuiMultiSelectIO,
) -> Bool = "moonbit_dcimgui_ImGuiMultiSelectIO_NavIdSelected_get"

///|
/// Generated setter for `ImGuiMultiSelectIO.NavIdSelected`.
pub extern "C" fn im_gui_multi_select_io_field_set_nav_id_selected(
  _self : ImGuiMultiSelectIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiMultiSelectIO_NavIdSelected_set"

///|
/// Generated getter for `ImGuiMultiSelectIO.RangeSrcReset`.
pub extern "C" fn im_gui_multi_select_io_field_get_range_src_reset(
  _self : ImGuiMultiSelectIO,
) -> Bool = "moonbit_dcimgui_ImGuiMultiSelectIO_RangeSrcReset_get"

///|
/// Generated setter for `ImGuiMultiSelectIO.RangeSrcReset`.
pub extern "C" fn im_gui_multi_select_io_field_set_range_src_reset(
  _self : ImGuiMultiSelectIO,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiMultiSelectIO_RangeSrcReset_set"

///|
/// Generated getter for `ImGuiMultiSelectIO.ItemsCount`.
pub extern "C" fn im_gui_multi_select_io_field_get_items_count(
  _self : ImGuiMultiSelectIO,
) -> Int = "moonbit_dcimgui_ImGuiMultiSelectIO_ItemsCount_get"

///|
/// Generated setter for `ImGuiMultiSelectIO.ItemsCount`.
pub extern "C" fn im_gui_multi_select_io_field_set_items_count(
  _self : ImGuiMultiSelectIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiMultiSelectIO_ItemsCount_set"

///|
/// Generated getter for `ImGuiSelectionRequest.Type`.
pub extern "C" fn im_gui_selection_request_field_get_imgui_type(
  _self : ImGuiSelectionRequest,
) -> ImGuiSelectionRequestType = "moonbit_dcimgui_ImGuiSelectionRequest_Type_get"

///|
/// Generated setter for `ImGuiSelectionRequest.Type`.
pub extern "C" fn im_gui_selection_request_field_set_imgui_type(
  _self : ImGuiSelectionRequest,
  _value : ImGuiSelectionRequestType,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionRequest_Type_set"

///|
/// Generated getter for `ImGuiSelectionRequest.Selected`.
pub extern "C" fn im_gui_selection_request_field_get_selected(
  _self : ImGuiSelectionRequest,
) -> Bool = "moonbit_dcimgui_ImGuiSelectionRequest_Selected_get"

///|
/// Generated setter for `ImGuiSelectionRequest.Selected`.
pub extern "C" fn im_gui_selection_request_field_set_selected(
  _self : ImGuiSelectionRequest,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionRequest_Selected_set"

///|
/// Generated getter for `ImGuiSelectionRequest.RangeDirection`.
pub extern "C" fn im_gui_selection_request_field_get_range_direction(
  _self : ImGuiSelectionRequest,
) -> Int = "moonbit_dcimgui_ImGuiSelectionRequest_RangeDirection_get"

///|
/// Generated setter for `ImGuiSelectionRequest.RangeDirection`.
pub extern "C" fn im_gui_selection_request_field_set_range_direction(
  _self : ImGuiSelectionRequest,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionRequest_RangeDirection_set"

///|
/// Generated getter for `ImGuiSelectionRequest.RangeFirstItem`.
pub extern "C" fn im_gui_selection_request_field_get_range_first_item(
  _self : ImGuiSelectionRequest,
) -> Int64 = "moonbit_dcimgui_ImGuiSelectionRequest_RangeFirstItem_get"

///|
/// Generated setter for `ImGuiSelectionRequest.RangeFirstItem`.
pub extern "C" fn im_gui_selection_request_field_set_range_first_item(
  _self : ImGuiSelectionRequest,
  _value : Int64,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionRequest_RangeFirstItem_set"

///|
/// Generated getter for `ImGuiSelectionRequest.RangeLastItem`.
pub extern "C" fn im_gui_selection_request_field_get_range_last_item(
  _self : ImGuiSelectionRequest,
) -> Int64 = "moonbit_dcimgui_ImGuiSelectionRequest_RangeLastItem_get"

///|
/// Generated setter for `ImGuiSelectionRequest.RangeLastItem`.
pub extern "C" fn im_gui_selection_request_field_set_range_last_item(
  _self : ImGuiSelectionRequest,
  _value : Int64,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionRequest_RangeLastItem_set"

///|
/// Generated getter for `ImGuiSelectionBasicStorage.Size`.
pub extern "C" fn im_gui_selection_basic_storage_field_get_size(
  _self : ImGuiSelectionBasicStorage,
) -> Int = "moonbit_dcimgui_ImGuiSelectionBasicStorage_Size_get"

///|
/// Generated setter for `ImGuiSelectionBasicStorage.Size`.
pub extern "C" fn im_gui_selection_basic_storage_field_set_size(
  _self : ImGuiSelectionBasicStorage,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionBasicStorage_Size_set"

///|
/// Generated getter for `ImGuiSelectionBasicStorage.PreserveOrder`.
pub extern "C" fn im_gui_selection_basic_storage_field_get_preserve_order(
  _self : ImGuiSelectionBasicStorage,
) -> Bool = "moonbit_dcimgui_ImGuiSelectionBasicStorage_PreserveOrder_get"

///|
/// Generated setter for `ImGuiSelectionBasicStorage.PreserveOrder`.
pub extern "C" fn im_gui_selection_basic_storage_field_set_preserve_order(
  _self : ImGuiSelectionBasicStorage,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionBasicStorage_PreserveOrder_set"

///|
/// Generated getter for `ImGuiSelectionBasicStorage.UserData`.
pub extern "C" fn im_gui_selection_basic_storage_field_get_user_data(
  _self : ImGuiSelectionBasicStorage,
) -> VoidPtr = "moonbit_dcimgui_ImGuiSelectionBasicStorage_UserData_get"

///|
/// Generated setter for `ImGuiSelectionBasicStorage.UserData`.
pub extern "C" fn im_gui_selection_basic_storage_field_set_user_data(
  _self : ImGuiSelectionBasicStorage,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionBasicStorage_UserData_set"

///|
/// Generated getter for `ImGuiSelectionBasicStorage.AdapterIndexToStorageId`.
pub extern "C" fn im_gui_selection_basic_storage_field_get_adapter_index_to_storage_id(
  _self : ImGuiSelectionBasicStorage,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiSelectionBasicStorage_AdapterIndexToStorageId_get"

///|
/// Generated getter for `ImGuiSelectionBasicStorage._SelectionOrder`.
pub extern "C" fn im_gui_selection_basic_storage_field_get_selection_order(
  _self : ImGuiSelectionBasicStorage,
) -> Int = "moonbit_dcimgui_ImGuiSelectionBasicStorage__SelectionOrder_get"

///|
/// Generated setter for `ImGuiSelectionBasicStorage._SelectionOrder`.
pub extern "C" fn im_gui_selection_basic_storage_field_set_selection_order(
  _self : ImGuiSelectionBasicStorage,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionBasicStorage__SelectionOrder_set"

///|
/// Generated getter for `ImGuiSelectionBasicStorage._Storage`.
pub extern "C" fn im_gui_selection_basic_storage_field_get_storage(
  _self : ImGuiSelectionBasicStorage,
) -> ImGuiStorage = "moonbit_dcimgui_ImGuiSelectionBasicStorage__Storage_get"

///|
/// Generated setter for `ImGuiSelectionBasicStorage._Storage`.
pub extern "C" fn im_gui_selection_basic_storage_field_set_storage(
  _self : ImGuiSelectionBasicStorage,
  _value : ImGuiStorage,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionBasicStorage__Storage_set"

///|
/// Generated getter for `ImGuiSelectionExternalStorage.UserData`.
pub extern "C" fn im_gui_selection_external_storage_field_get_user_data(
  _self : ImGuiSelectionExternalStorage,
) -> VoidPtr = "moonbit_dcimgui_ImGuiSelectionExternalStorage_UserData_get"

///|
/// Generated setter for `ImGuiSelectionExternalStorage.UserData`.
pub extern "C" fn im_gui_selection_external_storage_field_set_user_data(
  _self : ImGuiSelectionExternalStorage,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiSelectionExternalStorage_UserData_set"

///|
/// Generated getter for `ImGuiSelectionExternalStorage.AdapterSetItemSelected`.
pub extern "C" fn im_gui_selection_external_storage_field_get_adapter_set_item_selected(
  _self : ImGuiSelectionExternalStorage,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiSelectionExternalStorage_AdapterSetItemSelected_get"

///|
/// Generated getter for `ImDrawCmd.ClipRect`.
pub extern "C" fn im_draw_cmd_field_get_clip_rect(_self : ImDrawCmd) -> ImVec4 = "moonbit_dcimgui_ImDrawCmd_ClipRect_get"

///|
/// Generated setter for `ImDrawCmd.ClipRect`.
pub extern "C" fn im_draw_cmd_field_set_clip_rect(
  _self : ImDrawCmd,
  _value : ImVec4,
) -> Unit = "moonbit_dcimgui_ImDrawCmd_ClipRect_set"

///|
/// Generated getter for `ImDrawCmd.TexRef`.
pub extern "C" fn im_draw_cmd_field_get_tex_ref(
  _self : ImDrawCmd,
) -> ImTextureRef = "moonbit_dcimgui_ImDrawCmd_TexRef_get"

///|
/// Generated setter for `ImDrawCmd.TexRef`.
pub extern "C" fn im_draw_cmd_field_set_tex_ref(
  _self : ImDrawCmd,
  _value : ImTextureRef,
) -> Unit = "moonbit_dcimgui_ImDrawCmd_TexRef_set"

///|
/// Generated getter for `ImDrawCmd.VtxOffset`.
pub extern "C" fn im_draw_cmd_field_get_vtx_offset(_self : ImDrawCmd) -> UInt = "moonbit_dcimgui_ImDrawCmd_VtxOffset_get"

///|
/// Generated setter for `ImDrawCmd.VtxOffset`.
pub extern "C" fn im_draw_cmd_field_set_vtx_offset(
  _self : ImDrawCmd,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImDrawCmd_VtxOffset_set"

///|
/// Generated getter for `ImDrawCmd.IdxOffset`.
pub extern "C" fn im_draw_cmd_field_get_idx_offset(_self : ImDrawCmd) -> UInt = "moonbit_dcimgui_ImDrawCmd_IdxOffset_get"

///|
/// Generated setter for `ImDrawCmd.IdxOffset`.
pub extern "C" fn im_draw_cmd_field_set_idx_offset(
  _self : ImDrawCmd,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImDrawCmd_IdxOffset_set"

///|
/// Generated getter for `ImDrawCmd.ElemCount`.
pub extern "C" fn im_draw_cmd_field_get_elem_count(_self : ImDrawCmd) -> UInt = "moonbit_dcimgui_ImDrawCmd_ElemCount_get"

///|
/// Generated setter for `ImDrawCmd.ElemCount`.
pub extern "C" fn im_draw_cmd_field_set_elem_count(
  _self : ImDrawCmd,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImDrawCmd_ElemCount_set"

///|
/// Generated getter for `ImDrawCmd.UserCallback`.
pub extern "C" fn im_draw_cmd_field_get_user_callback(
  _self : ImDrawCmd,
) -> FunctionPtr = "moonbit_dcimgui_ImDrawCmd_UserCallback_get"

///|
/// Generated getter for `ImDrawCmd.UserCallbackData`.
pub extern "C" fn im_draw_cmd_field_get_user_callback_data(
  _self : ImDrawCmd,
) -> VoidPtr = "moonbit_dcimgui_ImDrawCmd_UserCallbackData_get"

///|
/// Generated setter for `ImDrawCmd.UserCallbackData`.
pub extern "C" fn im_draw_cmd_field_set_user_callback_data(
  _self : ImDrawCmd,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImDrawCmd_UserCallbackData_set"

///|
/// Generated getter for `ImDrawCmd.UserCallbackDataSize`.
pub extern "C" fn im_draw_cmd_field_get_user_callback_data_size(
  _self : ImDrawCmd,
) -> Int = "moonbit_dcimgui_ImDrawCmd_UserCallbackDataSize_get"

///|
/// Generated setter for `ImDrawCmd.UserCallbackDataSize`.
pub extern "C" fn im_draw_cmd_field_set_user_callback_data_size(
  _self : ImDrawCmd,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImDrawCmd_UserCallbackDataSize_set"

///|
/// Generated getter for `ImDrawCmd.UserCallbackDataOffset`.
pub extern "C" fn im_draw_cmd_field_get_user_callback_data_offset(
  _self : ImDrawCmd,
) -> Int = "moonbit_dcimgui_ImDrawCmd_UserCallbackDataOffset_get"

///|
/// Generated setter for `ImDrawCmd.UserCallbackDataOffset`.
pub extern "C" fn im_draw_cmd_field_set_user_callback_data_offset(
  _self : ImDrawCmd,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImDrawCmd_UserCallbackDataOffset_set"

///|
/// Generated getter for `ImDrawVert.pos`.
pub extern "C" fn im_draw_vert_field_get_pos(_self : ImDrawVert) -> ImVec2 = "moonbit_dcimgui_ImDrawVert_pos_get"

///|
/// Generated setter for `ImDrawVert.pos`.
pub extern "C" fn im_draw_vert_field_set_pos(
  _self : ImDrawVert,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImDrawVert_pos_set"

///|
/// Generated getter for `ImDrawVert.uv`.
pub extern "C" fn im_draw_vert_field_get_uv(_self : ImDrawVert) -> ImVec2 = "moonbit_dcimgui_ImDrawVert_uv_get"

///|
/// Generated setter for `ImDrawVert.uv`.
pub extern "C" fn im_draw_vert_field_set_uv(
  _self : ImDrawVert,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImDrawVert_uv_set"

///|
/// Generated getter for `ImDrawVert.col`.
pub extern "C" fn im_draw_vert_field_get_col(_self : ImDrawVert) -> UInt = "moonbit_dcimgui_ImDrawVert_col_get"

///|
/// Generated setter for `ImDrawVert.col`.
pub extern "C" fn im_draw_vert_field_set_col(
  _self : ImDrawVert,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImDrawVert_col_set"

///|
/// Generated getter for `ImDrawCmdHeader.ClipRect`.
pub extern "C" fn im_draw_cmd_header_field_get_clip_rect(
  _self : ImDrawCmdHeader,
) -> ImVec4 = "moonbit_dcimgui_ImDrawCmdHeader_ClipRect_get"

///|
/// Generated setter for `ImDrawCmdHeader.ClipRect`.
pub extern "C" fn im_draw_cmd_header_field_set_clip_rect(
  _self : ImDrawCmdHeader,
  _value : ImVec4,
) -> Unit = "moonbit_dcimgui_ImDrawCmdHeader_ClipRect_set"

///|
/// Generated getter for `ImDrawCmdHeader.TexRef`.
pub extern "C" fn im_draw_cmd_header_field_get_tex_ref(
  _self : ImDrawCmdHeader,
) -> ImTextureRef = "moonbit_dcimgui_ImDrawCmdHeader_TexRef_get"

///|
/// Generated setter for `ImDrawCmdHeader.TexRef`.
pub extern "C" fn im_draw_cmd_header_field_set_tex_ref(
  _self : ImDrawCmdHeader,
  _value : ImTextureRef,
) -> Unit = "moonbit_dcimgui_ImDrawCmdHeader_TexRef_set"

///|
/// Generated getter for `ImDrawCmdHeader.VtxOffset`.
pub extern "C" fn im_draw_cmd_header_field_get_vtx_offset(
  _self : ImDrawCmdHeader,
) -> UInt = "moonbit_dcimgui_ImDrawCmdHeader_VtxOffset_get"

///|
/// Generated setter for `ImDrawCmdHeader.VtxOffset`.
pub extern "C" fn im_draw_cmd_header_field_set_vtx_offset(
  _self : ImDrawCmdHeader,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImDrawCmdHeader_VtxOffset_set"

///|
/// Generated getter for `ImDrawChannel._CmdBuffer`.
pub extern "C" fn im_draw_channel_field_get_cmd_buffer(
  _self : ImDrawChannel,
) -> ImVector_ImDrawCmd = "moonbit_dcimgui_ImDrawChannel__CmdBuffer_get"

///|
/// Generated setter for `ImDrawChannel._CmdBuffer`.
pub extern "C" fn im_draw_channel_field_set_cmd_buffer(
  _self : ImDrawChannel,
  _value : ImVector_ImDrawCmd,
) -> Unit = "moonbit_dcimgui_ImDrawChannel__CmdBuffer_set"

///|
/// Generated getter for `ImDrawChannel._IdxBuffer`.
pub extern "C" fn im_draw_channel_field_get_idx_buffer(
  _self : ImDrawChannel,
) -> ImVector_ImDrawIdx = "moonbit_dcimgui_ImDrawChannel__IdxBuffer_get"

///|
/// Generated setter for `ImDrawChannel._IdxBuffer`.
pub extern "C" fn im_draw_channel_field_set_idx_buffer(
  _self : ImDrawChannel,
  _value : ImVector_ImDrawIdx,
) -> Unit = "moonbit_dcimgui_ImDrawChannel__IdxBuffer_set"

///|
/// Generated getter for `ImDrawListSplitter._Current`.
pub extern "C" fn im_draw_list_splitter_field_get_current(
  _self : ImDrawListSplitter,
) -> Int = "moonbit_dcimgui_ImDrawListSplitter__Current_get"

///|
/// Generated setter for `ImDrawListSplitter._Current`.
pub extern "C" fn im_draw_list_splitter_field_set_current(
  _self : ImDrawListSplitter,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImDrawListSplitter__Current_set"

///|
/// Generated getter for `ImDrawListSplitter._Count`.
pub extern "C" fn im_draw_list_splitter_field_get_count(
  _self : ImDrawListSplitter,
) -> Int = "moonbit_dcimgui_ImDrawListSplitter__Count_get"

///|
/// Generated setter for `ImDrawListSplitter._Count`.
pub extern "C" fn im_draw_list_splitter_field_set_count(
  _self : ImDrawListSplitter,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImDrawListSplitter__Count_set"

///|
/// Generated getter for `ImDrawListSplitter._Channels`.
pub extern "C" fn im_draw_list_splitter_field_get_channels(
  _self : ImDrawListSplitter,
) -> ImVector_ImDrawChannel = "moonbit_dcimgui_ImDrawListSplitter__Channels_get"

///|
/// Generated setter for `ImDrawListSplitter._Channels`.
pub extern "C" fn im_draw_list_splitter_field_set_channels(
  _self : ImDrawListSplitter,
  _value : ImVector_ImDrawChannel,
) -> Unit = "moonbit_dcimgui_ImDrawListSplitter__Channels_set"

///|
/// Generated getter for `ImDrawList.CmdBuffer`.
pub extern "C" fn im_draw_list_field_get_cmd_buffer(
  _self : ImDrawList,
) -> ImVector_ImDrawCmd = "moonbit_dcimgui_ImDrawList_CmdBuffer_get"

///|
/// Generated setter for `ImDrawList.CmdBuffer`.
pub extern "C" fn im_draw_list_field_set_cmd_buffer(
  _self : ImDrawList,
  _value : ImVector_ImDrawCmd,
) -> Unit = "moonbit_dcimgui_ImDrawList_CmdBuffer_set"

///|
/// Generated getter for `ImDrawList.IdxBuffer`.
pub extern "C" fn im_draw_list_field_get_idx_buffer(
  _self : ImDrawList,
) -> ImVector_ImDrawIdx = "moonbit_dcimgui_ImDrawList_IdxBuffer_get"

///|
/// Generated setter for `ImDrawList.IdxBuffer`.
pub extern "C" fn im_draw_list_field_set_idx_buffer(
  _self : ImDrawList,
  _value : ImVector_ImDrawIdx,
) -> Unit = "moonbit_dcimgui_ImDrawList_IdxBuffer_set"

///|
/// Generated getter for `ImDrawList.VtxBuffer`.
pub extern "C" fn im_draw_list_field_get_vtx_buffer(
  _self : ImDrawList,
) -> ImVector_ImDrawVert = "moonbit_dcimgui_ImDrawList_VtxBuffer_get"

///|
/// Generated setter for `ImDrawList.VtxBuffer`.
pub extern "C" fn im_draw_list_field_set_vtx_buffer(
  _self : ImDrawList,
  _value : ImVector_ImDrawVert,
) -> Unit = "moonbit_dcimgui_ImDrawList_VtxBuffer_set"

///|
/// Generated getter for `ImDrawList.Flags`.
pub extern "C" fn im_draw_list_field_get_flags(_self : ImDrawList) -> Int = "moonbit_dcimgui_ImDrawList_Flags_get"

///|
/// Generated setter for `ImDrawList.Flags`.
pub extern "C" fn im_draw_list_field_set_flags(
  _self : ImDrawList,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImDrawList_Flags_set"

///|
/// Generated getter for `ImDrawList._VtxCurrentIdx`.
pub extern "C" fn im_draw_list_field_get_vtx_current_idx(
  _self : ImDrawList,
) -> UInt = "moonbit_dcimgui_ImDrawList__VtxCurrentIdx_get"

///|
/// Generated setter for `ImDrawList._VtxCurrentIdx`.
pub extern "C" fn im_draw_list_field_set_vtx_current_idx(
  _self : ImDrawList,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImDrawList__VtxCurrentIdx_set"

///|
/// Generated getter for `ImDrawList._Data`.
pub extern "C" fn im_draw_list_field_get_data(
  _self : ImDrawList,
) -> ImDrawListSharedData = "moonbit_dcimgui_ImDrawList__Data_get"

///|
/// Generated setter for `ImDrawList._Data`.
pub extern "C" fn im_draw_list_field_set_data(
  _self : ImDrawList,
  _value : ImDrawListSharedData,
) -> Unit = "moonbit_dcimgui_ImDrawList__Data_set"

///|
/// Generated getter for `ImDrawList._VtxWritePtr`.
pub extern "C" fn im_draw_list_field_get_vtx_write_ptr(
  _self : ImDrawList,
) -> ImDrawVert = "moonbit_dcimgui_ImDrawList__VtxWritePtr_get"

///|
/// Generated setter for `ImDrawList._VtxWritePtr`.
pub extern "C" fn im_draw_list_field_set_vtx_write_ptr(
  _self : ImDrawList,
  _value : ImDrawVert,
) -> Unit = "moonbit_dcimgui_ImDrawList__VtxWritePtr_set"

///|
/// Generated getter for `ImDrawList._IdxWritePtr`.
pub extern "C" fn im_draw_list_field_get_idx_write_ptr(
  _self : ImDrawList,
) -> ImDrawIdxPtr = "moonbit_dcimgui_ImDrawList__IdxWritePtr_get"

///|
/// Generated setter for `ImDrawList._IdxWritePtr`.
pub extern "C" fn im_draw_list_field_set_idx_write_ptr(
  _self : ImDrawList,
  _value : ImDrawIdxPtr,
) -> Unit = "moonbit_dcimgui_ImDrawList__IdxWritePtr_set"

///|
/// Generated getter for `ImDrawList._Path`.
pub extern "C" fn im_draw_list_field_get_path(
  _self : ImDrawList,
) -> ImVector_ImVec2 = "moonbit_dcimgui_ImDrawList__Path_get"

///|
/// Generated setter for `ImDrawList._Path`.
pub extern "C" fn im_draw_list_field_set_path(
  _self : ImDrawList,
  _value : ImVector_ImVec2,
) -> Unit = "moonbit_dcimgui_ImDrawList__Path_set"

///|
/// Generated getter for `ImDrawList._CmdHeader`.
pub extern "C" fn im_draw_list_field_get_cmd_header(
  _self : ImDrawList,
) -> ImDrawCmdHeader = "moonbit_dcimgui_ImDrawList__CmdHeader_get"

///|
/// Generated setter for `ImDrawList._CmdHeader`.
pub extern "C" fn im_draw_list_field_set_cmd_header(
  _self : ImDrawList,
  _value : ImDrawCmdHeader,
) -> Unit = "moonbit_dcimgui_ImDrawList__CmdHeader_set"

///|
/// Generated getter for `ImDrawList._Splitter`.
pub extern "C" fn im_draw_list_field_get_splitter(
  _self : ImDrawList,
) -> ImDrawListSplitter = "moonbit_dcimgui_ImDrawList__Splitter_get"

///|
/// Generated setter for `ImDrawList._Splitter`.
pub extern "C" fn im_draw_list_field_set_splitter(
  _self : ImDrawList,
  _value : ImDrawListSplitter,
) -> Unit = "moonbit_dcimgui_ImDrawList__Splitter_set"

///|
/// Generated getter for `ImDrawList._ClipRectStack`.
pub extern "C" fn im_draw_list_field_get_clip_rect_stack(
  _self : ImDrawList,
) -> ImVector_ImVec4 = "moonbit_dcimgui_ImDrawList__ClipRectStack_get"

///|
/// Generated setter for `ImDrawList._ClipRectStack`.
pub extern "C" fn im_draw_list_field_set_clip_rect_stack(
  _self : ImDrawList,
  _value : ImVector_ImVec4,
) -> Unit = "moonbit_dcimgui_ImDrawList__ClipRectStack_set"

///|
/// Generated getter for `ImDrawList._TextureStack`.
pub extern "C" fn im_draw_list_field_get_texture_stack(
  _self : ImDrawList,
) -> ImVector_ImTextureRef = "moonbit_dcimgui_ImDrawList__TextureStack_get"

///|
/// Generated setter for `ImDrawList._TextureStack`.
pub extern "C" fn im_draw_list_field_set_texture_stack(
  _self : ImDrawList,
  _value : ImVector_ImTextureRef,
) -> Unit = "moonbit_dcimgui_ImDrawList__TextureStack_set"

///|
/// Generated getter for `ImDrawList._CallbacksDataBuf`.
pub extern "C" fn im_draw_list_field_get_callbacks_data_buf(
  _self : ImDrawList,
) -> ImVector_ImU8 = "moonbit_dcimgui_ImDrawList__CallbacksDataBuf_get"

///|
/// Generated setter for `ImDrawList._CallbacksDataBuf`.
pub extern "C" fn im_draw_list_field_set_callbacks_data_buf(
  _self : ImDrawList,
  _value : ImVector_ImU8,
) -> Unit = "moonbit_dcimgui_ImDrawList__CallbacksDataBuf_set"

///|
/// Generated getter for `ImDrawList._FringeScale`.
pub extern "C" fn im_draw_list_field_get_fringe_scale(
  _self : ImDrawList,
) -> Float = "moonbit_dcimgui_ImDrawList__FringeScale_get"

///|
/// Generated setter for `ImDrawList._FringeScale`.
pub extern "C" fn im_draw_list_field_set_fringe_scale(
  _self : ImDrawList,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImDrawList__FringeScale_set"

///|
/// Generated getter for `ImDrawList._OwnerName`.
pub extern "C" fn im_draw_list_field_get_owner_name(
  _self : ImDrawList,
) -> CString = "moonbit_dcimgui_ImDrawList__OwnerName_get"

///|
/// Generated setter for `ImDrawList._OwnerName`.
pub extern "C" fn im_draw_list_field_set_owner_name(
  _self : ImDrawList,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImDrawList__OwnerName_set"

///|
/// Generated getter for `ImDrawData.Valid`.
pub extern "C" fn im_draw_data_field_get_valid(_self : ImDrawData) -> Bool = "moonbit_dcimgui_ImDrawData_Valid_get"

///|
/// Generated setter for `ImDrawData.Valid`.
pub extern "C" fn im_draw_data_field_set_valid(
  _self : ImDrawData,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImDrawData_Valid_set"

///|
/// Generated getter for `ImDrawData.CmdListsCount`.
pub extern "C" fn im_draw_data_field_get_cmd_lists_count(
  _self : ImDrawData,
) -> Int = "moonbit_dcimgui_ImDrawData_CmdListsCount_get"

///|
/// Generated setter for `ImDrawData.CmdListsCount`.
pub extern "C" fn im_draw_data_field_set_cmd_lists_count(
  _self : ImDrawData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImDrawData_CmdListsCount_set"

///|
/// Generated getter for `ImDrawData.TotalIdxCount`.
pub extern "C" fn im_draw_data_field_get_total_idx_count(
  _self : ImDrawData,
) -> Int = "moonbit_dcimgui_ImDrawData_TotalIdxCount_get"

///|
/// Generated setter for `ImDrawData.TotalIdxCount`.
pub extern "C" fn im_draw_data_field_set_total_idx_count(
  _self : ImDrawData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImDrawData_TotalIdxCount_set"

///|
/// Generated getter for `ImDrawData.TotalVtxCount`.
pub extern "C" fn im_draw_data_field_get_total_vtx_count(
  _self : ImDrawData,
) -> Int = "moonbit_dcimgui_ImDrawData_TotalVtxCount_get"

///|
/// Generated setter for `ImDrawData.TotalVtxCount`.
pub extern "C" fn im_draw_data_field_set_total_vtx_count(
  _self : ImDrawData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImDrawData_TotalVtxCount_set"

///|
/// Generated getter for `ImDrawData.CmdLists`.
pub extern "C" fn im_draw_data_field_get_cmd_lists(
  _self : ImDrawData,
) -> ImVector_ImDrawListPtr = "moonbit_dcimgui_ImDrawData_CmdLists_get"

///|
/// Generated setter for `ImDrawData.CmdLists`.
pub extern "C" fn im_draw_data_field_set_cmd_lists(
  _self : ImDrawData,
  _value : ImVector_ImDrawListPtr,
) -> Unit = "moonbit_dcimgui_ImDrawData_CmdLists_set"

///|
/// Generated getter for `ImDrawData.DisplayPos`.
pub extern "C" fn im_draw_data_field_get_display_pos(
  _self : ImDrawData,
) -> ImVec2 = "moonbit_dcimgui_ImDrawData_DisplayPos_get"

///|
/// Generated setter for `ImDrawData.DisplayPos`.
pub extern "C" fn im_draw_data_field_set_display_pos(
  _self : ImDrawData,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImDrawData_DisplayPos_set"

///|
/// Generated getter for `ImDrawData.DisplaySize`.
pub extern "C" fn im_draw_data_field_get_display_size(
  _self : ImDrawData,
) -> ImVec2 = "moonbit_dcimgui_ImDrawData_DisplaySize_get"

///|
/// Generated setter for `ImDrawData.DisplaySize`.
pub extern "C" fn im_draw_data_field_set_display_size(
  _self : ImDrawData,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImDrawData_DisplaySize_set"

///|
/// Generated getter for `ImDrawData.FramebufferScale`.
pub extern "C" fn im_draw_data_field_get_framebuffer_scale(
  _self : ImDrawData,
) -> ImVec2 = "moonbit_dcimgui_ImDrawData_FramebufferScale_get"

///|
/// Generated setter for `ImDrawData.FramebufferScale`.
pub extern "C" fn im_draw_data_field_set_framebuffer_scale(
  _self : ImDrawData,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImDrawData_FramebufferScale_set"

///|
/// Generated getter for `ImDrawData.OwnerViewport`.
pub extern "C" fn im_draw_data_field_get_owner_viewport(
  _self : ImDrawData,
) -> ImGuiViewport = "moonbit_dcimgui_ImDrawData_OwnerViewport_get"

///|
/// Generated setter for `ImDrawData.OwnerViewport`.
pub extern "C" fn im_draw_data_field_set_owner_viewport(
  _self : ImDrawData,
  _value : ImGuiViewport,
) -> Unit = "moonbit_dcimgui_ImDrawData_OwnerViewport_set"

///|
/// Generated getter for `ImDrawData.Textures`.
pub extern "C" fn im_draw_data_field_get_textures(
  _self : ImDrawData,
) -> ImVector_ImTextureDataPtr = "moonbit_dcimgui_ImDrawData_Textures_get"

///|
/// Generated setter for `ImDrawData.Textures`.
pub extern "C" fn im_draw_data_field_set_textures(
  _self : ImDrawData,
  _value : ImVector_ImTextureDataPtr,
) -> Unit = "moonbit_dcimgui_ImDrawData_Textures_set"

///|
/// Generated getter for `ImTextureRect.x`.
pub extern "C" fn im_texture_rect_field_get_x(_self : ImTextureRect) -> Int = "moonbit_dcimgui_ImTextureRect_x_get"

///|
/// Generated setter for `ImTextureRect.x`.
pub extern "C" fn im_texture_rect_field_set_x(
  _self : ImTextureRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureRect_x_set"

///|
/// Generated getter for `ImTextureRect.y`.
pub extern "C" fn im_texture_rect_field_get_y(_self : ImTextureRect) -> Int = "moonbit_dcimgui_ImTextureRect_y_get"

///|
/// Generated setter for `ImTextureRect.y`.
pub extern "C" fn im_texture_rect_field_set_y(
  _self : ImTextureRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureRect_y_set"

///|
/// Generated getter for `ImTextureRect.w`.
pub extern "C" fn im_texture_rect_field_get_w(_self : ImTextureRect) -> Int = "moonbit_dcimgui_ImTextureRect_w_get"

///|
/// Generated setter for `ImTextureRect.w`.
pub extern "C" fn im_texture_rect_field_set_w(
  _self : ImTextureRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureRect_w_set"

///|
/// Generated getter for `ImTextureRect.h`.
pub extern "C" fn im_texture_rect_field_get_h(_self : ImTextureRect) -> Int = "moonbit_dcimgui_ImTextureRect_h_get"

///|
/// Generated setter for `ImTextureRect.h`.
pub extern "C" fn im_texture_rect_field_set_h(
  _self : ImTextureRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureRect_h_set"

///|
/// Generated getter for `ImTextureData.UniqueID`.
pub extern "C" fn im_texture_data_field_get_unique_id(
  _self : ImTextureData,
) -> Int = "moonbit_dcimgui_ImTextureData_UniqueID_get"

///|
/// Generated setter for `ImTextureData.UniqueID`.
pub extern "C" fn im_texture_data_field_set_unique_id(
  _self : ImTextureData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureData_UniqueID_set"

///|
/// Generated getter for `ImTextureData.Status`.
pub extern "C" fn im_texture_data_field_get_status(
  _self : ImTextureData,
) -> ImTextureStatus = "moonbit_dcimgui_ImTextureData_Status_get"

///|
/// Generated setter for `ImTextureData.Status`.
pub extern "C" fn im_texture_data_field_set_status(
  _self : ImTextureData,
  _value : ImTextureStatus,
) -> Unit = "moonbit_dcimgui_ImTextureData_Status_set"

///|
/// Generated getter for `ImTextureData.BackendUserData`.
pub extern "C" fn im_texture_data_field_get_backend_user_data(
  _self : ImTextureData,
) -> VoidPtr = "moonbit_dcimgui_ImTextureData_BackendUserData_get"

///|
/// Generated setter for `ImTextureData.BackendUserData`.
pub extern "C" fn im_texture_data_field_set_backend_user_data(
  _self : ImTextureData,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImTextureData_BackendUserData_set"

///|
/// Generated getter for `ImTextureData.TexID`.
pub extern "C" fn im_texture_data_field_get_tex_id(
  _self : ImTextureData,
) -> UInt64 = "moonbit_dcimgui_ImTextureData_TexID_get"

///|
/// Generated setter for `ImTextureData.TexID`.
pub extern "C" fn im_texture_data_field_set_tex_id(
  _self : ImTextureData,
  _value : UInt64,
) -> Unit = "moonbit_dcimgui_ImTextureData_TexID_set"

///|
/// Generated getter for `ImTextureData.Format`.
pub extern "C" fn im_texture_data_field_get_format(
  _self : ImTextureData,
) -> ImTextureFormat = "moonbit_dcimgui_ImTextureData_Format_get"

///|
/// Generated setter for `ImTextureData.Format`.
pub extern "C" fn im_texture_data_field_set_format(
  _self : ImTextureData,
  _value : ImTextureFormat,
) -> Unit = "moonbit_dcimgui_ImTextureData_Format_set"

///|
/// Generated getter for `ImTextureData.Width`.
pub extern "C" fn im_texture_data_field_get_width(_self : ImTextureData) -> Int = "moonbit_dcimgui_ImTextureData_Width_get"

///|
/// Generated setter for `ImTextureData.Width`.
pub extern "C" fn im_texture_data_field_set_width(
  _self : ImTextureData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureData_Width_set"

///|
/// Generated getter for `ImTextureData.Height`.
pub extern "C" fn im_texture_data_field_get_height(
  _self : ImTextureData,
) -> Int = "moonbit_dcimgui_ImTextureData_Height_get"

///|
/// Generated setter for `ImTextureData.Height`.
pub extern "C" fn im_texture_data_field_set_height(
  _self : ImTextureData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureData_Height_set"

///|
/// Generated getter for `ImTextureData.BytesPerPixel`.
pub extern "C" fn im_texture_data_field_get_bytes_per_pixel(
  _self : ImTextureData,
) -> Int = "moonbit_dcimgui_ImTextureData_BytesPerPixel_get"

///|
/// Generated setter for `ImTextureData.BytesPerPixel`.
pub extern "C" fn im_texture_data_field_set_bytes_per_pixel(
  _self : ImTextureData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureData_BytesPerPixel_set"

///|
/// Generated getter for `ImTextureData.Pixels`.
pub extern "C" fn im_texture_data_field_get_pixels(
  _self : ImTextureData,
) -> IntPtr = "moonbit_dcimgui_ImTextureData_Pixels_get"

///|
/// Generated setter for `ImTextureData.Pixels`.
pub extern "C" fn im_texture_data_field_set_pixels(
  _self : ImTextureData,
  _value : IntPtr,
) -> Unit = "moonbit_dcimgui_ImTextureData_Pixels_set"

///|
/// Generated getter for `ImTextureData.UsedRect`.
pub extern "C" fn im_texture_data_field_get_used_rect(
  _self : ImTextureData,
) -> ImTextureRect = "moonbit_dcimgui_ImTextureData_UsedRect_get"

///|
/// Generated setter for `ImTextureData.UsedRect`.
pub extern "C" fn im_texture_data_field_set_used_rect(
  _self : ImTextureData,
  _value : ImTextureRect,
) -> Unit = "moonbit_dcimgui_ImTextureData_UsedRect_set"

///|
/// Generated getter for `ImTextureData.UpdateRect`.
pub extern "C" fn im_texture_data_field_get_update_rect(
  _self : ImTextureData,
) -> ImTextureRect = "moonbit_dcimgui_ImTextureData_UpdateRect_get"

///|
/// Generated setter for `ImTextureData.UpdateRect`.
pub extern "C" fn im_texture_data_field_set_update_rect(
  _self : ImTextureData,
  _value : ImTextureRect,
) -> Unit = "moonbit_dcimgui_ImTextureData_UpdateRect_set"

///|
/// Generated getter for `ImTextureData.Updates`.
pub extern "C" fn im_texture_data_field_get_updates(
  _self : ImTextureData,
) -> ImVector_ImTextureRect = "moonbit_dcimgui_ImTextureData_Updates_get"

///|
/// Generated setter for `ImTextureData.Updates`.
pub extern "C" fn im_texture_data_field_set_updates(
  _self : ImTextureData,
  _value : ImVector_ImTextureRect,
) -> Unit = "moonbit_dcimgui_ImTextureData_Updates_set"

///|
/// Generated getter for `ImTextureData.UnusedFrames`.
pub extern "C" fn im_texture_data_field_get_unused_frames(
  _self : ImTextureData,
) -> Int = "moonbit_dcimgui_ImTextureData_UnusedFrames_get"

///|
/// Generated setter for `ImTextureData.UnusedFrames`.
pub extern "C" fn im_texture_data_field_set_unused_frames(
  _self : ImTextureData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureData_UnusedFrames_set"

///|
/// Generated getter for `ImTextureData.RefCount`.
pub extern "C" fn im_texture_data_field_get_ref_count(
  _self : ImTextureData,
) -> Int = "moonbit_dcimgui_ImTextureData_RefCount_get"

///|
/// Generated setter for `ImTextureData.RefCount`.
pub extern "C" fn im_texture_data_field_set_ref_count(
  _self : ImTextureData,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImTextureData_RefCount_set"

///|
/// Generated getter for `ImTextureData.UseColors`.
pub extern "C" fn im_texture_data_field_get_use_colors(
  _self : ImTextureData,
) -> Bool = "moonbit_dcimgui_ImTextureData_UseColors_get"

///|
/// Generated setter for `ImTextureData.UseColors`.
pub extern "C" fn im_texture_data_field_set_use_colors(
  _self : ImTextureData,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImTextureData_UseColors_set"

///|
/// Generated getter for `ImTextureData.WantDestroyNextFrame`.
pub extern "C" fn im_texture_data_field_get_want_destroy_next_frame(
  _self : ImTextureData,
) -> Bool = "moonbit_dcimgui_ImTextureData_WantDestroyNextFrame_get"

///|
/// Generated setter for `ImTextureData.WantDestroyNextFrame`.
pub extern "C" fn im_texture_data_field_set_want_destroy_next_frame(
  _self : ImTextureData,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImTextureData_WantDestroyNextFrame_set"

///|
/// Generated getter for `ImFontConfig.Name`.
pub extern "C" fn im_font_config_field_get_name(
  _self : ImFontConfig,
) -> CString = "moonbit_dcimgui_ImFontConfig_Name_get"

///|
/// Generated getter for `ImFontConfig.FontData`.
pub extern "C" fn im_font_config_field_get_font_data(
  _self : ImFontConfig,
) -> VoidPtr = "moonbit_dcimgui_ImFontConfig_FontData_get"

///|
/// Generated setter for `ImFontConfig.FontData`.
pub extern "C" fn im_font_config_field_set_font_data(
  _self : ImFontConfig,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImFontConfig_FontData_set"

///|
/// Generated getter for `ImFontConfig.FontDataSize`.
pub extern "C" fn im_font_config_field_get_font_data_size(
  _self : ImFontConfig,
) -> Int = "moonbit_dcimgui_ImFontConfig_FontDataSize_get"

///|
/// Generated setter for `ImFontConfig.FontDataSize`.
pub extern "C" fn im_font_config_field_set_font_data_size(
  _self : ImFontConfig,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontConfig_FontDataSize_set"

///|
/// Generated getter for `ImFontConfig.FontDataOwnedByAtlas`.
pub extern "C" fn im_font_config_field_get_font_data_owned_by_atlas(
  _self : ImFontConfig,
) -> Bool = "moonbit_dcimgui_ImFontConfig_FontDataOwnedByAtlas_get"

///|
/// Generated setter for `ImFontConfig.FontDataOwnedByAtlas`.
pub extern "C" fn im_font_config_field_set_font_data_owned_by_atlas(
  _self : ImFontConfig,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFontConfig_FontDataOwnedByAtlas_set"

///|
/// Generated getter for `ImFontConfig.MergeMode`.
pub extern "C" fn im_font_config_field_get_merge_mode(
  _self : ImFontConfig,
) -> Bool = "moonbit_dcimgui_ImFontConfig_MergeMode_get"

///|
/// Generated setter for `ImFontConfig.MergeMode`.
pub extern "C" fn im_font_config_field_set_merge_mode(
  _self : ImFontConfig,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFontConfig_MergeMode_set"

///|
/// Generated getter for `ImFontConfig.PixelSnapH`.
pub extern "C" fn im_font_config_field_get_pixel_snap_h(
  _self : ImFontConfig,
) -> Bool = "moonbit_dcimgui_ImFontConfig_PixelSnapH_get"

///|
/// Generated setter for `ImFontConfig.PixelSnapH`.
pub extern "C" fn im_font_config_field_set_pixel_snap_h(
  _self : ImFontConfig,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFontConfig_PixelSnapH_set"

///|
/// Generated getter for `ImFontConfig.OversampleH`.
pub extern "C" fn im_font_config_field_get_oversample_h(
  _self : ImFontConfig,
) -> Int = "moonbit_dcimgui_ImFontConfig_OversampleH_get"

///|
/// Generated setter for `ImFontConfig.OversampleH`.
pub extern "C" fn im_font_config_field_set_oversample_h(
  _self : ImFontConfig,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontConfig_OversampleH_set"

///|
/// Generated getter for `ImFontConfig.OversampleV`.
pub extern "C" fn im_font_config_field_get_oversample_v(
  _self : ImFontConfig,
) -> Int = "moonbit_dcimgui_ImFontConfig_OversampleV_get"

///|
/// Generated setter for `ImFontConfig.OversampleV`.
pub extern "C" fn im_font_config_field_set_oversample_v(
  _self : ImFontConfig,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontConfig_OversampleV_set"

///|
/// Generated getter for `ImFontConfig.EllipsisChar`.
pub extern "C" fn im_font_config_field_get_ellipsis_char(
  _self : ImFontConfig,
) -> Int = "moonbit_dcimgui_ImFontConfig_EllipsisChar_get"

///|
/// Generated setter for `ImFontConfig.EllipsisChar`.
pub extern "C" fn im_font_config_field_set_ellipsis_char(
  _self : ImFontConfig,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontConfig_EllipsisChar_set"

///|
/// Generated getter for `ImFontConfig.SizePixels`.
pub extern "C" fn im_font_config_field_get_size_pixels(
  _self : ImFontConfig,
) -> Float = "moonbit_dcimgui_ImFontConfig_SizePixels_get"

///|
/// Generated setter for `ImFontConfig.SizePixels`.
pub extern "C" fn im_font_config_field_set_size_pixels(
  _self : ImFontConfig,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontConfig_SizePixels_set"

///|
/// Generated getter for `ImFontConfig.GlyphRanges`.
pub extern "C" fn im_font_config_field_get_glyph_ranges(
  _self : ImFontConfig,
) -> ImWcharPtr = "moonbit_dcimgui_ImFontConfig_GlyphRanges_get"

///|
/// Generated setter for `ImFontConfig.GlyphRanges`.
pub extern "C" fn im_font_config_field_set_glyph_ranges(
  _self : ImFontConfig,
  _value : ImWcharPtr,
) -> Unit = "moonbit_dcimgui_ImFontConfig_GlyphRanges_set"

///|
/// Generated getter for `ImFontConfig.GlyphExcludeRanges`.
pub extern "C" fn im_font_config_field_get_glyph_exclude_ranges(
  _self : ImFontConfig,
) -> ImWcharPtr = "moonbit_dcimgui_ImFontConfig_GlyphExcludeRanges_get"

///|
/// Generated setter for `ImFontConfig.GlyphExcludeRanges`.
pub extern "C" fn im_font_config_field_set_glyph_exclude_ranges(
  _self : ImFontConfig,
  _value : ImWcharPtr,
) -> Unit = "moonbit_dcimgui_ImFontConfig_GlyphExcludeRanges_set"

///|
/// Generated getter for `ImFontConfig.GlyphOffset`.
pub extern "C" fn im_font_config_field_get_glyph_offset(
  _self : ImFontConfig,
) -> ImVec2 = "moonbit_dcimgui_ImFontConfig_GlyphOffset_get"

///|
/// Generated setter for `ImFontConfig.GlyphOffset`.
pub extern "C" fn im_font_config_field_set_glyph_offset(
  _self : ImFontConfig,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImFontConfig_GlyphOffset_set"

///|
/// Generated getter for `ImFontConfig.GlyphMinAdvanceX`.
pub extern "C" fn im_font_config_field_get_glyph_min_advance_x(
  _self : ImFontConfig,
) -> Float = "moonbit_dcimgui_ImFontConfig_GlyphMinAdvanceX_get"

///|
/// Generated setter for `ImFontConfig.GlyphMinAdvanceX`.
pub extern "C" fn im_font_config_field_set_glyph_min_advance_x(
  _self : ImFontConfig,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontConfig_GlyphMinAdvanceX_set"

///|
/// Generated getter for `ImFontConfig.GlyphMaxAdvanceX`.
pub extern "C" fn im_font_config_field_get_glyph_max_advance_x(
  _self : ImFontConfig,
) -> Float = "moonbit_dcimgui_ImFontConfig_GlyphMaxAdvanceX_get"

///|
/// Generated setter for `ImFontConfig.GlyphMaxAdvanceX`.
pub extern "C" fn im_font_config_field_set_glyph_max_advance_x(
  _self : ImFontConfig,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontConfig_GlyphMaxAdvanceX_set"

///|
/// Generated getter for `ImFontConfig.GlyphExtraAdvanceX`.
pub extern "C" fn im_font_config_field_get_glyph_extra_advance_x(
  _self : ImFontConfig,
) -> Float = "moonbit_dcimgui_ImFontConfig_GlyphExtraAdvanceX_get"

///|
/// Generated setter for `ImFontConfig.GlyphExtraAdvanceX`.
pub extern "C" fn im_font_config_field_set_glyph_extra_advance_x(
  _self : ImFontConfig,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontConfig_GlyphExtraAdvanceX_set"

///|
/// Generated getter for `ImFontConfig.FontNo`.
pub extern "C" fn im_font_config_field_get_font_no(
  _self : ImFontConfig,
) -> UInt = "moonbit_dcimgui_ImFontConfig_FontNo_get"

///|
/// Generated setter for `ImFontConfig.FontNo`.
pub extern "C" fn im_font_config_field_set_font_no(
  _self : ImFontConfig,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontConfig_FontNo_set"

///|
/// Generated getter for `ImFontConfig.FontLoaderFlags`.
pub extern "C" fn im_font_config_field_get_font_loader_flags(
  _self : ImFontConfig,
) -> UInt = "moonbit_dcimgui_ImFontConfig_FontLoaderFlags_get"

///|
/// Generated setter for `ImFontConfig.FontLoaderFlags`.
pub extern "C" fn im_font_config_field_set_font_loader_flags(
  _self : ImFontConfig,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontConfig_FontLoaderFlags_set"

///|
/// Generated getter for `ImFontConfig.RasterizerMultiply`.
pub extern "C" fn im_font_config_field_get_rasterizer_multiply(
  _self : ImFontConfig,
) -> Float = "moonbit_dcimgui_ImFontConfig_RasterizerMultiply_get"

///|
/// Generated setter for `ImFontConfig.RasterizerMultiply`.
pub extern "C" fn im_font_config_field_set_rasterizer_multiply(
  _self : ImFontConfig,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontConfig_RasterizerMultiply_set"

///|
/// Generated getter for `ImFontConfig.RasterizerDensity`.
pub extern "C" fn im_font_config_field_get_rasterizer_density(
  _self : ImFontConfig,
) -> Float = "moonbit_dcimgui_ImFontConfig_RasterizerDensity_get"

///|
/// Generated setter for `ImFontConfig.RasterizerDensity`.
pub extern "C" fn im_font_config_field_set_rasterizer_density(
  _self : ImFontConfig,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontConfig_RasterizerDensity_set"

///|
/// Generated getter for `ImFontConfig.ExtraSizeScale`.
pub extern "C" fn im_font_config_field_get_extra_size_scale(
  _self : ImFontConfig,
) -> Float = "moonbit_dcimgui_ImFontConfig_ExtraSizeScale_get"

///|
/// Generated setter for `ImFontConfig.ExtraSizeScale`.
pub extern "C" fn im_font_config_field_set_extra_size_scale(
  _self : ImFontConfig,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontConfig_ExtraSizeScale_set"

///|
/// Generated getter for `ImFontConfig.Flags`.
pub extern "C" fn im_font_config_field_get_flags(_self : ImFontConfig) -> Int = "moonbit_dcimgui_ImFontConfig_Flags_get"

///|
/// Generated setter for `ImFontConfig.Flags`.
pub extern "C" fn im_font_config_field_set_flags(
  _self : ImFontConfig,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontConfig_Flags_set"

///|
/// Generated getter for `ImFontConfig.DstFont`.
pub extern "C" fn im_font_config_field_get_dst_font(
  _self : ImFontConfig,
) -> ImFont = "moonbit_dcimgui_ImFontConfig_DstFont_get"

///|
/// Generated setter for `ImFontConfig.DstFont`.
pub extern "C" fn im_font_config_field_set_dst_font(
  _self : ImFontConfig,
  _value : ImFont,
) -> Unit = "moonbit_dcimgui_ImFontConfig_DstFont_set"

///|
/// Generated getter for `ImFontConfig.FontLoader`.
pub extern "C" fn im_font_config_field_get_font_loader(
  _self : ImFontConfig,
) -> ImFontLoader = "moonbit_dcimgui_ImFontConfig_FontLoader_get"

///|
/// Generated setter for `ImFontConfig.FontLoader`.
pub extern "C" fn im_font_config_field_set_font_loader(
  _self : ImFontConfig,
  _value : ImFontLoader,
) -> Unit = "moonbit_dcimgui_ImFontConfig_FontLoader_set"

///|
/// Generated getter for `ImFontConfig.FontLoaderData`.
pub extern "C" fn im_font_config_field_get_font_loader_data(
  _self : ImFontConfig,
) -> VoidPtr = "moonbit_dcimgui_ImFontConfig_FontLoaderData_get"

///|
/// Generated setter for `ImFontConfig.FontLoaderData`.
pub extern "C" fn im_font_config_field_set_font_loader_data(
  _self : ImFontConfig,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImFontConfig_FontLoaderData_set"

///|
/// Generated getter for `ImFontConfig.PixelSnapV`.
pub extern "C" fn im_font_config_field_get_pixel_snap_v(
  _self : ImFontConfig,
) -> Bool = "moonbit_dcimgui_ImFontConfig_PixelSnapV_get"

///|
/// Generated setter for `ImFontConfig.PixelSnapV`.
pub extern "C" fn im_font_config_field_set_pixel_snap_v(
  _self : ImFontConfig,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFontConfig_PixelSnapV_set"

///|
/// Generated getter for `ImFontGlyph.Colored`.
pub extern "C" fn im_font_glyph_field_get_colored(_self : ImFontGlyph) -> UInt = "moonbit_dcimgui_ImFontGlyph_Colored_get"

///|
/// Generated setter for `ImFontGlyph.Colored`.
pub extern "C" fn im_font_glyph_field_set_colored(
  _self : ImFontGlyph,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_Colored_set"

///|
/// Generated getter for `ImFontGlyph.Visible`.
pub extern "C" fn im_font_glyph_field_get_visible(_self : ImFontGlyph) -> UInt = "moonbit_dcimgui_ImFontGlyph_Visible_get"

///|
/// Generated setter for `ImFontGlyph.Visible`.
pub extern "C" fn im_font_glyph_field_set_visible(
  _self : ImFontGlyph,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_Visible_set"

///|
/// Generated getter for `ImFontGlyph.SourceIdx`.
pub extern "C" fn im_font_glyph_field_get_source_idx(
  _self : ImFontGlyph,
) -> UInt = "moonbit_dcimgui_ImFontGlyph_SourceIdx_get"

///|
/// Generated setter for `ImFontGlyph.SourceIdx`.
pub extern "C" fn im_font_glyph_field_set_source_idx(
  _self : ImFontGlyph,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_SourceIdx_set"

///|
/// Generated getter for `ImFontGlyph.Codepoint`.
pub extern "C" fn im_font_glyph_field_get_codepoint(
  _self : ImFontGlyph,
) -> UInt = "moonbit_dcimgui_ImFontGlyph_Codepoint_get"

///|
/// Generated setter for `ImFontGlyph.Codepoint`.
pub extern "C" fn im_font_glyph_field_set_codepoint(
  _self : ImFontGlyph,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_Codepoint_set"

///|
/// Generated getter for `ImFontGlyph.AdvanceX`.
pub extern "C" fn im_font_glyph_field_get_advance_x(
  _self : ImFontGlyph,
) -> Float = "moonbit_dcimgui_ImFontGlyph_AdvanceX_get"

///|
/// Generated setter for `ImFontGlyph.AdvanceX`.
pub extern "C" fn im_font_glyph_field_set_advance_x(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_AdvanceX_set"

///|
/// Generated getter for `ImFontGlyph.X0`.
pub extern "C" fn im_font_glyph_field_get_x0(_self : ImFontGlyph) -> Float = "moonbit_dcimgui_ImFontGlyph_X0_get"

///|
/// Generated setter for `ImFontGlyph.X0`.
pub extern "C" fn im_font_glyph_field_set_x0(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_X0_set"

///|
/// Generated getter for `ImFontGlyph.Y0`.
pub extern "C" fn im_font_glyph_field_get_y0(_self : ImFontGlyph) -> Float = "moonbit_dcimgui_ImFontGlyph_Y0_get"

///|
/// Generated setter for `ImFontGlyph.Y0`.
pub extern "C" fn im_font_glyph_field_set_y0(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_Y0_set"

///|
/// Generated getter for `ImFontGlyph.X1`.
pub extern "C" fn im_font_glyph_field_get_x1(_self : ImFontGlyph) -> Float = "moonbit_dcimgui_ImFontGlyph_X1_get"

///|
/// Generated setter for `ImFontGlyph.X1`.
pub extern "C" fn im_font_glyph_field_set_x1(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_X1_set"

///|
/// Generated getter for `ImFontGlyph.Y1`.
pub extern "C" fn im_font_glyph_field_get_y1(_self : ImFontGlyph) -> Float = "moonbit_dcimgui_ImFontGlyph_Y1_get"

///|
/// Generated setter for `ImFontGlyph.Y1`.
pub extern "C" fn im_font_glyph_field_set_y1(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_Y1_set"

///|
/// Generated getter for `ImFontGlyph.U0`.
pub extern "C" fn im_font_glyph_field_get_u0(_self : ImFontGlyph) -> Float = "moonbit_dcimgui_ImFontGlyph_U0_get"

///|
/// Generated setter for `ImFontGlyph.U0`.
pub extern "C" fn im_font_glyph_field_set_u0(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_U0_set"

///|
/// Generated getter for `ImFontGlyph.V0`.
pub extern "C" fn im_font_glyph_field_get_v0(_self : ImFontGlyph) -> Float = "moonbit_dcimgui_ImFontGlyph_V0_get"

///|
/// Generated setter for `ImFontGlyph.V0`.
pub extern "C" fn im_font_glyph_field_set_v0(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_V0_set"

///|
/// Generated getter for `ImFontGlyph.U1`.
pub extern "C" fn im_font_glyph_field_get_u1(_self : ImFontGlyph) -> Float = "moonbit_dcimgui_ImFontGlyph_U1_get"

///|
/// Generated setter for `ImFontGlyph.U1`.
pub extern "C" fn im_font_glyph_field_set_u1(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_U1_set"

///|
/// Generated getter for `ImFontGlyph.V1`.
pub extern "C" fn im_font_glyph_field_get_v1(_self : ImFontGlyph) -> Float = "moonbit_dcimgui_ImFontGlyph_V1_get"

///|
/// Generated setter for `ImFontGlyph.V1`.
pub extern "C" fn im_font_glyph_field_set_v1(
  _self : ImFontGlyph,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_V1_set"

///|
/// Generated getter for `ImFontGlyph.PackId`.
pub extern "C" fn im_font_glyph_field_get_pack_id(_self : ImFontGlyph) -> Int = "moonbit_dcimgui_ImFontGlyph_PackId_get"

///|
/// Generated setter for `ImFontGlyph.PackId`.
pub extern "C" fn im_font_glyph_field_set_pack_id(
  _self : ImFontGlyph,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontGlyph_PackId_set"

///|
/// Generated getter for `ImFontGlyphRangesBuilder.UsedChars`.
pub extern "C" fn im_font_glyph_ranges_builder_field_get_used_chars(
  _self : ImFontGlyphRangesBuilder,
) -> ImVector_ImU32 = "moonbit_dcimgui_ImFontGlyphRangesBuilder_UsedChars_get"

///|
/// Generated setter for `ImFontGlyphRangesBuilder.UsedChars`.
pub extern "C" fn im_font_glyph_ranges_builder_field_set_used_chars(
  _self : ImFontGlyphRangesBuilder,
  _value : ImVector_ImU32,
) -> Unit = "moonbit_dcimgui_ImFontGlyphRangesBuilder_UsedChars_set"

///|
/// Generated getter for `ImFontAtlasRect.x`.
pub extern "C" fn im_font_atlas_rect_field_get_x(
  _self : ImFontAtlasRect,
) -> Int = "moonbit_dcimgui_ImFontAtlasRect_x_get"

///|
/// Generated setter for `ImFontAtlasRect.x`.
pub extern "C" fn im_font_atlas_rect_field_set_x(
  _self : ImFontAtlasRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlasRect_x_set"

///|
/// Generated getter for `ImFontAtlasRect.y`.
pub extern "C" fn im_font_atlas_rect_field_get_y(
  _self : ImFontAtlasRect,
) -> Int = "moonbit_dcimgui_ImFontAtlasRect_y_get"

///|
/// Generated setter for `ImFontAtlasRect.y`.
pub extern "C" fn im_font_atlas_rect_field_set_y(
  _self : ImFontAtlasRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlasRect_y_set"

///|
/// Generated getter for `ImFontAtlasRect.w`.
pub extern "C" fn im_font_atlas_rect_field_get_w(
  _self : ImFontAtlasRect,
) -> Int = "moonbit_dcimgui_ImFontAtlasRect_w_get"

///|
/// Generated setter for `ImFontAtlasRect.w`.
pub extern "C" fn im_font_atlas_rect_field_set_w(
  _self : ImFontAtlasRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlasRect_w_set"

///|
/// Generated getter for `ImFontAtlasRect.h`.
pub extern "C" fn im_font_atlas_rect_field_get_h(
  _self : ImFontAtlasRect,
) -> Int = "moonbit_dcimgui_ImFontAtlasRect_h_get"

///|
/// Generated setter for `ImFontAtlasRect.h`.
pub extern "C" fn im_font_atlas_rect_field_set_h(
  _self : ImFontAtlasRect,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlasRect_h_set"

///|
/// Generated getter for `ImFontAtlasRect.uv0`.
pub extern "C" fn im_font_atlas_rect_field_get_uv0(
  _self : ImFontAtlasRect,
) -> ImVec2 = "moonbit_dcimgui_ImFontAtlasRect_uv0_get"

///|
/// Generated setter for `ImFontAtlasRect.uv0`.
pub extern "C" fn im_font_atlas_rect_field_set_uv0(
  _self : ImFontAtlasRect,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImFontAtlasRect_uv0_set"

///|
/// Generated getter for `ImFontAtlasRect.uv1`.
pub extern "C" fn im_font_atlas_rect_field_get_uv1(
  _self : ImFontAtlasRect,
) -> ImVec2 = "moonbit_dcimgui_ImFontAtlasRect_uv1_get"

///|
/// Generated setter for `ImFontAtlasRect.uv1`.
pub extern "C" fn im_font_atlas_rect_field_set_uv1(
  _self : ImFontAtlasRect,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImFontAtlasRect_uv1_set"

///|
/// Generated getter for `ImFontAtlas.Flags`.
pub extern "C" fn im_font_atlas_field_get_flags(_self : ImFontAtlas) -> Int = "moonbit_dcimgui_ImFontAtlas_Flags_get"

///|
/// Generated setter for `ImFontAtlas.Flags`.
pub extern "C" fn im_font_atlas_field_set_flags(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_Flags_set"

///|
/// Generated getter for `ImFontAtlas.TexDesiredFormat`.
pub extern "C" fn im_font_atlas_field_get_tex_desired_format(
  _self : ImFontAtlas,
) -> ImTextureFormat = "moonbit_dcimgui_ImFontAtlas_TexDesiredFormat_get"

///|
/// Generated setter for `ImFontAtlas.TexDesiredFormat`.
pub extern "C" fn im_font_atlas_field_set_tex_desired_format(
  _self : ImFontAtlas,
  _value : ImTextureFormat,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexDesiredFormat_set"

///|
/// Generated getter for `ImFontAtlas.TexGlyphPadding`.
pub extern "C" fn im_font_atlas_field_get_tex_glyph_padding(
  _self : ImFontAtlas,
) -> Int = "moonbit_dcimgui_ImFontAtlas_TexGlyphPadding_get"

///|
/// Generated setter for `ImFontAtlas.TexGlyphPadding`.
pub extern "C" fn im_font_atlas_field_set_tex_glyph_padding(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexGlyphPadding_set"

///|
/// Generated getter for `ImFontAtlas.TexMinWidth`.
pub extern "C" fn im_font_atlas_field_get_tex_min_width(
  _self : ImFontAtlas,
) -> Int = "moonbit_dcimgui_ImFontAtlas_TexMinWidth_get"

///|
/// Generated setter for `ImFontAtlas.TexMinWidth`.
pub extern "C" fn im_font_atlas_field_set_tex_min_width(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexMinWidth_set"

///|
/// Generated getter for `ImFontAtlas.TexMinHeight`.
pub extern "C" fn im_font_atlas_field_get_tex_min_height(
  _self : ImFontAtlas,
) -> Int = "moonbit_dcimgui_ImFontAtlas_TexMinHeight_get"

///|
/// Generated setter for `ImFontAtlas.TexMinHeight`.
pub extern "C" fn im_font_atlas_field_set_tex_min_height(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexMinHeight_set"

///|
/// Generated getter for `ImFontAtlas.TexMaxWidth`.
pub extern "C" fn im_font_atlas_field_get_tex_max_width(
  _self : ImFontAtlas,
) -> Int = "moonbit_dcimgui_ImFontAtlas_TexMaxWidth_get"

///|
/// Generated setter for `ImFontAtlas.TexMaxWidth`.
pub extern "C" fn im_font_atlas_field_set_tex_max_width(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexMaxWidth_set"

///|
/// Generated getter for `ImFontAtlas.TexMaxHeight`.
pub extern "C" fn im_font_atlas_field_get_tex_max_height(
  _self : ImFontAtlas,
) -> Int = "moonbit_dcimgui_ImFontAtlas_TexMaxHeight_get"

///|
/// Generated setter for `ImFontAtlas.TexMaxHeight`.
pub extern "C" fn im_font_atlas_field_set_tex_max_height(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexMaxHeight_set"

///|
/// Generated getter for `ImFontAtlas.UserData`.
pub extern "C" fn im_font_atlas_field_get_user_data(
  _self : ImFontAtlas,
) -> VoidPtr = "moonbit_dcimgui_ImFontAtlas_UserData_get"

///|
/// Generated setter for `ImFontAtlas.UserData`.
pub extern "C" fn im_font_atlas_field_set_user_data(
  _self : ImFontAtlas,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_UserData_set"

///|
/// Generated getter for `ImFontAtlas.TexRef`.
pub extern "C" fn im_font_atlas_field_get_tex_ref(
  _self : ImFontAtlas,
) -> ImTextureRef = "moonbit_dcimgui_ImFontAtlas_TexRef_get"

///|
/// Generated setter for `ImFontAtlas.TexRef`.
pub extern "C" fn im_font_atlas_field_set_tex_ref(
  _self : ImFontAtlas,
  _value : ImTextureRef,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexRef_set"

///|
/// Generated getter for `ImFontAtlas.TexData`.
pub extern "C" fn im_font_atlas_field_get_tex_data(
  _self : ImFontAtlas,
) -> ImTextureData = "moonbit_dcimgui_ImFontAtlas_TexData_get"

///|
/// Generated setter for `ImFontAtlas.TexData`.
pub extern "C" fn im_font_atlas_field_set_tex_data(
  _self : ImFontAtlas,
  _value : ImTextureData,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexData_set"

///|
/// Generated getter for `ImFontAtlas.TexList`.
pub extern "C" fn im_font_atlas_field_get_tex_list(
  _self : ImFontAtlas,
) -> ImVector_ImTextureDataPtr = "moonbit_dcimgui_ImFontAtlas_TexList_get"

///|
/// Generated setter for `ImFontAtlas.TexList`.
pub extern "C" fn im_font_atlas_field_set_tex_list(
  _self : ImFontAtlas,
  _value : ImVector_ImTextureDataPtr,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexList_set"

///|
/// Generated getter for `ImFontAtlas.Locked`.
pub extern "C" fn im_font_atlas_field_get_locked(_self : ImFontAtlas) -> Bool = "moonbit_dcimgui_ImFontAtlas_Locked_get"

///|
/// Generated setter for `ImFontAtlas.Locked`.
pub extern "C" fn im_font_atlas_field_set_locked(
  _self : ImFontAtlas,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_Locked_set"

///|
/// Generated getter for `ImFontAtlas.RendererHasTextures`.
pub extern "C" fn im_font_atlas_field_get_renderer_has_textures(
  _self : ImFontAtlas,
) -> Bool = "moonbit_dcimgui_ImFontAtlas_RendererHasTextures_get"

///|
/// Generated setter for `ImFontAtlas.RendererHasTextures`.
pub extern "C" fn im_font_atlas_field_set_renderer_has_textures(
  _self : ImFontAtlas,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_RendererHasTextures_set"

///|
/// Generated getter for `ImFontAtlas.TexIsBuilt`.
pub extern "C" fn im_font_atlas_field_get_tex_is_built(
  _self : ImFontAtlas,
) -> Bool = "moonbit_dcimgui_ImFontAtlas_TexIsBuilt_get"

///|
/// Generated setter for `ImFontAtlas.TexIsBuilt`.
pub extern "C" fn im_font_atlas_field_set_tex_is_built(
  _self : ImFontAtlas,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexIsBuilt_set"

///|
/// Generated getter for `ImFontAtlas.TexPixelsUseColors`.
pub extern "C" fn im_font_atlas_field_get_tex_pixels_use_colors(
  _self : ImFontAtlas,
) -> Bool = "moonbit_dcimgui_ImFontAtlas_TexPixelsUseColors_get"

///|
/// Generated setter for `ImFontAtlas.TexPixelsUseColors`.
pub extern "C" fn im_font_atlas_field_set_tex_pixels_use_colors(
  _self : ImFontAtlas,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexPixelsUseColors_set"

///|
/// Generated getter for `ImFontAtlas.TexUvScale`.
pub extern "C" fn im_font_atlas_field_get_tex_uv_scale(
  _self : ImFontAtlas,
) -> ImVec2 = "moonbit_dcimgui_ImFontAtlas_TexUvScale_get"

///|
/// Generated setter for `ImFontAtlas.TexUvScale`.
pub extern "C" fn im_font_atlas_field_set_tex_uv_scale(
  _self : ImFontAtlas,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexUvScale_set"

///|
/// Generated getter for `ImFontAtlas.TexUvWhitePixel`.
pub extern "C" fn im_font_atlas_field_get_tex_uv_white_pixel(
  _self : ImFontAtlas,
) -> ImVec2 = "moonbit_dcimgui_ImFontAtlas_TexUvWhitePixel_get"

///|
/// Generated setter for `ImFontAtlas.TexUvWhitePixel`.
pub extern "C" fn im_font_atlas_field_set_tex_uv_white_pixel(
  _self : ImFontAtlas,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexUvWhitePixel_set"

///|
/// Generated getter for `ImFontAtlas.Fonts`.
pub extern "C" fn im_font_atlas_field_get_fonts(
  _self : ImFontAtlas,
) -> ImVector_ImFontPtr = "moonbit_dcimgui_ImFontAtlas_Fonts_get"

///|
/// Generated setter for `ImFontAtlas.Fonts`.
pub extern "C" fn im_font_atlas_field_set_fonts(
  _self : ImFontAtlas,
  _value : ImVector_ImFontPtr,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_Fonts_set"

///|
/// Generated getter for `ImFontAtlas.Sources`.
pub extern "C" fn im_font_atlas_field_get_sources(
  _self : ImFontAtlas,
) -> ImVector_ImFontConfig = "moonbit_dcimgui_ImFontAtlas_Sources_get"

///|
/// Generated setter for `ImFontAtlas.Sources`.
pub extern "C" fn im_font_atlas_field_set_sources(
  _self : ImFontAtlas,
  _value : ImVector_ImFontConfig,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_Sources_set"

///|
/// Generated getter for `ImFontAtlas.TexUvLines`.
pub extern "C" fn im_font_atlas_field_get_tex_uv_lines(
  _self : ImFontAtlas,
) -> ImVec4 = "moonbit_dcimgui_ImFontAtlas_TexUvLines_get"

///|
/// Generated getter for `ImFontAtlas.TexNextUniqueID`.
pub extern "C" fn im_font_atlas_field_get_tex_next_unique_id(
  _self : ImFontAtlas,
) -> Int = "moonbit_dcimgui_ImFontAtlas_TexNextUniqueID_get"

///|
/// Generated setter for `ImFontAtlas.TexNextUniqueID`.
pub extern "C" fn im_font_atlas_field_set_tex_next_unique_id(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexNextUniqueID_set"

///|
/// Generated getter for `ImFontAtlas.FontNextUniqueID`.
pub extern "C" fn im_font_atlas_field_get_font_next_unique_id(
  _self : ImFontAtlas,
) -> Int = "moonbit_dcimgui_ImFontAtlas_FontNextUniqueID_get"

///|
/// Generated setter for `ImFontAtlas.FontNextUniqueID`.
pub extern "C" fn im_font_atlas_field_set_font_next_unique_id(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_FontNextUniqueID_set"

///|
/// Generated getter for `ImFontAtlas.DrawListSharedDatas`.
pub extern "C" fn im_font_atlas_field_get_draw_list_shared_datas(
  _self : ImFontAtlas,
) -> ImVector_ImDrawListSharedDataPtr = "moonbit_dcimgui_ImFontAtlas_DrawListSharedDatas_get"

///|
/// Generated setter for `ImFontAtlas.DrawListSharedDatas`.
pub extern "C" fn im_font_atlas_field_set_draw_list_shared_datas(
  _self : ImFontAtlas,
  _value : ImVector_ImDrawListSharedDataPtr,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_DrawListSharedDatas_set"

///|
/// Generated getter for `ImFontAtlas.Builder`.
pub extern "C" fn im_font_atlas_field_get_builder(
  _self : ImFontAtlas,
) -> ImFontAtlasBuilder = "moonbit_dcimgui_ImFontAtlas_Builder_get"

///|
/// Generated setter for `ImFontAtlas.Builder`.
pub extern "C" fn im_font_atlas_field_set_builder(
  _self : ImFontAtlas,
  _value : ImFontAtlasBuilder,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_Builder_set"

///|
/// Generated getter for `ImFontAtlas.FontLoader`.
pub extern "C" fn im_font_atlas_field_get_font_loader(
  _self : ImFontAtlas,
) -> ImFontLoader = "moonbit_dcimgui_ImFontAtlas_FontLoader_get"

///|
/// Generated setter for `ImFontAtlas.FontLoader`.
pub extern "C" fn im_font_atlas_field_set_font_loader(
  _self : ImFontAtlas,
  _value : ImFontLoader,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_FontLoader_set"

///|
/// Generated getter for `ImFontAtlas.FontLoaderName`.
pub extern "C" fn im_font_atlas_field_get_font_loader_name(
  _self : ImFontAtlas,
) -> CString = "moonbit_dcimgui_ImFontAtlas_FontLoaderName_get"

///|
/// Generated setter for `ImFontAtlas.FontLoaderName`.
pub extern "C" fn im_font_atlas_field_set_font_loader_name(
  _self : ImFontAtlas,
  _value : CString,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_FontLoaderName_set"

///|
/// Generated getter for `ImFontAtlas.FontLoaderData`.
pub extern "C" fn im_font_atlas_field_get_font_loader_data(
  _self : ImFontAtlas,
) -> VoidPtr = "moonbit_dcimgui_ImFontAtlas_FontLoaderData_get"

///|
/// Generated setter for `ImFontAtlas.FontLoaderData`.
pub extern "C" fn im_font_atlas_field_set_font_loader_data(
  _self : ImFontAtlas,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_FontLoaderData_set"

///|
/// Generated getter for `ImFontAtlas.FontLoaderFlags`.
pub extern "C" fn im_font_atlas_field_get_font_loader_flags(
  _self : ImFontAtlas,
) -> UInt = "moonbit_dcimgui_ImFontAtlas_FontLoaderFlags_get"

///|
/// Generated setter for `ImFontAtlas.FontLoaderFlags`.
pub extern "C" fn im_font_atlas_field_set_font_loader_flags(
  _self : ImFontAtlas,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_FontLoaderFlags_set"

///|
/// Generated getter for `ImFontAtlas.RefCount`.
pub extern "C" fn im_font_atlas_field_get_ref_count(_self : ImFontAtlas) -> Int = "moonbit_dcimgui_ImFontAtlas_RefCount_get"

///|
/// Generated setter for `ImFontAtlas.RefCount`.
pub extern "C" fn im_font_atlas_field_set_ref_count(
  _self : ImFontAtlas,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_RefCount_set"

///|
/// Generated getter for `ImFontAtlas.OwnerContext`.
pub extern "C" fn im_font_atlas_field_get_owner_context(
  _self : ImFontAtlas,
) -> ImGuiContext = "moonbit_dcimgui_ImFontAtlas_OwnerContext_get"

///|
/// Generated setter for `ImFontAtlas.OwnerContext`.
pub extern "C" fn im_font_atlas_field_set_owner_context(
  _self : ImFontAtlas,
  _value : ImGuiContext,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_OwnerContext_set"

///|
/// Generated getter for `ImFontAtlas.TempRect`.
pub extern "C" fn im_font_atlas_field_get_temp_rect(
  _self : ImFontAtlas,
) -> ImFontAtlasRect = "moonbit_dcimgui_ImFontAtlas_TempRect_get"

///|
/// Generated setter for `ImFontAtlas.TempRect`.
pub extern "C" fn im_font_atlas_field_set_temp_rect(
  _self : ImFontAtlas,
  _value : ImFontAtlasRect,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TempRect_set"

///|
/// Generated getter for `ImFontAtlas.TexID`.
pub extern "C" fn im_font_atlas_field_get_tex_id(
  _self : ImFontAtlas,
) -> ImTextureRef = "moonbit_dcimgui_ImFontAtlas_TexID_get"

///|
/// Generated setter for `ImFontAtlas.TexID`.
pub extern "C" fn im_font_atlas_field_set_tex_id(
  _self : ImFontAtlas,
  _value : ImTextureRef,
) -> Unit = "moonbit_dcimgui_ImFontAtlas_TexID_set"

///|
/// Generated getter for `ImFontBaked.IndexAdvanceX`.
pub extern "C" fn im_font_baked_field_get_index_advance_x(
  _self : ImFontBaked,
) -> ImVector_float = "moonbit_dcimgui_ImFontBaked_IndexAdvanceX_get"

///|
/// Generated setter for `ImFontBaked.IndexAdvanceX`.
pub extern "C" fn im_font_baked_field_set_index_advance_x(
  _self : ImFontBaked,
  _value : ImVector_float,
) -> Unit = "moonbit_dcimgui_ImFontBaked_IndexAdvanceX_set"

///|
/// Generated getter for `ImFontBaked.FallbackAdvanceX`.
pub extern "C" fn im_font_baked_field_get_fallback_advance_x(
  _self : ImFontBaked,
) -> Float = "moonbit_dcimgui_ImFontBaked_FallbackAdvanceX_get"

///|
/// Generated setter for `ImFontBaked.FallbackAdvanceX`.
pub extern "C" fn im_font_baked_field_set_fallback_advance_x(
  _self : ImFontBaked,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontBaked_FallbackAdvanceX_set"

///|
/// Generated getter for `ImFontBaked.Size`.
pub extern "C" fn im_font_baked_field_get_size(_self : ImFontBaked) -> Float = "moonbit_dcimgui_ImFontBaked_Size_get"

///|
/// Generated setter for `ImFontBaked.Size`.
pub extern "C" fn im_font_baked_field_set_size(
  _self : ImFontBaked,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontBaked_Size_set"

///|
/// Generated getter for `ImFontBaked.RasterizerDensity`.
pub extern "C" fn im_font_baked_field_get_rasterizer_density(
  _self : ImFontBaked,
) -> Float = "moonbit_dcimgui_ImFontBaked_RasterizerDensity_get"

///|
/// Generated setter for `ImFontBaked.RasterizerDensity`.
pub extern "C" fn im_font_baked_field_set_rasterizer_density(
  _self : ImFontBaked,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontBaked_RasterizerDensity_set"

///|
/// Generated getter for `ImFontBaked.IndexLookup`.
pub extern "C" fn im_font_baked_field_get_index_lookup(
  _self : ImFontBaked,
) -> ImVector_ImU16 = "moonbit_dcimgui_ImFontBaked_IndexLookup_get"

///|
/// Generated setter for `ImFontBaked.IndexLookup`.
pub extern "C" fn im_font_baked_field_set_index_lookup(
  _self : ImFontBaked,
  _value : ImVector_ImU16,
) -> Unit = "moonbit_dcimgui_ImFontBaked_IndexLookup_set"

///|
/// Generated getter for `ImFontBaked.Glyphs`.
pub extern "C" fn im_font_baked_field_get_glyphs(
  _self : ImFontBaked,
) -> ImVector_ImFontGlyph = "moonbit_dcimgui_ImFontBaked_Glyphs_get"

///|
/// Generated setter for `ImFontBaked.Glyphs`.
pub extern "C" fn im_font_baked_field_set_glyphs(
  _self : ImFontBaked,
  _value : ImVector_ImFontGlyph,
) -> Unit = "moonbit_dcimgui_ImFontBaked_Glyphs_set"

///|
/// Generated getter for `ImFontBaked.FallbackGlyphIndex`.
pub extern "C" fn im_font_baked_field_get_fallback_glyph_index(
  _self : ImFontBaked,
) -> Int = "moonbit_dcimgui_ImFontBaked_FallbackGlyphIndex_get"

///|
/// Generated setter for `ImFontBaked.FallbackGlyphIndex`.
pub extern "C" fn im_font_baked_field_set_fallback_glyph_index(
  _self : ImFontBaked,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontBaked_FallbackGlyphIndex_set"

///|
/// Generated getter for `ImFontBaked.Ascent`.
pub extern "C" fn im_font_baked_field_get_ascent(_self : ImFontBaked) -> Float = "moonbit_dcimgui_ImFontBaked_Ascent_get"

///|
/// Generated setter for `ImFontBaked.Ascent`.
pub extern "C" fn im_font_baked_field_set_ascent(
  _self : ImFontBaked,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontBaked_Ascent_set"

///|
/// Generated getter for `ImFontBaked.Descent`.
pub extern "C" fn im_font_baked_field_get_descent(_self : ImFontBaked) -> Float = "moonbit_dcimgui_ImFontBaked_Descent_get"

///|
/// Generated setter for `ImFontBaked.Descent`.
pub extern "C" fn im_font_baked_field_set_descent(
  _self : ImFontBaked,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFontBaked_Descent_set"

///|
/// Generated getter for `ImFontBaked.MetricsTotalSurface`.
pub extern "C" fn im_font_baked_field_get_metrics_total_surface(
  _self : ImFontBaked,
) -> UInt = "moonbit_dcimgui_ImFontBaked_MetricsTotalSurface_get"

///|
/// Generated setter for `ImFontBaked.MetricsTotalSurface`.
pub extern "C" fn im_font_baked_field_set_metrics_total_surface(
  _self : ImFontBaked,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontBaked_MetricsTotalSurface_set"

///|
/// Generated getter for `ImFontBaked.WantDestroy`.
pub extern "C" fn im_font_baked_field_get_want_destroy(
  _self : ImFontBaked,
) -> UInt = "moonbit_dcimgui_ImFontBaked_WantDestroy_get"

///|
/// Generated setter for `ImFontBaked.WantDestroy`.
pub extern "C" fn im_font_baked_field_set_want_destroy(
  _self : ImFontBaked,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontBaked_WantDestroy_set"

///|
/// Generated getter for `ImFontBaked.LoadNoFallback`.
pub extern "C" fn im_font_baked_field_get_load_no_fallback(
  _self : ImFontBaked,
) -> UInt = "moonbit_dcimgui_ImFontBaked_LoadNoFallback_get"

///|
/// Generated setter for `ImFontBaked.LoadNoFallback`.
pub extern "C" fn im_font_baked_field_set_load_no_fallback(
  _self : ImFontBaked,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontBaked_LoadNoFallback_set"

///|
/// Generated getter for `ImFontBaked.LoadNoRenderOnLayout`.
pub extern "C" fn im_font_baked_field_get_load_no_render_on_layout(
  _self : ImFontBaked,
) -> UInt = "moonbit_dcimgui_ImFontBaked_LoadNoRenderOnLayout_get"

///|
/// Generated setter for `ImFontBaked.LoadNoRenderOnLayout`.
pub extern "C" fn im_font_baked_field_set_load_no_render_on_layout(
  _self : ImFontBaked,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontBaked_LoadNoRenderOnLayout_set"

///|
/// Generated getter for `ImFontBaked.LastUsedFrame`.
pub extern "C" fn im_font_baked_field_get_last_used_frame(
  _self : ImFontBaked,
) -> Int = "moonbit_dcimgui_ImFontBaked_LastUsedFrame_get"

///|
/// Generated setter for `ImFontBaked.LastUsedFrame`.
pub extern "C" fn im_font_baked_field_set_last_used_frame(
  _self : ImFontBaked,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFontBaked_LastUsedFrame_set"

///|
/// Generated getter for `ImFontBaked.BakedId`.
pub extern "C" fn im_font_baked_field_get_baked_id(_self : ImFontBaked) -> UInt = "moonbit_dcimgui_ImFontBaked_BakedId_get"

///|
/// Generated setter for `ImFontBaked.BakedId`.
pub extern "C" fn im_font_baked_field_set_baked_id(
  _self : ImFontBaked,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFontBaked_BakedId_set"

///|
/// Generated getter for `ImFontBaked.OwnerFont`.
pub extern "C" fn im_font_baked_field_get_owner_font(
  _self : ImFontBaked,
) -> ImFont = "moonbit_dcimgui_ImFontBaked_OwnerFont_get"

///|
/// Generated setter for `ImFontBaked.OwnerFont`.
pub extern "C" fn im_font_baked_field_set_owner_font(
  _self : ImFontBaked,
  _value : ImFont,
) -> Unit = "moonbit_dcimgui_ImFontBaked_OwnerFont_set"

///|
/// Generated getter for `ImFontBaked.FontLoaderDatas`.
pub extern "C" fn im_font_baked_field_get_font_loader_datas(
  _self : ImFontBaked,
) -> VoidPtr = "moonbit_dcimgui_ImFontBaked_FontLoaderDatas_get"

///|
/// Generated setter for `ImFontBaked.FontLoaderDatas`.
pub extern "C" fn im_font_baked_field_set_font_loader_datas(
  _self : ImFontBaked,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImFontBaked_FontLoaderDatas_set"

///|
/// Generated getter for `ImFont.LastBaked`.
pub extern "C" fn im_font_field_get_last_baked(_self : ImFont) -> ImFontBaked = "moonbit_dcimgui_ImFont_LastBaked_get"

///|
/// Generated setter for `ImFont.LastBaked`.
pub extern "C" fn im_font_field_set_last_baked(
  _self : ImFont,
  _value : ImFontBaked,
) -> Unit = "moonbit_dcimgui_ImFont_LastBaked_set"

///|
/// Generated getter for `ImFont.OwnerAtlas`.
pub extern "C" fn im_font_field_get_owner_atlas(_self : ImFont) -> ImFontAtlas = "moonbit_dcimgui_ImFont_OwnerAtlas_get"

///|
/// Generated setter for `ImFont.OwnerAtlas`.
pub extern "C" fn im_font_field_set_owner_atlas(
  _self : ImFont,
  _value : ImFontAtlas,
) -> Unit = "moonbit_dcimgui_ImFont_OwnerAtlas_set"

///|
/// Generated getter for `ImFont.Flags`.
pub extern "C" fn im_font_field_get_flags(_self : ImFont) -> Int = "moonbit_dcimgui_ImFont_Flags_get"

///|
/// Generated setter for `ImFont.Flags`.
pub extern "C" fn im_font_field_set_flags(_self : ImFont, _value : Int) -> Unit = "moonbit_dcimgui_ImFont_Flags_set"

///|
/// Generated getter for `ImFont.CurrentRasterizerDensity`.
pub extern "C" fn im_font_field_get_current_rasterizer_density(
  _self : ImFont,
) -> Float = "moonbit_dcimgui_ImFont_CurrentRasterizerDensity_get"

///|
/// Generated setter for `ImFont.CurrentRasterizerDensity`.
pub extern "C" fn im_font_field_set_current_rasterizer_density(
  _self : ImFont,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFont_CurrentRasterizerDensity_set"

///|
/// Generated getter for `ImFont.FontId`.
pub extern "C" fn im_font_field_get_font_id(_self : ImFont) -> UInt = "moonbit_dcimgui_ImFont_FontId_get"

///|
/// Generated setter for `ImFont.FontId`.
pub extern "C" fn im_font_field_set_font_id(
  _self : ImFont,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImFont_FontId_set"

///|
/// Generated getter for `ImFont.LegacySize`.
pub extern "C" fn im_font_field_get_legacy_size(_self : ImFont) -> Float = "moonbit_dcimgui_ImFont_LegacySize_get"

///|
/// Generated setter for `ImFont.LegacySize`.
pub extern "C" fn im_font_field_set_legacy_size(
  _self : ImFont,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFont_LegacySize_set"

///|
/// Generated getter for `ImFont.Sources`.
pub extern "C" fn im_font_field_get_sources(
  _self : ImFont,
) -> ImVector_ImFontConfigPtr = "moonbit_dcimgui_ImFont_Sources_get"

///|
/// Generated setter for `ImFont.Sources`.
pub extern "C" fn im_font_field_set_sources(
  _self : ImFont,
  _value : ImVector_ImFontConfigPtr,
) -> Unit = "moonbit_dcimgui_ImFont_Sources_set"

///|
/// Generated getter for `ImFont.EllipsisChar`.
pub extern "C" fn im_font_field_get_ellipsis_char(_self : ImFont) -> Int = "moonbit_dcimgui_ImFont_EllipsisChar_get"

///|
/// Generated setter for `ImFont.EllipsisChar`.
pub extern "C" fn im_font_field_set_ellipsis_char(
  _self : ImFont,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFont_EllipsisChar_set"

///|
/// Generated getter for `ImFont.FallbackChar`.
pub extern "C" fn im_font_field_get_fallback_char(_self : ImFont) -> Int = "moonbit_dcimgui_ImFont_FallbackChar_get"

///|
/// Generated setter for `ImFont.FallbackChar`.
pub extern "C" fn im_font_field_set_fallback_char(
  _self : ImFont,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImFont_FallbackChar_set"

///|
/// Generated getter for `ImFont.Used8kPagesMap`.
pub extern "C" fn im_font_field_get_used8k_pages_map(_self : ImFont) -> ImU8Ptr = "moonbit_dcimgui_ImFont_Used8kPagesMap_get"

///|
/// Generated getter for `ImFont.EllipsisAutoBake`.
pub extern "C" fn im_font_field_get_ellipsis_auto_bake(_self : ImFont) -> Bool = "moonbit_dcimgui_ImFont_EllipsisAutoBake_get"

///|
/// Generated setter for `ImFont.EllipsisAutoBake`.
pub extern "C" fn im_font_field_set_ellipsis_auto_bake(
  _self : ImFont,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImFont_EllipsisAutoBake_set"

///|
/// Generated getter for `ImFont.RemapPairs`.
pub extern "C" fn im_font_field_get_remap_pairs(_self : ImFont) -> ImGuiStorage = "moonbit_dcimgui_ImFont_RemapPairs_get"

///|
/// Generated setter for `ImFont.RemapPairs`.
pub extern "C" fn im_font_field_set_remap_pairs(
  _self : ImFont,
  _value : ImGuiStorage,
) -> Unit = "moonbit_dcimgui_ImFont_RemapPairs_set"

///|
/// Generated getter for `ImFont.Scale`.
pub extern "C" fn im_font_field_get_scale(_self : ImFont) -> Float = "moonbit_dcimgui_ImFont_Scale_get"

///|
/// Generated setter for `ImFont.Scale`.
pub extern "C" fn im_font_field_set_scale(
  _self : ImFont,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImFont_Scale_set"

///|
/// Generated getter for `ImGuiViewport.ID`.
pub extern "C" fn im_gui_viewport_field_get_id(_self : ImGuiViewport) -> UInt = "moonbit_dcimgui_ImGuiViewport_ID_get"

///|
/// Generated setter for `ImGuiViewport.ID`.
pub extern "C" fn im_gui_viewport_field_set_id(
  _self : ImGuiViewport,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_ID_set"

///|
/// Generated getter for `ImGuiViewport.Flags`.
pub extern "C" fn im_gui_viewport_field_get_flags(_self : ImGuiViewport) -> Int = "moonbit_dcimgui_ImGuiViewport_Flags_get"

///|
/// Generated setter for `ImGuiViewport.Flags`.
pub extern "C" fn im_gui_viewport_field_set_flags(
  _self : ImGuiViewport,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_Flags_set"

///|
/// Generated getter for `ImGuiViewport.Pos`.
pub extern "C" fn im_gui_viewport_field_get_pos(
  _self : ImGuiViewport,
) -> ImVec2 = "moonbit_dcimgui_ImGuiViewport_Pos_get"

///|
/// Generated setter for `ImGuiViewport.Pos`.
pub extern "C" fn im_gui_viewport_field_set_pos(
  _self : ImGuiViewport,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_Pos_set"

///|
/// Generated getter for `ImGuiViewport.Size`.
pub extern "C" fn im_gui_viewport_field_get_size(
  _self : ImGuiViewport,
) -> ImVec2 = "moonbit_dcimgui_ImGuiViewport_Size_get"

///|
/// Generated setter for `ImGuiViewport.Size`.
pub extern "C" fn im_gui_viewport_field_set_size(
  _self : ImGuiViewport,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_Size_set"

///|
/// Generated getter for `ImGuiViewport.FramebufferScale`.
pub extern "C" fn im_gui_viewport_field_get_framebuffer_scale(
  _self : ImGuiViewport,
) -> ImVec2 = "moonbit_dcimgui_ImGuiViewport_FramebufferScale_get"

///|
/// Generated setter for `ImGuiViewport.FramebufferScale`.
pub extern "C" fn im_gui_viewport_field_set_framebuffer_scale(
  _self : ImGuiViewport,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_FramebufferScale_set"

///|
/// Generated getter for `ImGuiViewport.WorkPos`.
pub extern "C" fn im_gui_viewport_field_get_work_pos(
  _self : ImGuiViewport,
) -> ImVec2 = "moonbit_dcimgui_ImGuiViewport_WorkPos_get"

///|
/// Generated setter for `ImGuiViewport.WorkPos`.
pub extern "C" fn im_gui_viewport_field_set_work_pos(
  _self : ImGuiViewport,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_WorkPos_set"

///|
/// Generated getter for `ImGuiViewport.WorkSize`.
pub extern "C" fn im_gui_viewport_field_get_work_size(
  _self : ImGuiViewport,
) -> ImVec2 = "moonbit_dcimgui_ImGuiViewport_WorkSize_get"

///|
/// Generated setter for `ImGuiViewport.WorkSize`.
pub extern "C" fn im_gui_viewport_field_set_work_size(
  _self : ImGuiViewport,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_WorkSize_set"

///|
/// Generated getter for `ImGuiViewport.PlatformHandle`.
pub extern "C" fn im_gui_viewport_field_get_platform_handle(
  _self : ImGuiViewport,
) -> VoidPtr = "moonbit_dcimgui_ImGuiViewport_PlatformHandle_get"

///|
/// Generated setter for `ImGuiViewport.PlatformHandle`.
pub extern "C" fn im_gui_viewport_field_set_platform_handle(
  _self : ImGuiViewport,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_PlatformHandle_set"

///|
/// Generated getter for `ImGuiViewport.PlatformHandleRaw`.
pub extern "C" fn im_gui_viewport_field_get_platform_handle_raw(
  _self : ImGuiViewport,
) -> VoidPtr = "moonbit_dcimgui_ImGuiViewport_PlatformHandleRaw_get"

///|
/// Generated setter for `ImGuiViewport.PlatformHandleRaw`.
pub extern "C" fn im_gui_viewport_field_set_platform_handle_raw(
  _self : ImGuiViewport,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiViewport_PlatformHandleRaw_set"

///|
/// Generated getter for `ImGuiPlatformIO.Platform_GetClipboardTextFn`.
pub extern "C" fn im_gui_platform_io_field_get_platform_get_clipboard_text_fn(
  _self : ImGuiPlatformIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiPlatformIO_Platform_GetClipboardTextFn_get"

///|
/// Generated getter for `ImGuiPlatformIO.Platform_SetClipboardTextFn`.
pub extern "C" fn im_gui_platform_io_field_get_platform_set_clipboard_text_fn(
  _self : ImGuiPlatformIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiPlatformIO_Platform_SetClipboardTextFn_get"

///|
/// Generated getter for `ImGuiPlatformIO.Platform_ClipboardUserData`.
pub extern "C" fn im_gui_platform_io_field_get_platform_clipboard_user_data(
  _self : ImGuiPlatformIO,
) -> VoidPtr = "moonbit_dcimgui_ImGuiPlatformIO_Platform_ClipboardUserData_get"

///|
/// Generated setter for `ImGuiPlatformIO.Platform_ClipboardUserData`.
pub extern "C" fn im_gui_platform_io_field_set_platform_clipboard_user_data(
  _self : ImGuiPlatformIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformIO_Platform_ClipboardUserData_set"

///|
/// Generated getter for `ImGuiPlatformIO.Platform_OpenInShellFn`.
pub extern "C" fn im_gui_platform_io_field_get_platform_open_in_shell_fn(
  _self : ImGuiPlatformIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiPlatformIO_Platform_OpenInShellFn_get"

///|
/// Generated getter for `ImGuiPlatformIO.Platform_OpenInShellUserData`.
pub extern "C" fn im_gui_platform_io_field_get_platform_open_in_shell_user_data(
  _self : ImGuiPlatformIO,
) -> VoidPtr = "moonbit_dcimgui_ImGuiPlatformIO_Platform_OpenInShellUserData_get"

///|
/// Generated setter for `ImGuiPlatformIO.Platform_OpenInShellUserData`.
pub extern "C" fn im_gui_platform_io_field_set_platform_open_in_shell_user_data(
  _self : ImGuiPlatformIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformIO_Platform_OpenInShellUserData_set"

///|
/// Generated getter for `ImGuiPlatformIO.Platform_SetImeDataFn`.
pub extern "C" fn im_gui_platform_io_field_get_platform_set_ime_data_fn(
  _self : ImGuiPlatformIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiPlatformIO_Platform_SetImeDataFn_get"

///|
/// Generated getter for `ImGuiPlatformIO.Platform_ImeUserData`.
pub extern "C" fn im_gui_platform_io_field_get_platform_ime_user_data(
  _self : ImGuiPlatformIO,
) -> VoidPtr = "moonbit_dcimgui_ImGuiPlatformIO_Platform_ImeUserData_get"

///|
/// Generated setter for `ImGuiPlatformIO.Platform_ImeUserData`.
pub extern "C" fn im_gui_platform_io_field_set_platform_ime_user_data(
  _self : ImGuiPlatformIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformIO_Platform_ImeUserData_set"

///|
/// Generated getter for `ImGuiPlatformIO.Platform_LocaleDecimalPoint`.
pub extern "C" fn im_gui_platform_io_field_get_platform_locale_decimal_point(
  _self : ImGuiPlatformIO,
) -> Int = "moonbit_dcimgui_ImGuiPlatformIO_Platform_LocaleDecimalPoint_get"

///|
/// Generated setter for `ImGuiPlatformIO.Platform_LocaleDecimalPoint`.
pub extern "C" fn im_gui_platform_io_field_set_platform_locale_decimal_point(
  _self : ImGuiPlatformIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformIO_Platform_LocaleDecimalPoint_set"

///|
/// Generated getter for `ImGuiPlatformIO.Renderer_TextureMaxWidth`.
pub extern "C" fn im_gui_platform_io_field_get_renderer_texture_max_width(
  _self : ImGuiPlatformIO,
) -> Int = "moonbit_dcimgui_ImGuiPlatformIO_Renderer_TextureMaxWidth_get"

///|
/// Generated setter for `ImGuiPlatformIO.Renderer_TextureMaxWidth`.
pub extern "C" fn im_gui_platform_io_field_set_renderer_texture_max_width(
  _self : ImGuiPlatformIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformIO_Renderer_TextureMaxWidth_set"

///|
/// Generated getter for `ImGuiPlatformIO.Renderer_TextureMaxHeight`.
pub extern "C" fn im_gui_platform_io_field_get_renderer_texture_max_height(
  _self : ImGuiPlatformIO,
) -> Int = "moonbit_dcimgui_ImGuiPlatformIO_Renderer_TextureMaxHeight_get"

///|
/// Generated setter for `ImGuiPlatformIO.Renderer_TextureMaxHeight`.
pub extern "C" fn im_gui_platform_io_field_set_renderer_texture_max_height(
  _self : ImGuiPlatformIO,
  _value : Int,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformIO_Renderer_TextureMaxHeight_set"

///|
/// Generated getter for `ImGuiPlatformIO.Renderer_RenderState`.
pub extern "C" fn im_gui_platform_io_field_get_renderer_render_state(
  _self : ImGuiPlatformIO,
) -> VoidPtr = "moonbit_dcimgui_ImGuiPlatformIO_Renderer_RenderState_get"

///|
/// Generated setter for `ImGuiPlatformIO.Renderer_RenderState`.
pub extern "C" fn im_gui_platform_io_field_set_renderer_render_state(
  _self : ImGuiPlatformIO,
  _value : VoidPtr,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformIO_Renderer_RenderState_set"

///|
/// Generated getter for `ImGuiPlatformIO.DrawCallback_ResetRenderState`.
pub extern "C" fn im_gui_platform_io_field_get_draw_callback_reset_render_state(
  _self : ImGuiPlatformIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiPlatformIO_DrawCallback_ResetRenderState_get"

///|
/// Generated getter for `ImGuiPlatformIO.DrawCallback_SetSamplerLinear`.
pub extern "C" fn im_gui_platform_io_field_get_draw_callback_set_sampler_linear(
  _self : ImGuiPlatformIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiPlatformIO_DrawCallback_SetSamplerLinear_get"

///|
/// Generated getter for `ImGuiPlatformIO.DrawCallback_SetSamplerNearest`.
pub extern "C" fn im_gui_platform_io_field_get_draw_callback_set_sampler_nearest(
  _self : ImGuiPlatformIO,
) -> FunctionPtr = "moonbit_dcimgui_ImGuiPlatformIO_DrawCallback_SetSamplerNearest_get"

///|
/// Generated getter for `ImGuiPlatformIO.Textures`.
pub extern "C" fn im_gui_platform_io_field_get_textures(
  _self : ImGuiPlatformIO,
) -> ImVector_ImTextureDataPtr = "moonbit_dcimgui_ImGuiPlatformIO_Textures_get"

///|
/// Generated setter for `ImGuiPlatformIO.Textures`.
pub extern "C" fn im_gui_platform_io_field_set_textures(
  _self : ImGuiPlatformIO,
  _value : ImVector_ImTextureDataPtr,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformIO_Textures_set"

///|
/// Generated getter for `ImGuiPlatformImeData.WantVisible`.
pub extern "C" fn im_gui_platform_ime_data_field_get_want_visible(
  _self : ImGuiPlatformImeData,
) -> Bool = "moonbit_dcimgui_ImGuiPlatformImeData_WantVisible_get"

///|
/// Generated setter for `ImGuiPlatformImeData.WantVisible`.
pub extern "C" fn im_gui_platform_ime_data_field_set_want_visible(
  _self : ImGuiPlatformImeData,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformImeData_WantVisible_set"

///|
/// Generated getter for `ImGuiPlatformImeData.WantTextInput`.
pub extern "C" fn im_gui_platform_ime_data_field_get_want_text_input(
  _self : ImGuiPlatformImeData,
) -> Bool = "moonbit_dcimgui_ImGuiPlatformImeData_WantTextInput_get"

///|
/// Generated setter for `ImGuiPlatformImeData.WantTextInput`.
pub extern "C" fn im_gui_platform_ime_data_field_set_want_text_input(
  _self : ImGuiPlatformImeData,
  _value : Bool,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformImeData_WantTextInput_set"

///|
/// Generated getter for `ImGuiPlatformImeData.InputPos`.
pub extern "C" fn im_gui_platform_ime_data_field_get_input_pos(
  _self : ImGuiPlatformImeData,
) -> ImVec2 = "moonbit_dcimgui_ImGuiPlatformImeData_InputPos_get"

///|
/// Generated setter for `ImGuiPlatformImeData.InputPos`.
pub extern "C" fn im_gui_platform_ime_data_field_set_input_pos(
  _self : ImGuiPlatformImeData,
  _value : ImVec2,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformImeData_InputPos_set"

///|
/// Generated getter for `ImGuiPlatformImeData.InputLineHeight`.
pub extern "C" fn im_gui_platform_ime_data_field_get_input_line_height(
  _self : ImGuiPlatformImeData,
) -> Float = "moonbit_dcimgui_ImGuiPlatformImeData_InputLineHeight_get"

///|
/// Generated setter for `ImGuiPlatformImeData.InputLineHeight`.
pub extern "C" fn im_gui_platform_ime_data_field_set_input_line_height(
  _self : ImGuiPlatformImeData,
  _value : Float,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformImeData_InputLineHeight_set"

///|
/// Generated getter for `ImGuiPlatformImeData.ViewportId`.
pub extern "C" fn im_gui_platform_ime_data_field_get_viewport_id(
  _self : ImGuiPlatformImeData,
) -> UInt = "moonbit_dcimgui_ImGuiPlatformImeData_ViewportId_get"

///|
/// Generated setter for `ImGuiPlatformImeData.ViewportId`.
pub extern "C" fn im_gui_platform_ime_data_field_set_viewport_id(
  _self : ImGuiPlatformImeData,
  _value : UInt,
) -> Unit = "moonbit_dcimgui_ImGuiPlatformImeData_ViewportId_set"
