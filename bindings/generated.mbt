///|
/// Pure MoonBit extern bindings generated from `dcimgui.json`.
///
/// This package contains no hand-written bridge code. Pointer ABI follows
/// MoonBit native rules: `Bytes` for non-null UTF-8 `char*`, `Ref[T]`
/// for primitive `T*`, `Option[Ref[T]]` for nullable primitive `T*`,
/// and direct `#external` handle types for C pointers represented by
/// external types.

///|
/// Opaque ABI carrier for `void*` values.
#external
pub(all) type VoidPtr

///|
/// Null `VoidPtr` handle.
pub extern "C" fn VoidPtr::null() -> VoidPtr = "moonbit_imgui_null"

///|
/// Returns true when this `VoidPtr` handle is null.
#borrow(self)
pub extern "C" fn VoidPtr::is_null(self : VoidPtr) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImColor`.
#external
pub(all) type ImColor

///|
/// Null `ImColor` handle.
pub extern "C" fn ImColor::null() -> ImColor = "moonbit_imgui_null"

///|
/// Returns true when this `ImColor` handle is null.
#borrow(self)
pub extern "C" fn ImColor::is_null(self : ImColor) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImDrawChannel`.
#external
pub(all) type ImDrawChannel

///|
/// Null `ImDrawChannel` handle.
pub extern "C" fn ImDrawChannel::null() -> ImDrawChannel = "moonbit_imgui_null"

///|
/// Returns true when this `ImDrawChannel` handle is null.
#borrow(self)
pub extern "C" fn ImDrawChannel::is_null(self : ImDrawChannel) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImDrawCmd`.
#external
pub(all) type ImDrawCmd

///|
/// Null `ImDrawCmd` handle.
pub extern "C" fn ImDrawCmd::null() -> ImDrawCmd = "moonbit_imgui_null"

///|
/// Returns true when this `ImDrawCmd` handle is null.
#borrow(self)
pub extern "C" fn ImDrawCmd::is_null(self : ImDrawCmd) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImDrawCmdHeader`.
#external
pub(all) type ImDrawCmdHeader

///|
/// Null `ImDrawCmdHeader` handle.
pub extern "C" fn ImDrawCmdHeader::null() -> ImDrawCmdHeader = "moonbit_imgui_null"

///|
/// Returns true when this `ImDrawCmdHeader` handle is null.
#borrow(self)
pub extern "C" fn ImDrawCmdHeader::is_null(self : ImDrawCmdHeader) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImDrawData`.
#external
pub(all) type ImDrawData

///|
/// Null `ImDrawData` handle.
pub extern "C" fn ImDrawData::null() -> ImDrawData = "moonbit_imgui_null"

///|
/// Returns true when this `ImDrawData` handle is null.
#borrow(self)
pub extern "C" fn ImDrawData::is_null(self : ImDrawData) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImDrawList`.
#external
pub(all) type ImDrawList

///|
/// Null `ImDrawList` handle.
pub extern "C" fn ImDrawList::null() -> ImDrawList = "moonbit_imgui_null"

///|
/// Returns true when this `ImDrawList` handle is null.
#borrow(self)
pub extern "C" fn ImDrawList::is_null(self : ImDrawList) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImDrawListSharedData`.
#external
pub(all) type ImDrawListSharedData

///|
/// Null `ImDrawListSharedData` handle.
pub extern "C" fn ImDrawListSharedData::null() -> ImDrawListSharedData = "moonbit_imgui_null"

///|
/// Returns true when this `ImDrawListSharedData` handle is null.
#borrow(self)
pub extern "C" fn ImDrawListSharedData::is_null(
  self : ImDrawListSharedData,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImDrawListSplitter`.
#external
pub(all) type ImDrawListSplitter

///|
/// Null `ImDrawListSplitter` handle.
pub extern "C" fn ImDrawListSplitter::null() -> ImDrawListSplitter = "moonbit_imgui_null"

///|
/// Returns true when this `ImDrawListSplitter` handle is null.
#borrow(self)
pub extern "C" fn ImDrawListSplitter::is_null(
  self : ImDrawListSplitter,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImDrawVert`.
#external
pub(all) type ImDrawVert

///|
/// Null `ImDrawVert` handle.
pub extern "C" fn ImDrawVert::null() -> ImDrawVert = "moonbit_imgui_null"

///|
/// Returns true when this `ImDrawVert` handle is null.
#borrow(self)
pub extern "C" fn ImDrawVert::is_null(self : ImDrawVert) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFont`.
#external
pub(all) type ImFont

///|
/// Null `ImFont` handle.
pub extern "C" fn ImFont::null() -> ImFont = "moonbit_imgui_null"

///|
/// Returns true when this `ImFont` handle is null.
#borrow(self)
pub extern "C" fn ImFont::is_null(self : ImFont) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFontAtlas`.
#external
pub(all) type ImFontAtlas

///|
/// Null `ImFontAtlas` handle.
pub extern "C" fn ImFontAtlas::null() -> ImFontAtlas = "moonbit_imgui_null"

///|
/// Returns true when this `ImFontAtlas` handle is null.
#borrow(self)
pub extern "C" fn ImFontAtlas::is_null(self : ImFontAtlas) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFontAtlasBuilder`.
#external
pub(all) type ImFontAtlasBuilder

///|
/// Null `ImFontAtlasBuilder` handle.
pub extern "C" fn ImFontAtlasBuilder::null() -> ImFontAtlasBuilder = "moonbit_imgui_null"

///|
/// Returns true when this `ImFontAtlasBuilder` handle is null.
#borrow(self)
pub extern "C" fn ImFontAtlasBuilder::is_null(
  self : ImFontAtlasBuilder,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFontAtlasRect`.
#external
pub(all) type ImFontAtlasRect

///|
/// Null `ImFontAtlasRect` handle.
pub extern "C" fn ImFontAtlasRect::null() -> ImFontAtlasRect = "moonbit_imgui_null"

///|
/// Returns true when this `ImFontAtlasRect` handle is null.
#borrow(self)
pub extern "C" fn ImFontAtlasRect::is_null(self : ImFontAtlasRect) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFontBaked`.
#external
pub(all) type ImFontBaked

///|
/// Null `ImFontBaked` handle.
pub extern "C" fn ImFontBaked::null() -> ImFontBaked = "moonbit_imgui_null"

///|
/// Returns true when this `ImFontBaked` handle is null.
#borrow(self)
pub extern "C" fn ImFontBaked::is_null(self : ImFontBaked) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFontConfig`.
#external
pub(all) type ImFontConfig

///|
/// Null `ImFontConfig` handle.
pub extern "C" fn ImFontConfig::null() -> ImFontConfig = "moonbit_imgui_null"

///|
/// Returns true when this `ImFontConfig` handle is null.
#borrow(self)
pub extern "C" fn ImFontConfig::is_null(self : ImFontConfig) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFontGlyph`.
#external
pub(all) type ImFontGlyph

///|
/// Null `ImFontGlyph` handle.
pub extern "C" fn ImFontGlyph::null() -> ImFontGlyph = "moonbit_imgui_null"

///|
/// Returns true when this `ImFontGlyph` handle is null.
#borrow(self)
pub extern "C" fn ImFontGlyph::is_null(self : ImFontGlyph) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFontGlyphRangesBuilder`.
#external
pub(all) type ImFontGlyphRangesBuilder

///|
/// Null `ImFontGlyphRangesBuilder` handle.
pub extern "C" fn ImFontGlyphRangesBuilder::null() -> ImFontGlyphRangesBuilder = "moonbit_imgui_null"

///|
/// Returns true when this `ImFontGlyphRangesBuilder` handle is null.
#borrow(self)
pub extern "C" fn ImFontGlyphRangesBuilder::is_null(
  self : ImFontGlyphRangesBuilder,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImFontLoader`.
#external
pub(all) type ImFontLoader

///|
/// Null `ImFontLoader` handle.
pub extern "C" fn ImFontLoader::null() -> ImFontLoader = "moonbit_imgui_null"

///|
/// Returns true when this `ImFontLoader` handle is null.
#borrow(self)
pub extern "C" fn ImFontLoader::is_null(self : ImFontLoader) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiContext`.
#external
pub(all) type ImGuiContext

///|
/// Null `ImGuiContext` handle.
pub extern "C" fn ImGuiContext::null() -> ImGuiContext = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiContext` handle is null.
#borrow(self)
pub extern "C" fn ImGuiContext::is_null(self : ImGuiContext) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiIO`.
#external
pub(all) type ImGuiIO

///|
/// Null `ImGuiIO` handle.
pub extern "C" fn ImGuiIO::null() -> ImGuiIO = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiIO` handle is null.
#borrow(self)
pub extern "C" fn ImGuiIO::is_null(self : ImGuiIO) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiInputTextCallbackData`.
#external
pub(all) type ImGuiInputTextCallbackData

///|
/// Null `ImGuiInputTextCallbackData` handle.
pub extern "C" fn ImGuiInputTextCallbackData::null() -> ImGuiInputTextCallbackData = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiInputTextCallbackData` handle is null.
#borrow(self)
pub extern "C" fn ImGuiInputTextCallbackData::is_null(
  self : ImGuiInputTextCallbackData,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiKeyData`.
#external
pub(all) type ImGuiKeyData

///|
/// Null `ImGuiKeyData` handle.
pub extern "C" fn ImGuiKeyData::null() -> ImGuiKeyData = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiKeyData` handle is null.
#borrow(self)
pub extern "C" fn ImGuiKeyData::is_null(self : ImGuiKeyData) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiListClipper`.
#external
pub(all) type ImGuiListClipper

///|
/// Null `ImGuiListClipper` handle.
pub extern "C" fn ImGuiListClipper::null() -> ImGuiListClipper = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiListClipper` handle is null.
#borrow(self)
pub extern "C" fn ImGuiListClipper::is_null(self : ImGuiListClipper) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiMultiSelectIO`.
#external
pub(all) type ImGuiMultiSelectIO

///|
/// Null `ImGuiMultiSelectIO` handle.
pub extern "C" fn ImGuiMultiSelectIO::null() -> ImGuiMultiSelectIO = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiMultiSelectIO` handle is null.
#borrow(self)
pub extern "C" fn ImGuiMultiSelectIO::is_null(
  self : ImGuiMultiSelectIO,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiPayload`.
#external
pub(all) type ImGuiPayload

///|
/// Null `ImGuiPayload` handle.
pub extern "C" fn ImGuiPayload::null() -> ImGuiPayload = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiPayload` handle is null.
#borrow(self)
pub extern "C" fn ImGuiPayload::is_null(self : ImGuiPayload) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiPlatformIO`.
#external
pub(all) type ImGuiPlatformIO

///|
/// Null `ImGuiPlatformIO` handle.
pub extern "C" fn ImGuiPlatformIO::null() -> ImGuiPlatformIO = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiPlatformIO` handle is null.
#borrow(self)
pub extern "C" fn ImGuiPlatformIO::is_null(self : ImGuiPlatformIO) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiPlatformImeData`.
#external
pub(all) type ImGuiPlatformImeData

///|
/// Null `ImGuiPlatformImeData` handle.
pub extern "C" fn ImGuiPlatformImeData::null() -> ImGuiPlatformImeData = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiPlatformImeData` handle is null.
#borrow(self)
pub extern "C" fn ImGuiPlatformImeData::is_null(
  self : ImGuiPlatformImeData,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiSelectionBasicStorage`.
#external
pub(all) type ImGuiSelectionBasicStorage

///|
/// Null `ImGuiSelectionBasicStorage` handle.
pub extern "C" fn ImGuiSelectionBasicStorage::null() -> ImGuiSelectionBasicStorage = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiSelectionBasicStorage` handle is null.
#borrow(self)
pub extern "C" fn ImGuiSelectionBasicStorage::is_null(
  self : ImGuiSelectionBasicStorage,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiSelectionExternalStorage`.
#external
pub(all) type ImGuiSelectionExternalStorage

///|
/// Null `ImGuiSelectionExternalStorage` handle.
pub extern "C" fn ImGuiSelectionExternalStorage::null() -> ImGuiSelectionExternalStorage = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiSelectionExternalStorage` handle is null.
#borrow(self)
pub extern "C" fn ImGuiSelectionExternalStorage::is_null(
  self : ImGuiSelectionExternalStorage,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiSelectionRequest`.
#external
pub(all) type ImGuiSelectionRequest

///|
/// Null `ImGuiSelectionRequest` handle.
pub extern "C" fn ImGuiSelectionRequest::null() -> ImGuiSelectionRequest = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiSelectionRequest` handle is null.
#borrow(self)
pub extern "C" fn ImGuiSelectionRequest::is_null(
  self : ImGuiSelectionRequest,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiSizeCallbackData`.
#external
pub(all) type ImGuiSizeCallbackData

///|
/// Null `ImGuiSizeCallbackData` handle.
pub extern "C" fn ImGuiSizeCallbackData::null() -> ImGuiSizeCallbackData = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiSizeCallbackData` handle is null.
#borrow(self)
pub extern "C" fn ImGuiSizeCallbackData::is_null(
  self : ImGuiSizeCallbackData,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiStorage`.
#external
pub(all) type ImGuiStorage

///|
/// Null `ImGuiStorage` handle.
pub extern "C" fn ImGuiStorage::null() -> ImGuiStorage = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiStorage` handle is null.
#borrow(self)
pub extern "C" fn ImGuiStorage::is_null(self : ImGuiStorage) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiStoragePair`.
#external
pub(all) type ImGuiStoragePair

///|
/// Null `ImGuiStoragePair` handle.
pub extern "C" fn ImGuiStoragePair::null() -> ImGuiStoragePair = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiStoragePair` handle is null.
#borrow(self)
pub extern "C" fn ImGuiStoragePair::is_null(self : ImGuiStoragePair) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiStyle`.
#external
pub(all) type ImGuiStyle

///|
/// Null `ImGuiStyle` handle.
pub extern "C" fn ImGuiStyle::null() -> ImGuiStyle = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiStyle` handle is null.
#borrow(self)
pub extern "C" fn ImGuiStyle::is_null(self : ImGuiStyle) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiTableColumnSortSpecs`.
#external
pub(all) type ImGuiTableColumnSortSpecs

///|
/// Null `ImGuiTableColumnSortSpecs` handle.
pub extern "C" fn ImGuiTableColumnSortSpecs::null() -> ImGuiTableColumnSortSpecs = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiTableColumnSortSpecs` handle is null.
#borrow(self)
pub extern "C" fn ImGuiTableColumnSortSpecs::is_null(
  self : ImGuiTableColumnSortSpecs,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiTableSortSpecs`.
#external
pub(all) type ImGuiTableSortSpecs

///|
/// Null `ImGuiTableSortSpecs` handle.
pub extern "C" fn ImGuiTableSortSpecs::null() -> ImGuiTableSortSpecs = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiTableSortSpecs` handle is null.
#borrow(self)
pub extern "C" fn ImGuiTableSortSpecs::is_null(
  self : ImGuiTableSortSpecs,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiTextBuffer`.
#external
pub(all) type ImGuiTextBuffer

///|
/// Null `ImGuiTextBuffer` handle.
pub extern "C" fn ImGuiTextBuffer::null() -> ImGuiTextBuffer = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiTextBuffer` handle is null.
#borrow(self)
pub extern "C" fn ImGuiTextBuffer::is_null(self : ImGuiTextBuffer) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiTextFilter`.
#external
pub(all) type ImGuiTextFilter

///|
/// Null `ImGuiTextFilter` handle.
pub extern "C" fn ImGuiTextFilter::null() -> ImGuiTextFilter = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiTextFilter` handle is null.
#borrow(self)
pub extern "C" fn ImGuiTextFilter::is_null(self : ImGuiTextFilter) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiTextFilter_ImGuiTextRange`.
#external
pub(all) type ImGuiTextFilterImGuiTextRange

///|
/// Null `ImGuiTextFilterImGuiTextRange` handle.
pub extern "C" fn ImGuiTextFilterImGuiTextRange::null() -> ImGuiTextFilterImGuiTextRange = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiTextFilterImGuiTextRange` handle is null.
#borrow(self)
pub extern "C" fn ImGuiTextFilterImGuiTextRange::is_null(
  self : ImGuiTextFilterImGuiTextRange,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImGuiViewport`.
#external
pub(all) type ImGuiViewport

///|
/// Null `ImGuiViewport` handle.
pub extern "C" fn ImGuiViewport::null() -> ImGuiViewport = "moonbit_imgui_null"

///|
/// Returns true when this `ImGuiViewport` handle is null.
#borrow(self)
pub extern "C" fn ImGuiViewport::is_null(self : ImGuiViewport) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImTextureData`.
#external
pub(all) type ImTextureData

///|
/// Null `ImTextureData` handle.
pub extern "C" fn ImTextureData::null() -> ImTextureData = "moonbit_imgui_null"

///|
/// Returns true when this `ImTextureData` handle is null.
#borrow(self)
pub extern "C" fn ImTextureData::is_null(self : ImTextureData) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImTextureRect`.
#external
pub(all) type ImTextureRect

///|
/// Null `ImTextureRect` handle.
pub extern "C" fn ImTextureRect::null() -> ImTextureRect = "moonbit_imgui_null"

///|
/// Returns true when this `ImTextureRect` handle is null.
#borrow(self)
pub extern "C" fn ImTextureRect::is_null(self : ImTextureRect) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImTextureRef`.
#external
pub(all) type ImTextureRef

///|
/// Null `ImTextureRef` handle.
pub extern "C" fn ImTextureRef::null() -> ImTextureRef = "moonbit_imgui_null"

///|
/// Returns true when this `ImTextureRef` handle is null.
#borrow(self)
pub extern "C" fn ImTextureRef::is_null(self : ImTextureRef) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVec2`.
#external
pub(all) type ImVec2

///|
/// Null `ImVec2` handle.
pub extern "C" fn ImVec2::null() -> ImVec2 = "moonbit_imgui_null"

///|
/// Returns true when this `ImVec2` handle is null.
#borrow(self)
pub extern "C" fn ImVec2::is_null(self : ImVec2) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVec4`.
#external
pub(all) type ImVec4

///|
/// Null `ImVec4` handle.
pub extern "C" fn ImVec4::null() -> ImVec4 = "moonbit_imgui_null"

///|
/// Returns true when this `ImVec4` handle is null.
#borrow(self)
pub extern "C" fn ImVec4::is_null(self : ImVec4) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImDrawChannel`.
#external
pub(all) type ImVectorImDrawChannel

///|
/// Null `ImVectorImDrawChannel` handle.
pub extern "C" fn ImVectorImDrawChannel::null() -> ImVectorImDrawChannel = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImDrawChannel` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImDrawChannel::is_null(
  self : ImVectorImDrawChannel,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImDrawCmd`.
#external
pub(all) type ImVectorImDrawCmd

///|
/// Null `ImVectorImDrawCmd` handle.
pub extern "C" fn ImVectorImDrawCmd::null() -> ImVectorImDrawCmd = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImDrawCmd` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImDrawCmd::is_null(self : ImVectorImDrawCmd) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImDrawIdx`.
#external
pub(all) type ImVectorImDrawIdx

///|
/// Null `ImVectorImDrawIdx` handle.
pub extern "C" fn ImVectorImDrawIdx::null() -> ImVectorImDrawIdx = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImDrawIdx` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImDrawIdx::is_null(self : ImVectorImDrawIdx) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImDrawListPtr`.
#external
pub(all) type ImVectorImDrawListPtr

///|
/// Null `ImVectorImDrawListPtr` handle.
pub extern "C" fn ImVectorImDrawListPtr::null() -> ImVectorImDrawListPtr = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImDrawListPtr` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImDrawListPtr::is_null(
  self : ImVectorImDrawListPtr,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImDrawListSharedDataPtr`.
#external
pub(all) type ImVectorImDrawListSharedDataPtr

///|
/// Null `ImVectorImDrawListSharedDataPtr` handle.
pub extern "C" fn ImVectorImDrawListSharedDataPtr::null() -> ImVectorImDrawListSharedDataPtr = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImDrawListSharedDataPtr` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImDrawListSharedDataPtr::is_null(
  self : ImVectorImDrawListSharedDataPtr,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImDrawVert`.
#external
pub(all) type ImVectorImDrawVert

///|
/// Null `ImVectorImDrawVert` handle.
pub extern "C" fn ImVectorImDrawVert::null() -> ImVectorImDrawVert = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImDrawVert` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImDrawVert::is_null(
  self : ImVectorImDrawVert,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImFontConfig`.
#external
pub(all) type ImVectorImFontConfig

///|
/// Null `ImVectorImFontConfig` handle.
pub extern "C" fn ImVectorImFontConfig::null() -> ImVectorImFontConfig = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImFontConfig` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImFontConfig::is_null(
  self : ImVectorImFontConfig,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImFontConfigPtr`.
#external
pub(all) type ImVectorImFontConfigPtr

///|
/// Null `ImVectorImFontConfigPtr` handle.
pub extern "C" fn ImVectorImFontConfigPtr::null() -> ImVectorImFontConfigPtr = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImFontConfigPtr` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImFontConfigPtr::is_null(
  self : ImVectorImFontConfigPtr,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImFontGlyph`.
#external
pub(all) type ImVectorImFontGlyph

///|
/// Null `ImVectorImFontGlyph` handle.
pub extern "C" fn ImVectorImFontGlyph::null() -> ImVectorImFontGlyph = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImFontGlyph` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImFontGlyph::is_null(
  self : ImVectorImFontGlyph,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImFontPtr`.
#external
pub(all) type ImVectorImFontPtr

///|
/// Null `ImVectorImFontPtr` handle.
pub extern "C" fn ImVectorImFontPtr::null() -> ImVectorImFontPtr = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImFontPtr` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImFontPtr::is_null(self : ImVectorImFontPtr) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImGuiSelectionRequest`.
#external
pub(all) type ImVectorImGuiSelectionRequest

///|
/// Null `ImVectorImGuiSelectionRequest` handle.
pub extern "C" fn ImVectorImGuiSelectionRequest::null() -> ImVectorImGuiSelectionRequest = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImGuiSelectionRequest` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImGuiSelectionRequest::is_null(
  self : ImVectorImGuiSelectionRequest,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImGuiStoragePair`.
#external
pub(all) type ImVectorImGuiStoragePair

///|
/// Null `ImVectorImGuiStoragePair` handle.
pub extern "C" fn ImVectorImGuiStoragePair::null() -> ImVectorImGuiStoragePair = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImGuiStoragePair` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImGuiStoragePair::is_null(
  self : ImVectorImGuiStoragePair,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImGuiTextRange`.
#external
pub(all) type ImVectorImGuiTextRange

///|
/// Null `ImVectorImGuiTextRange` handle.
pub extern "C" fn ImVectorImGuiTextRange::null() -> ImVectorImGuiTextRange = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImGuiTextRange` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImGuiTextRange::is_null(
  self : ImVectorImGuiTextRange,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImTextureDataPtr`.
#external
pub(all) type ImVectorImTextureDataPtr

///|
/// Null `ImVectorImTextureDataPtr` handle.
pub extern "C" fn ImVectorImTextureDataPtr::null() -> ImVectorImTextureDataPtr = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImTextureDataPtr` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImTextureDataPtr::is_null(
  self : ImVectorImTextureDataPtr,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImTextureRect`.
#external
pub(all) type ImVectorImTextureRect

///|
/// Null `ImVectorImTextureRect` handle.
pub extern "C" fn ImVectorImTextureRect::null() -> ImVectorImTextureRect = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImTextureRect` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImTextureRect::is_null(
  self : ImVectorImTextureRect,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImTextureRef`.
#external
pub(all) type ImVectorImTextureRef

///|
/// Null `ImVectorImTextureRef` handle.
pub extern "C" fn ImVectorImTextureRef::null() -> ImVectorImTextureRef = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImTextureRef` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImTextureRef::is_null(
  self : ImVectorImTextureRef,
) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImU16`.
#external
pub(all) type ImVectorImU16

///|
/// Null `ImVectorImU16` handle.
pub extern "C" fn ImVectorImU16::null() -> ImVectorImU16 = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImU16` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImU16::is_null(self : ImVectorImU16) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImU32`.
#external
pub(all) type ImVectorImU32

///|
/// Null `ImVectorImU32` handle.
pub extern "C" fn ImVectorImU32::null() -> ImVectorImU32 = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImU32` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImU32::is_null(self : ImVectorImU32) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImU8`.
#external
pub(all) type ImVectorImU8

///|
/// Null `ImVectorImU8` handle.
pub extern "C" fn ImVectorImU8::null() -> ImVectorImU8 = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImU8` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImU8::is_null(self : ImVectorImU8) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImVec2`.
#external
pub(all) type ImVectorImVec2

///|
/// Null `ImVectorImVec2` handle.
pub extern "C" fn ImVectorImVec2::null() -> ImVectorImVec2 = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImVec2` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImVec2::is_null(self : ImVectorImVec2) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImVec4`.
#external
pub(all) type ImVectorImVec4

///|
/// Null `ImVectorImVec4` handle.
pub extern "C" fn ImVectorImVec4::null() -> ImVectorImVec4 = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImVec4` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImVec4::is_null(self : ImVectorImVec4) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_ImWchar`.
#external
pub(all) type ImVectorImWchar

///|
/// Null `ImVectorImWchar` handle.
pub extern "C" fn ImVectorImWchar::null() -> ImVectorImWchar = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorImWchar` handle is null.
#borrow(self)
pub extern "C" fn ImVectorImWchar::is_null(self : ImVectorImWchar) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_char`.
#external
pub(all) type ImVectorChar

///|
/// Null `ImVectorChar` handle.
pub extern "C" fn ImVectorChar::null() -> ImVectorChar = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorChar` handle is null.
#borrow(self)
pub extern "C" fn ImVectorChar::is_null(self : ImVectorChar) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `ImVector_float`.
#external
pub(all) type ImVectorFloat

///|
/// Null `ImVectorFloat` handle.
pub extern "C" fn ImVectorFloat::null() -> ImVectorFloat = "moonbit_imgui_null"

///|
/// Returns true when this `ImVectorFloat` handle is null.
#borrow(self)
pub extern "C" fn ImVectorFloat::is_null(self : ImVectorFloat) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `__anonymous_type0`.
#external
pub(all) type AnonymousType0

///|
/// Null `AnonymousType0` handle.
pub extern "C" fn AnonymousType0::null() -> AnonymousType0 = "moonbit_imgui_null"

///|
/// Returns true when this `AnonymousType0` handle is null.
#borrow(self)
pub extern "C" fn AnonymousType0::is_null(self : AnonymousType0) -> Bool = "moonbit_is_null"

///|
/// Opaque C pointer handle for `__anonymous_type1`.
#external
pub(all) type AnonymousType1

///|
/// Null `AnonymousType1` handle.
pub extern "C" fn AnonymousType1::null() -> AnonymousType1 = "moonbit_imgui_null"

///|
/// Returns true when this `AnonymousType1` handle is null.
#borrow(self)
pub extern "C" fn AnonymousType1::is_null(self : AnonymousType1) -> Bool = "moonbit_is_null"

///|
/// ABI alias for C typedef `ImDrawIdx`.
pub type ImDrawIdx = UInt

///|
/// ABI alias for C typedef `ImGuiID`.
pub type ImGuiID = UInt

///|
/// ABI alias for C typedef `ImS8`.
pub type ImS8 = Byte

///|
/// ABI alias for C typedef `ImU8`.
pub type ImU8 = Byte

///|
/// ABI alias for C typedef `ImS16`.
pub type ImS16 = Int

///|
/// ABI alias for C typedef `ImU16`.
pub type ImU16 = UInt

///|
/// ABI alias for C typedef `ImS32`.
pub type ImS32 = Int

///|
/// ABI alias for C typedef `ImU32`.
pub type ImU32 = UInt

///|
/// ABI alias for C typedef `ImS64`.
pub type ImS64 = Int64

///|
/// ABI alias for C typedef `ImU64`.
pub type ImU64 = UInt64

///|
/// ABI alias for C typedef `ImGuiDir`.
pub type ImGuiDir = Int

///|
/// ABI alias for C typedef `ImGuiKey`.
pub type ImGuiKey = Int

///|
/// ABI alias for C typedef `ImGuiMouseSource`.
pub type ImGuiMouseSource = Int

///|
/// ABI alias for C typedef `ImGuiSortDirection`.
pub type ImGuiSortDirection = Byte

///|
/// ABI alias for C typedef `ImGuiCol`.
pub type ImGuiCol = Int

///|
/// ABI alias for C typedef `ImGuiCond`.
pub type ImGuiCond = Int

///|
/// ABI alias for C typedef `ImGuiDataType`.
pub type ImGuiDataType = Int

///|
/// ABI alias for C typedef `ImGuiMouseButton`.
pub type ImGuiMouseButton = Int

///|
/// ABI alias for C typedef `ImGuiMouseCursor`.
pub type ImGuiMouseCursor = Int

///|
/// ABI alias for C typedef `ImGuiStyleVar`.
pub type ImGuiStyleVar = Int

///|
/// ABI alias for C typedef `ImGuiTableBgTarget`.
pub type ImGuiTableBgTarget = Int

///|
/// ABI alias for C typedef `ImDrawFlags`.
pub type ImDrawFlags = Int

///|
/// ABI alias for C typedef `ImDrawListFlags`.
pub type ImDrawListFlags = Int

///|
/// ABI alias for C typedef `ImDrawTextFlags`.
pub type ImDrawTextFlags = Int

///|
/// ABI alias for C typedef `ImFontFlags`.
pub type ImFontFlags = Int

///|
/// ABI alias for C typedef `ImFontAtlasFlags`.
pub type ImFontAtlasFlags = Int

///|
/// ABI alias for C typedef `ImGuiBackendFlags`.
pub type ImGuiBackendFlags = Int

///|
/// ABI alias for C typedef `ImGuiButtonFlags`.
pub type ImGuiButtonFlags = Int

///|
/// ABI alias for C typedef `ImGuiChildFlags`.
pub type ImGuiChildFlags = Int

///|
/// ABI alias for C typedef `ImGuiColorEditFlags`.
pub type ImGuiColorEditFlags = Int

///|
/// ABI alias for C typedef `ImGuiConfigFlags`.
pub type ImGuiConfigFlags = Int

///|
/// ABI alias for C typedef `ImGuiComboFlags`.
pub type ImGuiComboFlags = Int

///|
/// ABI alias for C typedef `ImGuiDragDropFlags`.
pub type ImGuiDragDropFlags = Int

///|
/// ABI alias for C typedef `ImGuiFocusedFlags`.
pub type ImGuiFocusedFlags = Int

///|
/// ABI alias for C typedef `ImGuiHoveredFlags`.
pub type ImGuiHoveredFlags = Int

///|
/// ABI alias for C typedef `ImGuiInputFlags`.
pub type ImGuiInputFlags = Int

///|
/// ABI alias for C typedef `ImGuiInputTextFlags`.
pub type ImGuiInputTextFlags = Int

///|
/// ABI alias for C typedef `ImGuiItemFlags`.
pub type ImGuiItemFlags = Int

///|
/// ABI alias for C typedef `ImGuiKeyChord`.
pub type ImGuiKeyChord = Int

///|
/// ABI alias for C typedef `ImGuiListClipperFlags`.
pub type ImGuiListClipperFlags = Int

///|
/// ABI alias for C typedef `ImGuiPopupFlags`.
pub type ImGuiPopupFlags = Int

///|
/// ABI alias for C typedef `ImGuiMultiSelectFlags`.
pub type ImGuiMultiSelectFlags = Int

///|
/// ABI alias for C typedef `ImGuiSelectableFlags`.
pub type ImGuiSelectableFlags = Int

///|
/// ABI alias for C typedef `ImGuiSliderFlags`.
pub type ImGuiSliderFlags = Int

///|
/// ABI alias for C typedef `ImGuiTabBarFlags`.
pub type ImGuiTabBarFlags = Int

///|
/// ABI alias for C typedef `ImGuiTabItemFlags`.
pub type ImGuiTabItemFlags = Int

///|
/// ABI alias for C typedef `ImGuiTableFlags`.
pub type ImGuiTableFlags = Int

///|
/// ABI alias for C typedef `ImGuiTableColumnFlags`.
pub type ImGuiTableColumnFlags = Int

///|
/// ABI alias for C typedef `ImGuiTableRowFlags`.
pub type ImGuiTableRowFlags = Int

///|
/// ABI alias for C typedef `ImGuiTreeNodeFlags`.
pub type ImGuiTreeNodeFlags = Int

///|
/// ABI alias for C typedef `ImGuiViewportFlags`.
pub type ImGuiViewportFlags = Int

///|
/// ABI alias for C typedef `ImGuiWindowFlags`.
pub type ImGuiWindowFlags = Int

///|
/// ABI alias for C typedef `ImWchar32`.
pub type ImWchar32 = UInt

///|
/// ABI alias for C typedef `ImWchar16`.
pub type ImWchar16 = UInt

///|
/// ABI alias for C typedef `ImWchar`.
pub type ImWchar = UInt

///|
/// ABI alias for C typedef `ImGuiSelectionUserData`.
pub type ImGuiSelectionUserData = Int64

///|
/// ABI alias for C typedef `ImTextureID`.
pub type ImTextureID = UInt64

///|
/// ABI alias for C typedef `ImFontAtlasRectId`.
pub type ImFontAtlasRectId = Int

///|
/// ABI alias for C function pointer typedef `ImGuiInputTextCallback`.
pub type ImGuiInputTextCallback = FuncRef[(ImGuiInputTextCallbackData) -> Int]

///|
/// ABI alias for C function pointer typedef `ImGuiSizeCallback`.
pub type ImGuiSizeCallback = FuncRef[(ImGuiSizeCallbackData) -> Unit]

///|
/// ABI alias for C function pointer typedef `ImGuiMemAllocFunc`.
pub type ImGuiMemAllocFunc = FuncRef[(Int, VoidPtr) -> VoidPtr]

///|
/// ABI alias for C function pointer typedef `ImGuiMemFreeFunc`.
pub type ImGuiMemFreeFunc = FuncRef[(VoidPtr, VoidPtr) -> Unit]

///|
/// ABI alias for C function pointer typedef `ImDrawCallback`.
pub type ImDrawCallback = FuncRef[(ImDrawList, ImDrawCmd) -> Unit]

///|
/// Generated constant binding for define `IMGUI_VERSION`.
pub fn imgui_version() -> String {
  "1.92.8"
}

///|
/// Generated constant binding for define `IMGUI_VERSION_NUM`.
pub fn imgui_version_num() -> Int {
  19281
}

///|
/// Generated constant binding for define `IMGUI_PAYLOAD_TYPE_COLOR_3F`.
pub fn imgui_payload_type_color_3_f() -> String {
  "_COL3F"
}

///|
/// Generated constant binding for define `IMGUI_PAYLOAD_TYPE_COLOR_4F`.
pub fn imgui_payload_type_color_4_f() -> String {
  "_COL4F"
}

///|
/// Generated constant binding for define `IM_UNICODE_CODEPOINT_INVALID`.
pub fn im_unicode_codepoint_invalid() -> Int {
  65533
}

///|
/// Generated constant binding for define `IM_UNICODE_CODEPOINT_MAX`.
pub fn im_unicode_codepoint_max() -> Int {
  1114111
}

///|
/// Generated constant binding for define `IM_COL32_R_SHIFT`.
pub fn im_col32_r_shift() -> Int {
  16
}

///|
/// Generated constant binding for define `IM_COL32_G_SHIFT`.
pub fn im_col32_g_shift() -> Int {
  8
}

///|
/// Generated constant binding for define `IM_COL32_B_SHIFT`.
pub fn im_col32_b_shift() -> Int {
  0
}

///|
/// Generated constant binding for define `IM_COL32_A_SHIFT`.
pub fn im_col32_a_shift() -> Int {
  24
}

///|
/// Generated constant binding for define `IM_COL32_A_MASK`.
pub fn im_col32_a_mask() -> UInt {
  4278190080U
}

///|
/// Generated constant binding for define `IM_DRAWLIST_TEX_LINES_WIDTH_MAX`.
pub fn im_drawlist_tex_lines_width_max() -> Int {
  32
}

///|
/// Generated constant binding for define `ImFontAtlasRectId_Invalid`.
pub fn im_font_atlas_rect_id_invalid() -> Int {
  -1
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_None`.
pub fn im_gui_window_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoTitleBar`.
pub fn im_gui_window_flags_no_title_bar() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoResize`.
pub fn im_gui_window_flags_no_resize() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoMove`.
pub fn im_gui_window_flags_no_move() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoScrollbar`.
pub fn im_gui_window_flags_no_scrollbar() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoScrollWithMouse`.
pub fn im_gui_window_flags_no_scroll_with_mouse() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoCollapse`.
pub fn im_gui_window_flags_no_collapse() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_AlwaysAutoResize`.
pub fn im_gui_window_flags_always_auto_resize() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoBackground`.
pub fn im_gui_window_flags_no_background() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoSavedSettings`.
pub fn im_gui_window_flags_no_saved_settings() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoMouseInputs`.
pub fn im_gui_window_flags_no_mouse_inputs() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_MenuBar`.
pub fn im_gui_window_flags_menu_bar() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_HorizontalScrollbar`.
pub fn im_gui_window_flags_horizontal_scrollbar() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoFocusOnAppearing`.
pub fn im_gui_window_flags_no_focus_on_appearing() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoBringToFrontOnFocus`.
pub fn im_gui_window_flags_no_bring_to_front_on_focus() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_AlwaysVerticalScrollbar`.
pub fn im_gui_window_flags_always_vertical_scrollbar() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_AlwaysHorizontalScrollbar`.
pub fn im_gui_window_flags_always_horizontal_scrollbar() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoNavInputs`.
pub fn im_gui_window_flags_no_nav_inputs() -> Int {
  65536
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoNavFocus`.
pub fn im_gui_window_flags_no_nav_focus() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_UnsavedDocument`.
pub fn im_gui_window_flags_unsaved_document() -> Int {
  262144
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoNav`.
pub fn im_gui_window_flags_no_nav() -> Int {
  196608
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoDecoration`.
pub fn im_gui_window_flags_no_decoration() -> Int {
  43
}

///|
/// Generated constant binding for enum value `ImGuiWindowFlags_NoInputs`.
pub fn im_gui_window_flags_no_inputs() -> Int {
  197120
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_None`.
pub fn im_gui_child_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_Borders`.
pub fn im_gui_child_flags_borders() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_AlwaysUseWindowPadding`.
pub fn im_gui_child_flags_always_use_window_padding() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_ResizeX`.
pub fn im_gui_child_flags_resize_x() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_ResizeY`.
pub fn im_gui_child_flags_resize_y() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_AutoResizeX`.
pub fn im_gui_child_flags_auto_resize_x() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_AutoResizeY`.
pub fn im_gui_child_flags_auto_resize_y() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_AlwaysAutoResize`.
pub fn im_gui_child_flags_always_auto_resize() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_FrameStyle`.
pub fn im_gui_child_flags_frame_style() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiChildFlags_NavFlattened`.
pub fn im_gui_child_flags_nav_flattened() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiItemFlags_None`.
pub fn im_gui_item_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiItemFlags_NoTabStop`.
pub fn im_gui_item_flags_no_tab_stop() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiItemFlags_NoNav`.
pub fn im_gui_item_flags_no_nav() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiItemFlags_NoNavDefaultFocus`.
pub fn im_gui_item_flags_no_nav_default_focus() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiItemFlags_ButtonRepeat`.
pub fn im_gui_item_flags_button_repeat() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiItemFlags_AutoClosePopups`.
pub fn im_gui_item_flags_auto_close_popups() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiItemFlags_AllowDuplicateId`.
pub fn im_gui_item_flags_allow_duplicate_id() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiItemFlags_Disabled`.
pub fn im_gui_item_flags_disabled() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_None`.
pub fn im_gui_input_text_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CharsDecimal`.
pub fn im_gui_input_text_flags_chars_decimal() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CharsHexadecimal`.
pub fn im_gui_input_text_flags_chars_hexadecimal() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CharsScientific`.
pub fn im_gui_input_text_flags_chars_scientific() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CharsUppercase`.
pub fn im_gui_input_text_flags_chars_uppercase() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CharsNoBlank`.
pub fn im_gui_input_text_flags_chars_no_blank() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_AllowTabInput`.
pub fn im_gui_input_text_flags_allow_tab_input() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_EnterReturnsTrue`.
pub fn im_gui_input_text_flags_enter_returns_true() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_EscapeClearsAll`.
pub fn im_gui_input_text_flags_escape_clears_all() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CtrlEnterForNewLine`.
pub fn im_gui_input_text_flags_ctrl_enter_for_new_line() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_ReadOnly`.
pub fn im_gui_input_text_flags_read_only() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_Password`.
pub fn im_gui_input_text_flags_password() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_AlwaysOverwrite`.
pub fn im_gui_input_text_flags_always_overwrite() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_AutoSelectAll`.
pub fn im_gui_input_text_flags_auto_select_all() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_ParseEmptyRefVal`.
pub fn im_gui_input_text_flags_parse_empty_ref_val() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_DisplayEmptyRefVal`.
pub fn im_gui_input_text_flags_display_empty_ref_val() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_NoHorizontalScroll`.
pub fn im_gui_input_text_flags_no_horizontal_scroll() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_NoUndoRedo`.
pub fn im_gui_input_text_flags_no_undo_redo() -> Int {
  65536
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_ElideLeft`.
pub fn im_gui_input_text_flags_elide_left() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CallbackCompletion`.
pub fn im_gui_input_text_flags_callback_completion() -> Int {
  262144
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CallbackHistory`.
pub fn im_gui_input_text_flags_callback_history() -> Int {
  524288
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CallbackAlways`.
pub fn im_gui_input_text_flags_callback_always() -> Int {
  1048576
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CallbackCharFilter`.
pub fn im_gui_input_text_flags_callback_char_filter() -> Int {
  2097152
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CallbackResize`.
pub fn im_gui_input_text_flags_callback_resize() -> Int {
  4194304
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_CallbackEdit`.
pub fn im_gui_input_text_flags_callback_edit() -> Int {
  8388608
}

///|
/// Generated constant binding for enum value `ImGuiInputTextFlags_WordWrap`.
pub fn im_gui_input_text_flags_word_wrap() -> Int {
  16777216
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_None`.
pub fn im_gui_tree_node_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_Selected`.
pub fn im_gui_tree_node_flags_selected() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_Framed`.
pub fn im_gui_tree_node_flags_framed() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_AllowOverlap`.
pub fn im_gui_tree_node_flags_allow_overlap() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_NoTreePushOnOpen`.
pub fn im_gui_tree_node_flags_no_tree_push_on_open() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_NoAutoOpenOnLog`.
pub fn im_gui_tree_node_flags_no_auto_open_on_log() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_DefaultOpen`.
pub fn im_gui_tree_node_flags_default_open() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_OpenOnDoubleClick`.
pub fn im_gui_tree_node_flags_open_on_double_click() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_OpenOnArrow`.
pub fn im_gui_tree_node_flags_open_on_arrow() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_Leaf`.
pub fn im_gui_tree_node_flags_leaf() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_Bullet`.
pub fn im_gui_tree_node_flags_bullet() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_FramePadding`.
pub fn im_gui_tree_node_flags_frame_padding() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_SpanAvailWidth`.
pub fn im_gui_tree_node_flags_span_avail_width() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_SpanFullWidth`.
pub fn im_gui_tree_node_flags_span_full_width() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_SpanLabelWidth`.
pub fn im_gui_tree_node_flags_span_label_width() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_SpanAllColumns`.
pub fn im_gui_tree_node_flags_span_all_columns() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_LabelSpanAllColumns`.
pub fn im_gui_tree_node_flags_label_span_all_columns() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_NavLeftJumpsToParent`.
pub fn im_gui_tree_node_flags_nav_left_jumps_to_parent() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_CollapsingHeader`.
pub fn im_gui_tree_node_flags_collapsing_header() -> Int {
  26
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_DrawLinesNone`.
pub fn im_gui_tree_node_flags_draw_lines_none() -> Int {
  262144
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_DrawLinesFull`.
pub fn im_gui_tree_node_flags_draw_lines_full() -> Int {
  524288
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_DrawLinesToNodes`.
pub fn im_gui_tree_node_flags_draw_lines_to_nodes() -> Int {
  1048576
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_NavLeftJumpsBackHere`.
pub fn im_gui_tree_node_flags_nav_left_jumps_back_here() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiTreeNodeFlags_SpanTextWidth`.
pub fn im_gui_tree_node_flags_span_text_width() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_None`.
pub fn im_gui_popup_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_MouseButtonLeft`.
pub fn im_gui_popup_flags_mouse_button_left() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_MouseButtonRight`.
pub fn im_gui_popup_flags_mouse_button_right() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_MouseButtonMiddle`.
pub fn im_gui_popup_flags_mouse_button_middle() -> Int {
  12
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_NoReopen`.
pub fn im_gui_popup_flags_no_reopen() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_NoOpenOverExistingPopup`.
pub fn im_gui_popup_flags_no_open_over_existing_popup() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_NoOpenOverItems`.
pub fn im_gui_popup_flags_no_open_over_items() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_AnyPopupId`.
pub fn im_gui_popup_flags_any_popup_id() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_AnyPopupLevel`.
pub fn im_gui_popup_flags_any_popup_level() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiPopupFlags_AnyPopup`.
pub fn im_gui_popup_flags_any_popup() -> Int {
  3072
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_None`.
pub fn im_gui_selectable_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_NoAutoClosePopups`.
pub fn im_gui_selectable_flags_no_auto_close_popups() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_SpanAllColumns`.
pub fn im_gui_selectable_flags_span_all_columns() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_AllowDoubleClick`.
pub fn im_gui_selectable_flags_allow_double_click() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_Disabled`.
pub fn im_gui_selectable_flags_disabled() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_AllowOverlap`.
pub fn im_gui_selectable_flags_allow_overlap() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_Highlight`.
pub fn im_gui_selectable_flags_highlight() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_SelectOnNav`.
pub fn im_gui_selectable_flags_select_on_nav() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiSelectableFlags_DontClosePopups`.
pub fn im_gui_selectable_flags_dont_close_popups() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_None`.
pub fn im_gui_combo_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_PopupAlignLeft`.
pub fn im_gui_combo_flags_popup_align_left() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_HeightSmall`.
pub fn im_gui_combo_flags_height_small() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_HeightRegular`.
pub fn im_gui_combo_flags_height_regular() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_HeightLarge`.
pub fn im_gui_combo_flags_height_large() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_HeightLargest`.
pub fn im_gui_combo_flags_height_largest() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_NoArrowButton`.
pub fn im_gui_combo_flags_no_arrow_button() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_NoPreview`.
pub fn im_gui_combo_flags_no_preview() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiComboFlags_WidthFitPreview`.
pub fn im_gui_combo_flags_width_fit_preview() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_None`.
pub fn im_gui_tab_bar_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_Reorderable`.
pub fn im_gui_tab_bar_flags_reorderable() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_AutoSelectNewTabs`.
pub fn im_gui_tab_bar_flags_auto_select_new_tabs() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_TabListPopupButton`.
pub fn im_gui_tab_bar_flags_tab_list_popup_button() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_NoCloseWithMiddleMouseButton`.
pub fn im_gui_tab_bar_flags_no_close_with_middle_mouse_button() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_NoTabListScrollingButtons`.
pub fn im_gui_tab_bar_flags_no_tab_list_scrolling_buttons() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_NoTooltip`.
pub fn im_gui_tab_bar_flags_no_tooltip() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_DrawSelectedOverline`.
pub fn im_gui_tab_bar_flags_draw_selected_overline() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_FittingPolicyMixed`.
pub fn im_gui_tab_bar_flags_fitting_policy_mixed() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_FittingPolicyShrink`.
pub fn im_gui_tab_bar_flags_fitting_policy_shrink() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_FittingPolicyScroll`.
pub fn im_gui_tab_bar_flags_fitting_policy_scroll() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiTabBarFlags_FittingPolicyResizeDown`.
pub fn im_gui_tab_bar_flags_fitting_policy_resize_down() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_None`.
pub fn im_gui_tab_item_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_UnsavedDocument`.
pub fn im_gui_tab_item_flags_unsaved_document() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_SetSelected`.
pub fn im_gui_tab_item_flags_set_selected() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_NoCloseWithMiddleMouseButton`.
pub fn im_gui_tab_item_flags_no_close_with_middle_mouse_button() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_NoPushId`.
pub fn im_gui_tab_item_flags_no_push_id() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_NoTooltip`.
pub fn im_gui_tab_item_flags_no_tooltip() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_NoReorder`.
pub fn im_gui_tab_item_flags_no_reorder() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_Leading`.
pub fn im_gui_tab_item_flags_leading() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_Trailing`.
pub fn im_gui_tab_item_flags_trailing() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiTabItemFlags_NoAssumedClosure`.
pub fn im_gui_tab_item_flags_no_assumed_closure() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiFocusedFlags_None`.
pub fn im_gui_focused_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiFocusedFlags_ChildWindows`.
pub fn im_gui_focused_flags_child_windows() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiFocusedFlags_RootWindow`.
pub fn im_gui_focused_flags_root_window() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiFocusedFlags_AnyWindow`.
pub fn im_gui_focused_flags_any_window() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiFocusedFlags_NoPopupHierarchy`.
pub fn im_gui_focused_flags_no_popup_hierarchy() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiFocusedFlags_RootAndChildWindows`.
pub fn im_gui_focused_flags_root_and_child_windows() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_None`.
pub fn im_gui_hovered_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_ChildWindows`.
pub fn im_gui_hovered_flags_child_windows() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_RootWindow`.
pub fn im_gui_hovered_flags_root_window() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_AnyWindow`.
pub fn im_gui_hovered_flags_any_window() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_NoPopupHierarchy`.
pub fn im_gui_hovered_flags_no_popup_hierarchy() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_AllowWhenBlockedByPopup`.
pub fn im_gui_hovered_flags_allow_when_blocked_by_popup() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_AllowWhenBlockedByActiveItem`.
pub fn im_gui_hovered_flags_allow_when_blocked_by_active_item() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_AllowWhenOverlappedByItem`.
pub fn im_gui_hovered_flags_allow_when_overlapped_by_item() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_AllowWhenOverlappedByWindow`.
pub fn im_gui_hovered_flags_allow_when_overlapped_by_window() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_AllowWhenDisabled`.
pub fn im_gui_hovered_flags_allow_when_disabled() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_NoNavOverride`.
pub fn im_gui_hovered_flags_no_nav_override() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_AllowWhenOverlapped`.
pub fn im_gui_hovered_flags_allow_when_overlapped() -> Int {
  768
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_RectOnly`.
pub fn im_gui_hovered_flags_rect_only() -> Int {
  928
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_RootAndChildWindows`.
pub fn im_gui_hovered_flags_root_and_child_windows() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_ForTooltip`.
pub fn im_gui_hovered_flags_for_tooltip() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_Stationary`.
pub fn im_gui_hovered_flags_stationary() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_DelayNone`.
pub fn im_gui_hovered_flags_delay_none() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_DelayShort`.
pub fn im_gui_hovered_flags_delay_short() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_DelayNormal`.
pub fn im_gui_hovered_flags_delay_normal() -> Int {
  65536
}

///|
/// Generated constant binding for enum value `ImGuiHoveredFlags_NoSharedDelay`.
pub fn im_gui_hovered_flags_no_shared_delay() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_None`.
pub fn im_gui_drag_drop_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_SourceNoPreviewTooltip`.
pub fn im_gui_drag_drop_flags_source_no_preview_tooltip() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_SourceNoDisableHover`.
pub fn im_gui_drag_drop_flags_source_no_disable_hover() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_SourceNoHoldToOpenOthers`.
pub fn im_gui_drag_drop_flags_source_no_hold_to_open_others() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_SourceAllowNullID`.
pub fn im_gui_drag_drop_flags_source_allow_null_id() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_SourceExtern`.
pub fn im_gui_drag_drop_flags_source_extern() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_PayloadAutoExpire`.
pub fn im_gui_drag_drop_flags_payload_auto_expire() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_PayloadNoCrossContext`.
pub fn im_gui_drag_drop_flags_payload_no_cross_context() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_PayloadNoCrossProcess`.
pub fn im_gui_drag_drop_flags_payload_no_cross_process() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_AcceptBeforeDelivery`.
pub fn im_gui_drag_drop_flags_accept_before_delivery() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_AcceptNoDrawDefaultRect`.
pub fn im_gui_drag_drop_flags_accept_no_draw_default_rect() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_AcceptNoPreviewTooltip`.
pub fn im_gui_drag_drop_flags_accept_no_preview_tooltip() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_AcceptDrawAsHovered`.
pub fn im_gui_drag_drop_flags_accept_draw_as_hovered() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_AcceptPeekOnly`.
pub fn im_gui_drag_drop_flags_accept_peek_only() -> Int {
  3072
}

///|
/// Generated constant binding for enum value `ImGuiDragDropFlags_SourceAutoExpirePayload`.
pub fn im_gui_drag_drop_flags_source_auto_expire_payload() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiDataType_S8`.
pub fn im_gui_data_type_s8() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiDataType_U8`.
pub fn im_gui_data_type_u8() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiDataType_S16`.
pub fn im_gui_data_type_s16() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiDataType_U16`.
pub fn im_gui_data_type_u16() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiDataType_S32`.
pub fn im_gui_data_type_s32() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiDataType_U32`.
pub fn im_gui_data_type_u32() -> Int {
  5
}

///|
/// Generated constant binding for enum value `ImGuiDataType_S64`.
pub fn im_gui_data_type_s64() -> Int {
  6
}

///|
/// Generated constant binding for enum value `ImGuiDataType_U64`.
pub fn im_gui_data_type_u64() -> Int {
  7
}

///|
/// Generated constant binding for enum value `ImGuiDataType_Float`.
pub fn im_gui_data_type_float() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiDataType_Double`.
pub fn im_gui_data_type_double() -> Int {
  9
}

///|
/// Generated constant binding for enum value `ImGuiDataType_Bool`.
pub fn im_gui_data_type_bool() -> Int {
  10
}

///|
/// Generated constant binding for enum value `ImGuiDataType_String`.
pub fn im_gui_data_type_string() -> Int {
  11
}

///|
/// Generated constant binding for enum value `ImGuiDataType_COUNT`.
pub fn im_gui_data_type_count() -> Int {
  12
}

///|
/// Generated constant binding for enum value `ImGuiDir_None`.
pub fn im_gui_dir_none() -> Int {
  -1
}

///|
/// Generated constant binding for enum value `ImGuiDir_Left`.
pub fn im_gui_dir_left() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiDir_Right`.
pub fn im_gui_dir_right() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiDir_Up`.
pub fn im_gui_dir_up() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiDir_Down`.
pub fn im_gui_dir_down() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiDir_COUNT`.
pub fn im_gui_dir_count() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiSortDirection_None`.
pub fn im_gui_sort_direction_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiSortDirection_Ascending`.
pub fn im_gui_sort_direction_ascending() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiSortDirection_Descending`.
pub fn im_gui_sort_direction_descending() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiKey_None`.
pub fn im_gui_key_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiKey_NamedKey_BEGIN`.
pub fn im_gui_key_named_key_begin() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiKey_Tab`.
pub fn im_gui_key_tab() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiKey_LeftArrow`.
pub fn im_gui_key_left_arrow() -> Int {
  513
}

///|
/// Generated constant binding for enum value `ImGuiKey_RightArrow`.
pub fn im_gui_key_right_arrow() -> Int {
  514
}

///|
/// Generated constant binding for enum value `ImGuiKey_UpArrow`.
pub fn im_gui_key_up_arrow() -> Int {
  515
}

///|
/// Generated constant binding for enum value `ImGuiKey_DownArrow`.
pub fn im_gui_key_down_arrow() -> Int {
  516
}

///|
/// Generated constant binding for enum value `ImGuiKey_PageUp`.
pub fn im_gui_key_page_up() -> Int {
  517
}

///|
/// Generated constant binding for enum value `ImGuiKey_PageDown`.
pub fn im_gui_key_page_down() -> Int {
  518
}

///|
/// Generated constant binding for enum value `ImGuiKey_Home`.
pub fn im_gui_key_home() -> Int {
  519
}

///|
/// Generated constant binding for enum value `ImGuiKey_End`.
pub fn im_gui_key_end() -> Int {
  520
}

///|
/// Generated constant binding for enum value `ImGuiKey_Insert`.
pub fn im_gui_key_insert() -> Int {
  521
}

///|
/// Generated constant binding for enum value `ImGuiKey_Delete`.
pub fn im_gui_key_delete() -> Int {
  522
}

///|
/// Generated constant binding for enum value `ImGuiKey_Backspace`.
pub fn im_gui_key_backspace() -> Int {
  523
}

///|
/// Generated constant binding for enum value `ImGuiKey_Space`.
pub fn im_gui_key_space() -> Int {
  524
}

///|
/// Generated constant binding for enum value `ImGuiKey_Enter`.
pub fn im_gui_key_enter() -> Int {
  525
}

///|
/// Generated constant binding for enum value `ImGuiKey_Escape`.
pub fn im_gui_key_escape() -> Int {
  526
}

///|
/// Generated constant binding for enum value `ImGuiKey_LeftCtrl`.
pub fn im_gui_key_left_ctrl() -> Int {
  527
}

///|
/// Generated constant binding for enum value `ImGuiKey_LeftShift`.
pub fn im_gui_key_left_shift() -> Int {
  528
}

///|
/// Generated constant binding for enum value `ImGuiKey_LeftAlt`.
pub fn im_gui_key_left_alt() -> Int {
  529
}

///|
/// Generated constant binding for enum value `ImGuiKey_LeftSuper`.
pub fn im_gui_key_left_super() -> Int {
  530
}

///|
/// Generated constant binding for enum value `ImGuiKey_RightCtrl`.
pub fn im_gui_key_right_ctrl() -> Int {
  531
}

///|
/// Generated constant binding for enum value `ImGuiKey_RightShift`.
pub fn im_gui_key_right_shift() -> Int {
  532
}

///|
/// Generated constant binding for enum value `ImGuiKey_RightAlt`.
pub fn im_gui_key_right_alt() -> Int {
  533
}

///|
/// Generated constant binding for enum value `ImGuiKey_RightSuper`.
pub fn im_gui_key_right_super() -> Int {
  534
}

///|
/// Generated constant binding for enum value `ImGuiKey_Menu`.
pub fn im_gui_key_menu() -> Int {
  535
}

///|
/// Generated constant binding for enum value `ImGuiKey_0`.
pub fn im_gui_key_0() -> Int {
  536
}

///|
/// Generated constant binding for enum value `ImGuiKey_1`.
pub fn im_gui_key_1() -> Int {
  537
}

///|
/// Generated constant binding for enum value `ImGuiKey_2`.
pub fn im_gui_key_2() -> Int {
  538
}

///|
/// Generated constant binding for enum value `ImGuiKey_3`.
pub fn im_gui_key_3() -> Int {
  539
}

///|
/// Generated constant binding for enum value `ImGuiKey_4`.
pub fn im_gui_key_4() -> Int {
  540
}

///|
/// Generated constant binding for enum value `ImGuiKey_5`.
pub fn im_gui_key_5() -> Int {
  541
}

///|
/// Generated constant binding for enum value `ImGuiKey_6`.
pub fn im_gui_key_6() -> Int {
  542
}

///|
/// Generated constant binding for enum value `ImGuiKey_7`.
pub fn im_gui_key_7() -> Int {
  543
}

///|
/// Generated constant binding for enum value `ImGuiKey_8`.
pub fn im_gui_key_8() -> Int {
  544
}

///|
/// Generated constant binding for enum value `ImGuiKey_9`.
pub fn im_gui_key_9() -> Int {
  545
}

///|
/// Generated constant binding for enum value `ImGuiKey_A`.
pub fn im_gui_key_a() -> Int {
  546
}

///|
/// Generated constant binding for enum value `ImGuiKey_B`.
pub fn im_gui_key_b() -> Int {
  547
}

///|
/// Generated constant binding for enum value `ImGuiKey_C`.
pub fn im_gui_key_c() -> Int {
  548
}

///|
/// Generated constant binding for enum value `ImGuiKey_D`.
pub fn im_gui_key_d() -> Int {
  549
}

///|
/// Generated constant binding for enum value `ImGuiKey_E`.
pub fn im_gui_key_e() -> Int {
  550
}

///|
/// Generated constant binding for enum value `ImGuiKey_F`.
pub fn im_gui_key_f() -> Int {
  551
}

///|
/// Generated constant binding for enum value `ImGuiKey_G`.
pub fn im_gui_key_g() -> Int {
  552
}

///|
/// Generated constant binding for enum value `ImGuiKey_H`.
pub fn im_gui_key_h() -> Int {
  553
}

///|
/// Generated constant binding for enum value `ImGuiKey_I`.
pub fn im_gui_key_i() -> Int {
  554
}

///|
/// Generated constant binding for enum value `ImGuiKey_J`.
pub fn im_gui_key_j() -> Int {
  555
}

///|
/// Generated constant binding for enum value `ImGuiKey_K`.
pub fn im_gui_key_k() -> Int {
  556
}

///|
/// Generated constant binding for enum value `ImGuiKey_L`.
pub fn im_gui_key_l() -> Int {
  557
}

///|
/// Generated constant binding for enum value `ImGuiKey_M`.
pub fn im_gui_key_m() -> Int {
  558
}

///|
/// Generated constant binding for enum value `ImGuiKey_N`.
pub fn im_gui_key_n() -> Int {
  559
}

///|
/// Generated constant binding for enum value `ImGuiKey_O`.
pub fn im_gui_key_o() -> Int {
  560
}

///|
/// Generated constant binding for enum value `ImGuiKey_P`.
pub fn im_gui_key_p() -> Int {
  561
}

///|
/// Generated constant binding for enum value `ImGuiKey_Q`.
pub fn im_gui_key_q() -> Int {
  562
}

///|
/// Generated constant binding for enum value `ImGuiKey_R`.
pub fn im_gui_key_r() -> Int {
  563
}

///|
/// Generated constant binding for enum value `ImGuiKey_S`.
pub fn im_gui_key_s() -> Int {
  564
}

///|
/// Generated constant binding for enum value `ImGuiKey_T`.
pub fn im_gui_key_t() -> Int {
  565
}

///|
/// Generated constant binding for enum value `ImGuiKey_U`.
pub fn im_gui_key_u() -> Int {
  566
}

///|
/// Generated constant binding for enum value `ImGuiKey_V`.
pub fn im_gui_key_v() -> Int {
  567
}

///|
/// Generated constant binding for enum value `ImGuiKey_W`.
pub fn im_gui_key_w() -> Int {
  568
}

///|
/// Generated constant binding for enum value `ImGuiKey_X`.
pub fn im_gui_key_x() -> Int {
  569
}

///|
/// Generated constant binding for enum value `ImGuiKey_Y`.
pub fn im_gui_key_y() -> Int {
  570
}

///|
/// Generated constant binding for enum value `ImGuiKey_Z`.
pub fn im_gui_key_z() -> Int {
  571
}

///|
/// Generated constant binding for enum value `ImGuiKey_F1`.
pub fn im_gui_key_f1() -> Int {
  572
}

///|
/// Generated constant binding for enum value `ImGuiKey_F2`.
pub fn im_gui_key_f2() -> Int {
  573
}

///|
/// Generated constant binding for enum value `ImGuiKey_F3`.
pub fn im_gui_key_f3() -> Int {
  574
}

///|
/// Generated constant binding for enum value `ImGuiKey_F4`.
pub fn im_gui_key_f4() -> Int {
  575
}

///|
/// Generated constant binding for enum value `ImGuiKey_F5`.
pub fn im_gui_key_f5() -> Int {
  576
}

///|
/// Generated constant binding for enum value `ImGuiKey_F6`.
pub fn im_gui_key_f6() -> Int {
  577
}

///|
/// Generated constant binding for enum value `ImGuiKey_F7`.
pub fn im_gui_key_f7() -> Int {
  578
}

///|
/// Generated constant binding for enum value `ImGuiKey_F8`.
pub fn im_gui_key_f8() -> Int {
  579
}

///|
/// Generated constant binding for enum value `ImGuiKey_F9`.
pub fn im_gui_key_f9() -> Int {
  580
}

///|
/// Generated constant binding for enum value `ImGuiKey_F10`.
pub fn im_gui_key_f10() -> Int {
  581
}

///|
/// Generated constant binding for enum value `ImGuiKey_F11`.
pub fn im_gui_key_f11() -> Int {
  582
}

///|
/// Generated constant binding for enum value `ImGuiKey_F12`.
pub fn im_gui_key_f12() -> Int {
  583
}

///|
/// Generated constant binding for enum value `ImGuiKey_F13`.
pub fn im_gui_key_f13() -> Int {
  584
}

///|
/// Generated constant binding for enum value `ImGuiKey_F14`.
pub fn im_gui_key_f14() -> Int {
  585
}

///|
/// Generated constant binding for enum value `ImGuiKey_F15`.
pub fn im_gui_key_f15() -> Int {
  586
}

///|
/// Generated constant binding for enum value `ImGuiKey_F16`.
pub fn im_gui_key_f16() -> Int {
  587
}

///|
/// Generated constant binding for enum value `ImGuiKey_F17`.
pub fn im_gui_key_f17() -> Int {
  588
}

///|
/// Generated constant binding for enum value `ImGuiKey_F18`.
pub fn im_gui_key_f18() -> Int {
  589
}

///|
/// Generated constant binding for enum value `ImGuiKey_F19`.
pub fn im_gui_key_f19() -> Int {
  590
}

///|
/// Generated constant binding for enum value `ImGuiKey_F20`.
pub fn im_gui_key_f20() -> Int {
  591
}

///|
/// Generated constant binding for enum value `ImGuiKey_F21`.
pub fn im_gui_key_f21() -> Int {
  592
}

///|
/// Generated constant binding for enum value `ImGuiKey_F22`.
pub fn im_gui_key_f22() -> Int {
  593
}

///|
/// Generated constant binding for enum value `ImGuiKey_F23`.
pub fn im_gui_key_f23() -> Int {
  594
}

///|
/// Generated constant binding for enum value `ImGuiKey_F24`.
pub fn im_gui_key_f24() -> Int {
  595
}

///|
/// Generated constant binding for enum value `ImGuiKey_Apostrophe`.
pub fn im_gui_key_apostrophe() -> Int {
  596
}

///|
/// Generated constant binding for enum value `ImGuiKey_Comma`.
pub fn im_gui_key_comma() -> Int {
  597
}

///|
/// Generated constant binding for enum value `ImGuiKey_Minus`.
pub fn im_gui_key_minus() -> Int {
  598
}

///|
/// Generated constant binding for enum value `ImGuiKey_Period`.
pub fn im_gui_key_period() -> Int {
  599
}

///|
/// Generated constant binding for enum value `ImGuiKey_Slash`.
pub fn im_gui_key_slash() -> Int {
  600
}

///|
/// Generated constant binding for enum value `ImGuiKey_Semicolon`.
pub fn im_gui_key_semicolon() -> Int {
  601
}

///|
/// Generated constant binding for enum value `ImGuiKey_Equal`.
pub fn im_gui_key_equal() -> Int {
  602
}

///|
/// Generated constant binding for enum value `ImGuiKey_LeftBracket`.
pub fn im_gui_key_left_bracket() -> Int {
  603
}

///|
/// Generated constant binding for enum value `ImGuiKey_Backslash`.
pub fn im_gui_key_backslash() -> Int {
  604
}

///|
/// Generated constant binding for enum value `ImGuiKey_RightBracket`.
pub fn im_gui_key_right_bracket() -> Int {
  605
}

///|
/// Generated constant binding for enum value `ImGuiKey_GraveAccent`.
pub fn im_gui_key_grave_accent() -> Int {
  606
}

///|
/// Generated constant binding for enum value `ImGuiKey_CapsLock`.
pub fn im_gui_key_caps_lock() -> Int {
  607
}

///|
/// Generated constant binding for enum value `ImGuiKey_ScrollLock`.
pub fn im_gui_key_scroll_lock() -> Int {
  608
}

///|
/// Generated constant binding for enum value `ImGuiKey_NumLock`.
pub fn im_gui_key_num_lock() -> Int {
  609
}

///|
/// Generated constant binding for enum value `ImGuiKey_PrintScreen`.
pub fn im_gui_key_print_screen() -> Int {
  610
}

///|
/// Generated constant binding for enum value `ImGuiKey_Pause`.
pub fn im_gui_key_pause() -> Int {
  611
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad0`.
pub fn im_gui_key_keypad0() -> Int {
  612
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad1`.
pub fn im_gui_key_keypad1() -> Int {
  613
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad2`.
pub fn im_gui_key_keypad2() -> Int {
  614
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad3`.
pub fn im_gui_key_keypad3() -> Int {
  615
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad4`.
pub fn im_gui_key_keypad4() -> Int {
  616
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad5`.
pub fn im_gui_key_keypad5() -> Int {
  617
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad6`.
pub fn im_gui_key_keypad6() -> Int {
  618
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad7`.
pub fn im_gui_key_keypad7() -> Int {
  619
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad8`.
pub fn im_gui_key_keypad8() -> Int {
  620
}

///|
/// Generated constant binding for enum value `ImGuiKey_Keypad9`.
pub fn im_gui_key_keypad9() -> Int {
  621
}

///|
/// Generated constant binding for enum value `ImGuiKey_KeypadDecimal`.
pub fn im_gui_key_keypad_decimal() -> Int {
  622
}

///|
/// Generated constant binding for enum value `ImGuiKey_KeypadDivide`.
pub fn im_gui_key_keypad_divide() -> Int {
  623
}

///|
/// Generated constant binding for enum value `ImGuiKey_KeypadMultiply`.
pub fn im_gui_key_keypad_multiply() -> Int {
  624
}

///|
/// Generated constant binding for enum value `ImGuiKey_KeypadSubtract`.
pub fn im_gui_key_keypad_subtract() -> Int {
  625
}

///|
/// Generated constant binding for enum value `ImGuiKey_KeypadAdd`.
pub fn im_gui_key_keypad_add() -> Int {
  626
}

///|
/// Generated constant binding for enum value `ImGuiKey_KeypadEnter`.
pub fn im_gui_key_keypad_enter() -> Int {
  627
}

///|
/// Generated constant binding for enum value `ImGuiKey_KeypadEqual`.
pub fn im_gui_key_keypad_equal() -> Int {
  628
}

///|
/// Generated constant binding for enum value `ImGuiKey_AppBack`.
pub fn im_gui_key_app_back() -> Int {
  629
}

///|
/// Generated constant binding for enum value `ImGuiKey_AppForward`.
pub fn im_gui_key_app_forward() -> Int {
  630
}

///|
/// Generated constant binding for enum value `ImGuiKey_Oem102`.
pub fn im_gui_key_oem102() -> Int {
  631
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadStart`.
pub fn im_gui_key_gamepad_start() -> Int {
  632
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadBack`.
pub fn im_gui_key_gamepad_back() -> Int {
  633
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadFaceLeft`.
pub fn im_gui_key_gamepad_face_left() -> Int {
  634
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadFaceRight`.
pub fn im_gui_key_gamepad_face_right() -> Int {
  635
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadFaceUp`.
pub fn im_gui_key_gamepad_face_up() -> Int {
  636
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadFaceDown`.
pub fn im_gui_key_gamepad_face_down() -> Int {
  637
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadDpadLeft`.
pub fn im_gui_key_gamepad_dpad_left() -> Int {
  638
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadDpadRight`.
pub fn im_gui_key_gamepad_dpad_right() -> Int {
  639
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadDpadUp`.
pub fn im_gui_key_gamepad_dpad_up() -> Int {
  640
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadDpadDown`.
pub fn im_gui_key_gamepad_dpad_down() -> Int {
  641
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadL1`.
pub fn im_gui_key_gamepad_l1() -> Int {
  642
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadR1`.
pub fn im_gui_key_gamepad_r1() -> Int {
  643
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadL2`.
pub fn im_gui_key_gamepad_l2() -> Int {
  644
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadR2`.
pub fn im_gui_key_gamepad_r2() -> Int {
  645
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadL3`.
pub fn im_gui_key_gamepad_l3() -> Int {
  646
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadR3`.
pub fn im_gui_key_gamepad_r3() -> Int {
  647
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadLStickLeft`.
pub fn im_gui_key_gamepad_l_stick_left() -> Int {
  648
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadLStickRight`.
pub fn im_gui_key_gamepad_l_stick_right() -> Int {
  649
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadLStickUp`.
pub fn im_gui_key_gamepad_l_stick_up() -> Int {
  650
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadLStickDown`.
pub fn im_gui_key_gamepad_l_stick_down() -> Int {
  651
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadRStickLeft`.
pub fn im_gui_key_gamepad_r_stick_left() -> Int {
  652
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadRStickRight`.
pub fn im_gui_key_gamepad_r_stick_right() -> Int {
  653
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadRStickUp`.
pub fn im_gui_key_gamepad_r_stick_up() -> Int {
  654
}

///|
/// Generated constant binding for enum value `ImGuiKey_GamepadRStickDown`.
pub fn im_gui_key_gamepad_r_stick_down() -> Int {
  655
}

///|
/// Generated constant binding for enum value `ImGuiKey_MouseLeft`.
pub fn im_gui_key_mouse_left() -> Int {
  656
}

///|
/// Generated constant binding for enum value `ImGuiKey_MouseRight`.
pub fn im_gui_key_mouse_right() -> Int {
  657
}

///|
/// Generated constant binding for enum value `ImGuiKey_MouseMiddle`.
pub fn im_gui_key_mouse_middle() -> Int {
  658
}

///|
/// Generated constant binding for enum value `ImGuiKey_MouseX1`.
pub fn im_gui_key_mouse_x1() -> Int {
  659
}

///|
/// Generated constant binding for enum value `ImGuiKey_MouseX2`.
pub fn im_gui_key_mouse_x2() -> Int {
  660
}

///|
/// Generated constant binding for enum value `ImGuiKey_MouseWheelX`.
pub fn im_gui_key_mouse_wheel_x() -> Int {
  661
}

///|
/// Generated constant binding for enum value `ImGuiKey_MouseWheelY`.
pub fn im_gui_key_mouse_wheel_y() -> Int {
  662
}

///|
/// Generated constant binding for enum value `ImGuiMod_None`.
pub fn im_gui_mod_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiMod_Ctrl`.
pub fn im_gui_mod_ctrl() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiMod_Shift`.
pub fn im_gui_mod_shift() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiMod_Alt`.
pub fn im_gui_mod_alt() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiMod_Super`.
pub fn im_gui_mod_super() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiKey_COUNT`.
pub fn im_gui_key_count() -> Int {
  667
}

///|
/// Generated constant binding for enum value `ImGuiMod_Shortcut`.
pub fn im_gui_mod_shortcut() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_None`.
pub fn im_gui_input_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_Repeat`.
pub fn im_gui_input_flags_repeat() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_RouteActive`.
pub fn im_gui_input_flags_route_active() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_RouteFocused`.
pub fn im_gui_input_flags_route_focused() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_RouteGlobal`.
pub fn im_gui_input_flags_route_global() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_RouteAlways`.
pub fn im_gui_input_flags_route_always() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_RouteOverFocused`.
pub fn im_gui_input_flags_route_over_focused() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_RouteOverActive`.
pub fn im_gui_input_flags_route_over_active() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_RouteUnlessBgFocused`.
pub fn im_gui_input_flags_route_unless_bg_focused() -> Int {
  65536
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_RouteFromRootWindow`.
pub fn im_gui_input_flags_route_from_root_window() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiInputFlags_Tooltip`.
pub fn im_gui_input_flags_tooltip() -> Int {
  262144
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_None`.
pub fn im_gui_config_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_NavEnableKeyboard`.
pub fn im_gui_config_flags_nav_enable_keyboard() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_NavEnableGamepad`.
pub fn im_gui_config_flags_nav_enable_gamepad() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_NoMouse`.
pub fn im_gui_config_flags_no_mouse() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_NoMouseCursorChange`.
pub fn im_gui_config_flags_no_mouse_cursor_change() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_NoKeyboard`.
pub fn im_gui_config_flags_no_keyboard() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_IsSRGB`.
pub fn im_gui_config_flags_is_srgb() -> Int {
  1048576
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_IsTouchScreen`.
pub fn im_gui_config_flags_is_touch_screen() -> Int {
  2097152
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_NavEnableSetMousePos`.
pub fn im_gui_config_flags_nav_enable_set_mouse_pos() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiConfigFlags_NavNoCaptureKeyboard`.
pub fn im_gui_config_flags_nav_no_capture_keyboard() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiBackendFlags_None`.
pub fn im_gui_backend_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiBackendFlags_HasGamepad`.
pub fn im_gui_backend_flags_has_gamepad() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiBackendFlags_HasMouseCursors`.
pub fn im_gui_backend_flags_has_mouse_cursors() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiBackendFlags_HasSetMousePos`.
pub fn im_gui_backend_flags_has_set_mouse_pos() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiBackendFlags_RendererHasVtxOffset`.
pub fn im_gui_backend_flags_renderer_has_vtx_offset() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiBackendFlags_RendererHasTextures`.
pub fn im_gui_backend_flags_renderer_has_textures() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiCol_Text`.
pub fn im_gui_col_text() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiCol_TextDisabled`.
pub fn im_gui_col_text_disabled() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiCol_WindowBg`.
pub fn im_gui_col_window_bg() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiCol_ChildBg`.
pub fn im_gui_col_child_bg() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiCol_PopupBg`.
pub fn im_gui_col_popup_bg() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiCol_Border`.
pub fn im_gui_col_border() -> Int {
  5
}

///|
/// Generated constant binding for enum value `ImGuiCol_BorderShadow`.
pub fn im_gui_col_border_shadow() -> Int {
  6
}

///|
/// Generated constant binding for enum value `ImGuiCol_FrameBg`.
pub fn im_gui_col_frame_bg() -> Int {
  7
}

///|
/// Generated constant binding for enum value `ImGuiCol_FrameBgHovered`.
pub fn im_gui_col_frame_bg_hovered() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiCol_FrameBgActive`.
pub fn im_gui_col_frame_bg_active() -> Int {
  9
}

///|
/// Generated constant binding for enum value `ImGuiCol_TitleBg`.
pub fn im_gui_col_title_bg() -> Int {
  10
}

///|
/// Generated constant binding for enum value `ImGuiCol_TitleBgActive`.
pub fn im_gui_col_title_bg_active() -> Int {
  11
}

///|
/// Generated constant binding for enum value `ImGuiCol_TitleBgCollapsed`.
pub fn im_gui_col_title_bg_collapsed() -> Int {
  12
}

///|
/// Generated constant binding for enum value `ImGuiCol_MenuBarBg`.
pub fn im_gui_col_menu_bar_bg() -> Int {
  13
}

///|
/// Generated constant binding for enum value `ImGuiCol_ScrollbarBg`.
pub fn im_gui_col_scrollbar_bg() -> Int {
  14
}

///|
/// Generated constant binding for enum value `ImGuiCol_ScrollbarGrab`.
pub fn im_gui_col_scrollbar_grab() -> Int {
  15
}

///|
/// Generated constant binding for enum value `ImGuiCol_ScrollbarGrabHovered`.
pub fn im_gui_col_scrollbar_grab_hovered() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiCol_ScrollbarGrabActive`.
pub fn im_gui_col_scrollbar_grab_active() -> Int {
  17
}

///|
/// Generated constant binding for enum value `ImGuiCol_CheckMark`.
pub fn im_gui_col_check_mark() -> Int {
  18
}

///|
/// Generated constant binding for enum value `ImGuiCol_CheckboxSelectedBg`.
pub fn im_gui_col_checkbox_selected_bg() -> Int {
  19
}

///|
/// Generated constant binding for enum value `ImGuiCol_SliderGrab`.
pub fn im_gui_col_slider_grab() -> Int {
  20
}

///|
/// Generated constant binding for enum value `ImGuiCol_SliderGrabActive`.
pub fn im_gui_col_slider_grab_active() -> Int {
  21
}

///|
/// Generated constant binding for enum value `ImGuiCol_Button`.
pub fn im_gui_col_button() -> Int {
  22
}

///|
/// Generated constant binding for enum value `ImGuiCol_ButtonHovered`.
pub fn im_gui_col_button_hovered() -> Int {
  23
}

///|
/// Generated constant binding for enum value `ImGuiCol_ButtonActive`.
pub fn im_gui_col_button_active() -> Int {
  24
}

///|
/// Generated constant binding for enum value `ImGuiCol_Header`.
pub fn im_gui_col_header() -> Int {
  25
}

///|
/// Generated constant binding for enum value `ImGuiCol_HeaderHovered`.
pub fn im_gui_col_header_hovered() -> Int {
  26
}

///|
/// Generated constant binding for enum value `ImGuiCol_HeaderActive`.
pub fn im_gui_col_header_active() -> Int {
  27
}

///|
/// Generated constant binding for enum value `ImGuiCol_Separator`.
pub fn im_gui_col_separator() -> Int {
  28
}

///|
/// Generated constant binding for enum value `ImGuiCol_SeparatorHovered`.
pub fn im_gui_col_separator_hovered() -> Int {
  29
}

///|
/// Generated constant binding for enum value `ImGuiCol_SeparatorActive`.
pub fn im_gui_col_separator_active() -> Int {
  30
}

///|
/// Generated constant binding for enum value `ImGuiCol_ResizeGrip`.
pub fn im_gui_col_resize_grip() -> Int {
  31
}

///|
/// Generated constant binding for enum value `ImGuiCol_ResizeGripHovered`.
pub fn im_gui_col_resize_grip_hovered() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiCol_ResizeGripActive`.
pub fn im_gui_col_resize_grip_active() -> Int {
  33
}

///|
/// Generated constant binding for enum value `ImGuiCol_InputTextCursor`.
pub fn im_gui_col_input_text_cursor() -> Int {
  34
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabHovered`.
pub fn im_gui_col_tab_hovered() -> Int {
  35
}

///|
/// Generated constant binding for enum value `ImGuiCol_Tab`.
pub fn im_gui_col_tab() -> Int {
  36
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabSelected`.
pub fn im_gui_col_tab_selected() -> Int {
  37
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabSelectedOverline`.
pub fn im_gui_col_tab_selected_overline() -> Int {
  38
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabDimmed`.
pub fn im_gui_col_tab_dimmed() -> Int {
  39
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabDimmedSelected`.
pub fn im_gui_col_tab_dimmed_selected() -> Int {
  40
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabDimmedSelectedOverline`.
pub fn im_gui_col_tab_dimmed_selected_overline() -> Int {
  41
}

///|
/// Generated constant binding for enum value `ImGuiCol_PlotLines`.
pub fn im_gui_col_plot_lines() -> Int {
  42
}

///|
/// Generated constant binding for enum value `ImGuiCol_PlotLinesHovered`.
pub fn im_gui_col_plot_lines_hovered() -> Int {
  43
}

///|
/// Generated constant binding for enum value `ImGuiCol_PlotHistogram`.
pub fn im_gui_col_plot_histogram() -> Int {
  44
}

///|
/// Generated constant binding for enum value `ImGuiCol_PlotHistogramHovered`.
pub fn im_gui_col_plot_histogram_hovered() -> Int {
  45
}

///|
/// Generated constant binding for enum value `ImGuiCol_TableHeaderBg`.
pub fn im_gui_col_table_header_bg() -> Int {
  46
}

///|
/// Generated constant binding for enum value `ImGuiCol_TableBorderStrong`.
pub fn im_gui_col_table_border_strong() -> Int {
  47
}

///|
/// Generated constant binding for enum value `ImGuiCol_TableBorderLight`.
pub fn im_gui_col_table_border_light() -> Int {
  48
}

///|
/// Generated constant binding for enum value `ImGuiCol_TableRowBg`.
pub fn im_gui_col_table_row_bg() -> Int {
  49
}

///|
/// Generated constant binding for enum value `ImGuiCol_TableRowBgAlt`.
pub fn im_gui_col_table_row_bg_alt() -> Int {
  50
}

///|
/// Generated constant binding for enum value `ImGuiCol_TextLink`.
pub fn im_gui_col_text_link() -> Int {
  51
}

///|
/// Generated constant binding for enum value `ImGuiCol_TextSelectedBg`.
pub fn im_gui_col_text_selected_bg() -> Int {
  52
}

///|
/// Generated constant binding for enum value `ImGuiCol_TreeLines`.
pub fn im_gui_col_tree_lines() -> Int {
  53
}

///|
/// Generated constant binding for enum value `ImGuiCol_DragDropTarget`.
pub fn im_gui_col_drag_drop_target() -> Int {
  54
}

///|
/// Generated constant binding for enum value `ImGuiCol_DragDropTargetBg`.
pub fn im_gui_col_drag_drop_target_bg() -> Int {
  55
}

///|
/// Generated constant binding for enum value `ImGuiCol_UnsavedMarker`.
pub fn im_gui_col_unsaved_marker() -> Int {
  56
}

///|
/// Generated constant binding for enum value `ImGuiCol_NavCursor`.
pub fn im_gui_col_nav_cursor() -> Int {
  57
}

///|
/// Generated constant binding for enum value `ImGuiCol_NavWindowingHighlight`.
pub fn im_gui_col_nav_windowing_highlight() -> Int {
  58
}

///|
/// Generated constant binding for enum value `ImGuiCol_NavWindowingDimBg`.
pub fn im_gui_col_nav_windowing_dim_bg() -> Int {
  59
}

///|
/// Generated constant binding for enum value `ImGuiCol_ModalWindowDimBg`.
pub fn im_gui_col_modal_window_dim_bg() -> Int {
  60
}

///|
/// Generated constant binding for enum value `ImGuiCol_COUNT`.
pub fn im_gui_col_count() -> Int {
  61
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabActive`.
pub fn im_gui_col_tab_active() -> Int {
  37
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabUnfocused`.
pub fn im_gui_col_tab_unfocused() -> Int {
  39
}

///|
/// Generated constant binding for enum value `ImGuiCol_TabUnfocusedActive`.
pub fn im_gui_col_tab_unfocused_active() -> Int {
  40
}

///|
/// Generated constant binding for enum value `ImGuiCol_NavHighlight`.
pub fn im_gui_col_nav_highlight() -> Int {
  57
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_Alpha`.
pub fn im_gui_style_var_alpha() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_DisabledAlpha`.
pub fn im_gui_style_var_disabled_alpha() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_WindowPadding`.
pub fn im_gui_style_var_window_padding() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_WindowRounding`.
pub fn im_gui_style_var_window_rounding() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_WindowBorderSize`.
pub fn im_gui_style_var_window_border_size() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_WindowMinSize`.
pub fn im_gui_style_var_window_min_size() -> Int {
  5
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_WindowTitleAlign`.
pub fn im_gui_style_var_window_title_align() -> Int {
  6
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ChildRounding`.
pub fn im_gui_style_var_child_rounding() -> Int {
  7
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ChildBorderSize`.
pub fn im_gui_style_var_child_border_size() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_PopupRounding`.
pub fn im_gui_style_var_popup_rounding() -> Int {
  9
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_PopupBorderSize`.
pub fn im_gui_style_var_popup_border_size() -> Int {
  10
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_FramePadding`.
pub fn im_gui_style_var_frame_padding() -> Int {
  11
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_FrameRounding`.
pub fn im_gui_style_var_frame_rounding() -> Int {
  12
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_FrameBorderSize`.
pub fn im_gui_style_var_frame_border_size() -> Int {
  13
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ItemSpacing`.
pub fn im_gui_style_var_item_spacing() -> Int {
  14
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ItemInnerSpacing`.
pub fn im_gui_style_var_item_inner_spacing() -> Int {
  15
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_IndentSpacing`.
pub fn im_gui_style_var_indent_spacing() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_CellPadding`.
pub fn im_gui_style_var_cell_padding() -> Int {
  17
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ScrollbarSize`.
pub fn im_gui_style_var_scrollbar_size() -> Int {
  18
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ScrollbarRounding`.
pub fn im_gui_style_var_scrollbar_rounding() -> Int {
  19
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ScrollbarPadding`.
pub fn im_gui_style_var_scrollbar_padding() -> Int {
  20
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_GrabMinSize`.
pub fn im_gui_style_var_grab_min_size() -> Int {
  21
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_GrabRounding`.
pub fn im_gui_style_var_grab_rounding() -> Int {
  22
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ImageRounding`.
pub fn im_gui_style_var_image_rounding() -> Int {
  23
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ImageBorderSize`.
pub fn im_gui_style_var_image_border_size() -> Int {
  24
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TabRounding`.
pub fn im_gui_style_var_tab_rounding() -> Int {
  25
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TabBorderSize`.
pub fn im_gui_style_var_tab_border_size() -> Int {
  26
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TabMinWidthBase`.
pub fn im_gui_style_var_tab_min_width_base() -> Int {
  27
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TabMinWidthShrink`.
pub fn im_gui_style_var_tab_min_width_shrink() -> Int {
  28
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TabBarBorderSize`.
pub fn im_gui_style_var_tab_bar_border_size() -> Int {
  29
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TabBarOverlineSize`.
pub fn im_gui_style_var_tab_bar_overline_size() -> Int {
  30
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TableAngledHeadersAngle`.
pub fn im_gui_style_var_table_angled_headers_angle() -> Int {
  31
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TableAngledHeadersTextAlign`.
pub fn im_gui_style_var_table_angled_headers_text_align() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TreeLinesSize`.
pub fn im_gui_style_var_tree_lines_size() -> Int {
  33
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_TreeLinesRounding`.
pub fn im_gui_style_var_tree_lines_rounding() -> Int {
  34
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_DragDropTargetRounding`.
pub fn im_gui_style_var_drag_drop_target_rounding() -> Int {
  35
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_ButtonTextAlign`.
pub fn im_gui_style_var_button_text_align() -> Int {
  36
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_SelectableTextAlign`.
pub fn im_gui_style_var_selectable_text_align() -> Int {
  37
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_SeparatorSize`.
pub fn im_gui_style_var_separator_size() -> Int {
  38
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_SeparatorTextBorderSize`.
pub fn im_gui_style_var_separator_text_border_size() -> Int {
  39
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_SeparatorTextAlign`.
pub fn im_gui_style_var_separator_text_align() -> Int {
  40
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_SeparatorTextPadding`.
pub fn im_gui_style_var_separator_text_padding() -> Int {
  41
}

///|
/// Generated constant binding for enum value `ImGuiStyleVar_COUNT`.
pub fn im_gui_style_var_count() -> Int {
  42
}

///|
/// Generated constant binding for enum value `ImGuiButtonFlags_None`.
pub fn im_gui_button_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiButtonFlags_MouseButtonLeft`.
pub fn im_gui_button_flags_mouse_button_left() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiButtonFlags_MouseButtonRight`.
pub fn im_gui_button_flags_mouse_button_right() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiButtonFlags_MouseButtonMiddle`.
pub fn im_gui_button_flags_mouse_button_middle() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiButtonFlags_EnableNav`.
pub fn im_gui_button_flags_enable_nav() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiButtonFlags_AllowOverlap`.
pub fn im_gui_button_flags_allow_overlap() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_None`.
pub fn im_gui_color_edit_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoAlpha`.
pub fn im_gui_color_edit_flags_no_alpha() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoPicker`.
pub fn im_gui_color_edit_flags_no_picker() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoOptions`.
pub fn im_gui_color_edit_flags_no_options() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoSmallPreview`.
pub fn im_gui_color_edit_flags_no_small_preview() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoInputs`.
pub fn im_gui_color_edit_flags_no_inputs() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoTooltip`.
pub fn im_gui_color_edit_flags_no_tooltip() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoLabel`.
pub fn im_gui_color_edit_flags_no_label() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoSidePreview`.
pub fn im_gui_color_edit_flags_no_side_preview() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoDragDrop`.
pub fn im_gui_color_edit_flags_no_drag_drop() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoBorder`.
pub fn im_gui_color_edit_flags_no_border() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_NoColorMarkers`.
pub fn im_gui_color_edit_flags_no_color_markers() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_AlphaOpaque`.
pub fn im_gui_color_edit_flags_alpha_opaque() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_AlphaNoBg`.
pub fn im_gui_color_edit_flags_alpha_no_bg() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_AlphaPreviewHalf`.
pub fn im_gui_color_edit_flags_alpha_preview_half() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_AlphaBar`.
pub fn im_gui_color_edit_flags_alpha_bar() -> Int {
  262144
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_HDR`.
pub fn im_gui_color_edit_flags_hdr() -> Int {
  524288
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_DisplayRGB`.
pub fn im_gui_color_edit_flags_display_rgb() -> Int {
  1048576
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_DisplayHSV`.
pub fn im_gui_color_edit_flags_display_hsv() -> Int {
  2097152
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_DisplayHex`.
pub fn im_gui_color_edit_flags_display_hex() -> Int {
  4194304
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_Uint8`.
pub fn im_gui_color_edit_flags_uint8() -> Int {
  8388608
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_Float`.
pub fn im_gui_color_edit_flags_float() -> Int {
  16777216
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_PickerHueBar`.
pub fn im_gui_color_edit_flags_picker_hue_bar() -> Int {
  33554432
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_PickerHueWheel`.
pub fn im_gui_color_edit_flags_picker_hue_wheel() -> Int {
  67108864
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_InputRGB`.
pub fn im_gui_color_edit_flags_input_rgb() -> Int {
  134217728
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_InputHSV`.
pub fn im_gui_color_edit_flags_input_hsv() -> Int {
  268435456
}

///|
/// Generated constant binding for enum value `ImGuiColorEditFlags_AlphaPreview`.
pub fn im_gui_color_edit_flags_alpha_preview() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_None`.
pub fn im_gui_slider_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_Logarithmic`.
pub fn im_gui_slider_flags_logarithmic() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_NoRoundToFormat`.
pub fn im_gui_slider_flags_no_round_to_format() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_NoInput`.
pub fn im_gui_slider_flags_no_input() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_WrapAround`.
pub fn im_gui_slider_flags_wrap_around() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_ClampOnInput`.
pub fn im_gui_slider_flags_clamp_on_input() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_ClampZeroRange`.
pub fn im_gui_slider_flags_clamp_zero_range() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_NoSpeedTweaks`.
pub fn im_gui_slider_flags_no_speed_tweaks() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_ColorMarkers`.
pub fn im_gui_slider_flags_color_markers() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiSliderFlags_AlwaysClamp`.
pub fn im_gui_slider_flags_always_clamp() -> Int {
  1536
}

///|
/// Generated constant binding for enum value `ImGuiMouseButton_Left`.
pub fn im_gui_mouse_button_left() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiMouseButton_Right`.
pub fn im_gui_mouse_button_right() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiMouseButton_Middle`.
pub fn im_gui_mouse_button_middle() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiMouseButton_COUNT`.
pub fn im_gui_mouse_button_count() -> Int {
  5
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_None`.
pub fn im_gui_mouse_cursor_none() -> Int {
  -1
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_Arrow`.
pub fn im_gui_mouse_cursor_arrow() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_TextInput`.
pub fn im_gui_mouse_cursor_text_input() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_ResizeAll`.
pub fn im_gui_mouse_cursor_resize_all() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_ResizeNS`.
pub fn im_gui_mouse_cursor_resize_ns() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_ResizeEW`.
pub fn im_gui_mouse_cursor_resize_ew() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_ResizeNESW`.
pub fn im_gui_mouse_cursor_resize_nesw() -> Int {
  5
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_ResizeNWSE`.
pub fn im_gui_mouse_cursor_resize_nwse() -> Int {
  6
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_Hand`.
pub fn im_gui_mouse_cursor_hand() -> Int {
  7
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_Wait`.
pub fn im_gui_mouse_cursor_wait() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_Progress`.
pub fn im_gui_mouse_cursor_progress() -> Int {
  9
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_NotAllowed`.
pub fn im_gui_mouse_cursor_not_allowed() -> Int {
  10
}

///|
/// Generated constant binding for enum value `ImGuiMouseCursor_COUNT`.
pub fn im_gui_mouse_cursor_count() -> Int {
  11
}

///|
/// Generated constant binding for enum value `ImGuiMouseSource_Mouse`.
pub fn im_gui_mouse_source_mouse() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiMouseSource_TouchScreen`.
pub fn im_gui_mouse_source_touch_screen() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiMouseSource_Pen`.
pub fn im_gui_mouse_source_pen() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiMouseSource_COUNT`.
pub fn im_gui_mouse_source_count() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiCond_None`.
pub fn im_gui_cond_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiCond_Always`.
pub fn im_gui_cond_always() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiCond_Once`.
pub fn im_gui_cond_once() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiCond_FirstUseEver`.
pub fn im_gui_cond_first_use_ever() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiCond_Appearing`.
pub fn im_gui_cond_appearing() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_None`.
pub fn im_gui_table_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_Resizable`.
pub fn im_gui_table_flags_resizable() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_Reorderable`.
pub fn im_gui_table_flags_reorderable() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_Hideable`.
pub fn im_gui_table_flags_hideable() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_Sortable`.
pub fn im_gui_table_flags_sortable() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoSavedSettings`.
pub fn im_gui_table_flags_no_saved_settings() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_ContextMenuInBody`.
pub fn im_gui_table_flags_context_menu_in_body() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_RowBg`.
pub fn im_gui_table_flags_row_bg() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_BordersInnerH`.
pub fn im_gui_table_flags_borders_inner_h() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_BordersOuterH`.
pub fn im_gui_table_flags_borders_outer_h() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_BordersInnerV`.
pub fn im_gui_table_flags_borders_inner_v() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_BordersOuterV`.
pub fn im_gui_table_flags_borders_outer_v() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_BordersH`.
pub fn im_gui_table_flags_borders_h() -> Int {
  384
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_BordersV`.
pub fn im_gui_table_flags_borders_v() -> Int {
  1536
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_BordersInner`.
pub fn im_gui_table_flags_borders_inner() -> Int {
  640
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_BordersOuter`.
pub fn im_gui_table_flags_borders_outer() -> Int {
  1280
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_Borders`.
pub fn im_gui_table_flags_borders() -> Int {
  1920
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoBordersInBody`.
pub fn im_gui_table_flags_no_borders_in_body() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoBordersInBodyUntilResize`.
pub fn im_gui_table_flags_no_borders_in_body_until_resize() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_SizingFixedFit`.
pub fn im_gui_table_flags_sizing_fixed_fit() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_SizingFixedSame`.
pub fn im_gui_table_flags_sizing_fixed_same() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_SizingStretchProp`.
pub fn im_gui_table_flags_sizing_stretch_prop() -> Int {
  24576
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_SizingStretchSame`.
pub fn im_gui_table_flags_sizing_stretch_same() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoHostExtendX`.
pub fn im_gui_table_flags_no_host_extend_x() -> Int {
  65536
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoHostExtendY`.
pub fn im_gui_table_flags_no_host_extend_y() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoKeepColumnsVisible`.
pub fn im_gui_table_flags_no_keep_columns_visible() -> Int {
  262144
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_PreciseWidths`.
pub fn im_gui_table_flags_precise_widths() -> Int {
  524288
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoClip`.
pub fn im_gui_table_flags_no_clip() -> Int {
  1048576
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_PadOuterX`.
pub fn im_gui_table_flags_pad_outer_x() -> Int {
  2097152
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoPadOuterX`.
pub fn im_gui_table_flags_no_pad_outer_x() -> Int {
  4194304
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_NoPadInnerX`.
pub fn im_gui_table_flags_no_pad_inner_x() -> Int {
  8388608
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_ScrollX`.
pub fn im_gui_table_flags_scroll_x() -> Int {
  16777216
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_ScrollY`.
pub fn im_gui_table_flags_scroll_y() -> Int {
  33554432
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_SortMulti`.
pub fn im_gui_table_flags_sort_multi() -> Int {
  67108864
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_SortTristate`.
pub fn im_gui_table_flags_sort_tristate() -> Int {
  134217728
}

///|
/// Generated constant binding for enum value `ImGuiTableFlags_HighlightHoveredColumn`.
pub fn im_gui_table_flags_highlight_hovered_column() -> Int {
  268435456
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_None`.
pub fn im_gui_table_column_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_Disabled`.
pub fn im_gui_table_column_flags_disabled() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_DefaultHide`.
pub fn im_gui_table_column_flags_default_hide() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_DefaultSort`.
pub fn im_gui_table_column_flags_default_sort() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_WidthStretch`.
pub fn im_gui_table_column_flags_width_stretch() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_WidthFixed`.
pub fn im_gui_table_column_flags_width_fixed() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoResize`.
pub fn im_gui_table_column_flags_no_resize() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoReorder`.
pub fn im_gui_table_column_flags_no_reorder() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoHide`.
pub fn im_gui_table_column_flags_no_hide() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoClip`.
pub fn im_gui_table_column_flags_no_clip() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoSort`.
pub fn im_gui_table_column_flags_no_sort() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoSortAscending`.
pub fn im_gui_table_column_flags_no_sort_ascending() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoSortDescending`.
pub fn im_gui_table_column_flags_no_sort_descending() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoHeaderLabel`.
pub fn im_gui_table_column_flags_no_header_label() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_NoHeaderWidth`.
pub fn im_gui_table_column_flags_no_header_width() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_PreferSortAscending`.
pub fn im_gui_table_column_flags_prefer_sort_ascending() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_PreferSortDescending`.
pub fn im_gui_table_column_flags_prefer_sort_descending() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_IndentEnable`.
pub fn im_gui_table_column_flags_indent_enable() -> Int {
  65536
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_IndentDisable`.
pub fn im_gui_table_column_flags_indent_disable() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_AngledHeader`.
pub fn im_gui_table_column_flags_angled_header() -> Int {
  262144
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_IsEnabled`.
pub fn im_gui_table_column_flags_is_enabled() -> Int {
  16777216
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_IsVisible`.
pub fn im_gui_table_column_flags_is_visible() -> Int {
  33554432
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_IsSorted`.
pub fn im_gui_table_column_flags_is_sorted() -> Int {
  67108864
}

///|
/// Generated constant binding for enum value `ImGuiTableColumnFlags_IsHovered`.
pub fn im_gui_table_column_flags_is_hovered() -> Int {
  134217728
}

///|
/// Generated constant binding for enum value `ImGuiTableRowFlags_None`.
pub fn im_gui_table_row_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiTableRowFlags_Headers`.
pub fn im_gui_table_row_flags_headers() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiTableBgTarget_None`.
pub fn im_gui_table_bg_target_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiTableBgTarget_RowBg0`.
pub fn im_gui_table_bg_target_row_bg0() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiTableBgTarget_RowBg1`.
pub fn im_gui_table_bg_target_row_bg1() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiTableBgTarget_CellBg`.
pub fn im_gui_table_bg_target_cell_bg() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImGuiListClipperFlags_None`.
pub fn im_gui_list_clipper_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiListClipperFlags_NoSetTableRowCounters`.
pub fn im_gui_list_clipper_flags_no_set_table_row_counters() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_None`.
pub fn im_gui_multi_select_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_SingleSelect`.
pub fn im_gui_multi_select_flags_single_select() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_NoSelectAll`.
pub fn im_gui_multi_select_flags_no_select_all() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_NoRangeSelect`.
pub fn im_gui_multi_select_flags_no_range_select() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_NoAutoSelect`.
pub fn im_gui_multi_select_flags_no_auto_select() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_NoAutoClear`.
pub fn im_gui_multi_select_flags_no_auto_clear() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_NoAutoClearOnReselect`.
pub fn im_gui_multi_select_flags_no_auto_clear_on_reselect() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_BoxSelect1d`.
pub fn im_gui_multi_select_flags_box_select1d() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_BoxSelect2d`.
pub fn im_gui_multi_select_flags_box_select2d() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_BoxSelectNoScroll`.
pub fn im_gui_multi_select_flags_box_select_no_scroll() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_ClearOnEscape`.
pub fn im_gui_multi_select_flags_clear_on_escape() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_ClearOnClickVoid`.
pub fn im_gui_multi_select_flags_clear_on_click_void() -> Int {
  1024
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_ScopeWindow`.
pub fn im_gui_multi_select_flags_scope_window() -> Int {
  2048
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_ScopeRect`.
pub fn im_gui_multi_select_flags_scope_rect() -> Int {
  4096
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_SelectOnAuto`.
pub fn im_gui_multi_select_flags_select_on_auto() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_SelectOnClickAlways`.
pub fn im_gui_multi_select_flags_select_on_click_always() -> Int {
  16384
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_SelectOnClickRelease`.
pub fn im_gui_multi_select_flags_select_on_click_release() -> Int {
  32768
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_NavWrapX`.
pub fn im_gui_multi_select_flags_nav_wrap_x() -> Int {
  65536
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_NoSelectOnRightClick`.
pub fn im_gui_multi_select_flags_no_select_on_right_click() -> Int {
  131072
}

///|
/// Generated constant binding for enum value `ImGuiMultiSelectFlags_SelectOnClick`.
pub fn im_gui_multi_select_flags_select_on_click() -> Int {
  8192
}

///|
/// Generated constant binding for enum value `ImGuiSelectionRequestType_None`.
pub fn im_gui_selection_request_type_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiSelectionRequestType_SetAll`.
pub fn im_gui_selection_request_type_set_all() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiSelectionRequestType_SetRange`.
pub fn im_gui_selection_request_type_set_range() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImDrawFlags_None`.
pub fn im_draw_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersTopLeft`.
pub fn im_draw_flags_round_corners_top_left() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersTopRight`.
pub fn im_draw_flags_round_corners_top_right() -> Int {
  32
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersBottomLeft`.
pub fn im_draw_flags_round_corners_bottom_left() -> Int {
  64
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersBottomRight`.
pub fn im_draw_flags_round_corners_bottom_right() -> Int {
  128
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersNone`.
pub fn im_draw_flags_round_corners_none() -> Int {
  256
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersAll`.
pub fn im_draw_flags_round_corners_all() -> Int {
  240
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersTop`.
pub fn im_draw_flags_round_corners_top() -> Int {
  48
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersBottom`.
pub fn im_draw_flags_round_corners_bottom() -> Int {
  192
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersLeft`.
pub fn im_draw_flags_round_corners_left() -> Int {
  80
}

///|
/// Generated constant binding for enum value `ImDrawFlags_RoundCornersRight`.
pub fn im_draw_flags_round_corners_right() -> Int {
  160
}

///|
/// Generated constant binding for enum value `ImDrawFlags_Closed`.
pub fn im_draw_flags_closed() -> Int {
  512
}

///|
/// Generated constant binding for enum value `ImDrawListFlags_None`.
pub fn im_draw_list_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImDrawListFlags_AntiAliasedLines`.
pub fn im_draw_list_flags_anti_aliased_lines() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImDrawListFlags_AntiAliasedLinesUseTex`.
pub fn im_draw_list_flags_anti_aliased_lines_use_tex() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImDrawListFlags_AntiAliasedFill`.
pub fn im_draw_list_flags_anti_aliased_fill() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImDrawListFlags_AllowVtxOffset`.
pub fn im_draw_list_flags_allow_vtx_offset() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImTextureFormat_RGBA32`.
pub fn im_texture_format_rgba32() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImTextureFormat_Alpha8`.
pub fn im_texture_format_alpha8() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImTextureStatus_OK`.
pub fn im_texture_status_ok() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImTextureStatus_Destroyed`.
pub fn im_texture_status_destroyed() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImTextureStatus_WantCreate`.
pub fn im_texture_status_want_create() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImTextureStatus_WantUpdates`.
pub fn im_texture_status_want_updates() -> Int {
  3
}

///|
/// Generated constant binding for enum value `ImTextureStatus_WantDestroy`.
pub fn im_texture_status_want_destroy() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImFontAtlasFlags_None`.
pub fn im_font_atlas_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImFontAtlasFlags_NoPowerOfTwoHeight`.
pub fn im_font_atlas_flags_no_power_of_two_height() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImFontAtlasFlags_NoMouseCursors`.
pub fn im_font_atlas_flags_no_mouse_cursors() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImFontAtlasFlags_NoBakedLines`.
pub fn im_font_atlas_flags_no_baked_lines() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImFontFlags_None`.
pub fn im_font_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImFontFlags_NoLoadError`.
pub fn im_font_flags_no_load_error() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImFontFlags_NoLoadGlyphs`.
pub fn im_font_flags_no_load_glyphs() -> Int {
  4
}

///|
/// Generated constant binding for enum value `ImFontFlags_LockBakedSizes`.
pub fn im_font_flags_lock_baked_sizes() -> Int {
  8
}

///|
/// Generated constant binding for enum value `ImFontFlags_ImplicitRefSize`.
pub fn im_font_flags_implicit_ref_size() -> Int {
  16
}

///|
/// Generated constant binding for enum value `ImGuiViewportFlags_None`.
pub fn im_gui_viewport_flags_none() -> Int {
  0
}

///|
/// Generated constant binding for enum value `ImGuiViewportFlags_IsPlatformWindow`.
pub fn im_gui_viewport_flags_is_platform_window() -> Int {
  1
}

///|
/// Generated constant binding for enum value `ImGuiViewportFlags_IsPlatformMonitor`.
pub fn im_gui_viewport_flags_is_platform_monitor() -> Int {
  2
}

///|
/// Generated constant binding for enum value `ImGuiViewportFlags_OwnedByApp`.
pub fn im_gui_viewport_flags_owned_by_app() -> Int {
  4
}

///|
/// Direct dear_bindings C ABI binding for `ImTextureRef_GetTexID`.
#borrow(_p0)
pub extern "C" fn im_texture_ref_get_tex_id(_p0 : ImTextureRef) -> UInt64 = "ImTextureRef_GetTexID"

///|
/// Direct dear_bindings C ABI binding for `ImGui_CreateContext`.
#borrow(_p0)
pub extern "C" fn im_gui_create_context(_p0 : ImFontAtlas) -> ImGuiContext = "ImGui_CreateContext"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DestroyContext`.
#borrow(_p0)
pub extern "C" fn im_gui_destroy_context(_p0 : ImGuiContext) -> Unit = "ImGui_DestroyContext"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetCurrentContext`.
pub extern "C" fn im_gui_get_current_context() -> ImGuiContext = "ImGui_GetCurrentContext"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetCurrentContext`.
#borrow(_p0)
pub extern "C" fn im_gui_set_current_context(_p0 : ImGuiContext) -> Unit = "ImGui_SetCurrentContext"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetIO`.
pub extern "C" fn im_gui_get_io() -> ImGuiIO = "ImGui_GetIO"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetPlatformIO`.
pub extern "C" fn im_gui_get_platform_io() -> ImGuiPlatformIO = "ImGui_GetPlatformIO"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetStyle`.
pub extern "C" fn im_gui_get_style() -> ImGuiStyle = "ImGui_GetStyle"

///|
/// Direct dear_bindings C ABI binding for `ImGui_NewFrame`.
pub extern "C" fn im_gui_new_frame() -> Unit = "ImGui_NewFrame"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndFrame`.
pub extern "C" fn im_gui_end_frame() -> Unit = "ImGui_EndFrame"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Render`.
pub extern "C" fn im_gui_render() -> Unit = "ImGui_Render"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetDrawData`.
pub extern "C" fn im_gui_get_draw_data() -> ImDrawData = "ImGui_GetDrawData"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowDemoWindow`.
#borrow(_p0)
pub extern "C" fn im_gui_show_demo_window(_p0 : Ref[Bool]?) -> Unit = "ImGui_ShowDemoWindow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowMetricsWindow`.
#borrow(_p0)
pub extern "C" fn im_gui_show_metrics_window(_p0 : Ref[Bool]?) -> Unit = "ImGui_ShowMetricsWindow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowDebugLogWindow`.
#borrow(_p0)
pub extern "C" fn im_gui_show_debug_log_window(_p0 : Ref[Bool]?) -> Unit = "ImGui_ShowDebugLogWindow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowIDStackToolWindow`.
pub extern "C" fn im_gui_show_id_stack_tool_window() -> Unit = "ImGui_ShowIDStackToolWindow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowIDStackToolWindowEx`.
#borrow(_p0)
pub extern "C" fn im_gui_show_id_stack_tool_window_ex(_p0 : Ref[Bool]?) -> Unit = "ImGui_ShowIDStackToolWindowEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowAboutWindow`.
#borrow(_p0)
pub extern "C" fn im_gui_show_about_window(_p0 : Ref[Bool]?) -> Unit = "ImGui_ShowAboutWindow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowStyleEditor`.
#borrow(_p0)
pub extern "C" fn im_gui_show_style_editor(_p0 : ImGuiStyle) -> Unit = "ImGui_ShowStyleEditor"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowStyleSelector`.
#borrow(_p0)
pub extern "C" fn im_gui_show_style_selector(_p0 : Bytes) -> Bool = "ImGui_ShowStyleSelector"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowFontSelector`.
#borrow(_p0)
pub extern "C" fn im_gui_show_font_selector(_p0 : Bytes) -> Unit = "ImGui_ShowFontSelector"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ShowUserGuide`.
pub extern "C" fn im_gui_show_user_guide() -> Unit = "ImGui_ShowUserGuide"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetVersion`.
pub extern "C" fn im_gui_get_version() -> Ref[Byte]? = "ImGui_GetVersion"

///|
/// Direct dear_bindings C ABI binding for `ImGui_StyleColorsDark`.
#borrow(_p0)
pub extern "C" fn im_gui_style_colors_dark(_p0 : ImGuiStyle) -> Unit = "ImGui_StyleColorsDark"

///|
/// Direct dear_bindings C ABI binding for `ImGui_StyleColorsLight`.
#borrow(_p0)
pub extern "C" fn im_gui_style_colors_light(_p0 : ImGuiStyle) -> Unit = "ImGui_StyleColorsLight"

///|
/// Direct dear_bindings C ABI binding for `ImGui_StyleColorsClassic`.
#borrow(_p0)
pub extern "C" fn im_gui_style_colors_classic(_p0 : ImGuiStyle) -> Unit = "ImGui_StyleColorsClassic"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Begin`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_begin(
  _p0 : Bytes,
  _p1 : Ref[Bool]?,
  _p2 : Int,
) -> Bool = "ImGui_Begin"

///|
/// Direct dear_bindings C ABI binding for `ImGui_End`.
pub extern "C" fn im_gui_end() -> Unit = "ImGui_End"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginChild`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_begin_child(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_BeginChild"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginChildID`.
#borrow(_p1)
pub extern "C" fn im_gui_begin_child_id(
  _p0 : UInt,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_BeginChildID"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndChild`.
pub extern "C" fn im_gui_end_child() -> Unit = "ImGui_EndChild"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsWindowAppearing`.
pub extern "C" fn im_gui_is_window_appearing() -> Bool = "ImGui_IsWindowAppearing"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsWindowCollapsed`.
pub extern "C" fn im_gui_is_window_collapsed() -> Bool = "ImGui_IsWindowCollapsed"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsWindowFocused`.
pub extern "C" fn im_gui_is_window_focused(_p0 : Int) -> Bool = "ImGui_IsWindowFocused"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsWindowHovered`.
pub extern "C" fn im_gui_is_window_hovered(_p0 : Int) -> Bool = "ImGui_IsWindowHovered"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetWindowDrawList`.
pub extern "C" fn im_gui_get_window_draw_list() -> ImDrawList = "ImGui_GetWindowDrawList"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetWindowWidth`.
pub extern "C" fn im_gui_get_window_width() -> Float = "ImGui_GetWindowWidth"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetWindowHeight`.
pub extern "C" fn im_gui_get_window_height() -> Float = "ImGui_GetWindowHeight"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowPos`.
#borrow(_p0)
pub extern "C" fn im_gui_set_next_window_pos(_p0 : ImVec2, _p1 : Int) -> Unit = "ImGui_SetNextWindowPos"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowPosEx`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_set_next_window_pos_ex(
  _p0 : ImVec2,
  _p1 : Int,
  _p2 : ImVec2,
) -> Unit = "ImGui_SetNextWindowPosEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowSize`.
#borrow(_p0)
pub extern "C" fn im_gui_set_next_window_size(_p0 : ImVec2, _p1 : Int) -> Unit = "ImGui_SetNextWindowSize"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowSizeConstraints`.
#borrow(_p0, _p1, _p2, _p3)
pub extern "C" fn im_gui_set_next_window_size_constraints(
  _p0 : ImVec2,
  _p1 : ImVec2,
  _p2 : FuncRef[(ImGuiSizeCallbackData) -> Unit],
  _p3 : VoidPtr,
) -> Unit = "ImGui_SetNextWindowSizeConstraints"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowContentSize`.
#borrow(_p0)
pub extern "C" fn im_gui_set_next_window_content_size(_p0 : ImVec2) -> Unit = "ImGui_SetNextWindowContentSize"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowCollapsed`.
pub extern "C" fn im_gui_set_next_window_collapsed(
  _p0 : Bool,
  _p1 : Int,
) -> Unit = "ImGui_SetNextWindowCollapsed"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowFocus`.
pub extern "C" fn im_gui_set_next_window_focus() -> Unit = "ImGui_SetNextWindowFocus"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowScroll`.
#borrow(_p0)
pub extern "C" fn im_gui_set_next_window_scroll(_p0 : ImVec2) -> Unit = "ImGui_SetNextWindowScroll"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextWindowBgAlpha`.
pub extern "C" fn im_gui_set_next_window_bg_alpha(_p0 : Float) -> Unit = "ImGui_SetNextWindowBgAlpha"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowPos`.
#borrow(_p0)
pub extern "C" fn im_gui_set_window_pos(_p0 : ImVec2, _p1 : Int) -> Unit = "ImGui_SetWindowPos"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowSize`.
#borrow(_p0)
pub extern "C" fn im_gui_set_window_size(_p0 : ImVec2, _p1 : Int) -> Unit = "ImGui_SetWindowSize"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowCollapsed`.
pub extern "C" fn im_gui_set_window_collapsed(_p0 : Bool, _p1 : Int) -> Unit = "ImGui_SetWindowCollapsed"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowFocus`.
pub extern "C" fn im_gui_set_window_focus() -> Unit = "ImGui_SetWindowFocus"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowPosStr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_set_window_pos_str(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Int,
) -> Unit = "ImGui_SetWindowPosStr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowSizeStr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_set_window_size_str(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Int,
) -> Unit = "ImGui_SetWindowSizeStr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowCollapsedStr`.
#borrow(_p0)
pub extern "C" fn im_gui_set_window_collapsed_str(
  _p0 : Bytes,
  _p1 : Bool,
  _p2 : Int,
) -> Unit = "ImGui_SetWindowCollapsedStr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowFocusStr`.
#borrow(_p0)
pub extern "C" fn im_gui_set_window_focus_str(_p0 : Bytes) -> Unit = "ImGui_SetWindowFocusStr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetScrollX`.
pub extern "C" fn im_gui_get_scroll_x() -> Float = "ImGui_GetScrollX"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetScrollY`.
pub extern "C" fn im_gui_get_scroll_y() -> Float = "ImGui_GetScrollY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetScrollX`.
pub extern "C" fn im_gui_set_scroll_x(_p0 : Float) -> Unit = "ImGui_SetScrollX"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetScrollY`.
pub extern "C" fn im_gui_set_scroll_y(_p0 : Float) -> Unit = "ImGui_SetScrollY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetScrollMaxX`.
pub extern "C" fn im_gui_get_scroll_max_x() -> Float = "ImGui_GetScrollMaxX"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetScrollMaxY`.
pub extern "C" fn im_gui_get_scroll_max_y() -> Float = "ImGui_GetScrollMaxY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetScrollHereX`.
pub extern "C" fn im_gui_set_scroll_here_x(_p0 : Float) -> Unit = "ImGui_SetScrollHereX"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetScrollHereY`.
pub extern "C" fn im_gui_set_scroll_here_y(_p0 : Float) -> Unit = "ImGui_SetScrollHereY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetScrollFromPosX`.
pub extern "C" fn im_gui_set_scroll_from_pos_x(
  _p0 : Float,
  _p1 : Float,
) -> Unit = "ImGui_SetScrollFromPosX"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetScrollFromPosY`.
pub extern "C" fn im_gui_set_scroll_from_pos_y(
  _p0 : Float,
  _p1 : Float,
) -> Unit = "ImGui_SetScrollFromPosY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushFontFloat`.
#borrow(_p0)
pub extern "C" fn im_gui_push_font_float(_p0 : ImFont, _p1 : Float) -> Unit = "ImGui_PushFontFloat"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopFont`.
pub extern "C" fn im_gui_pop_font() -> Unit = "ImGui_PopFont"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetFont`.
pub extern "C" fn im_gui_get_font() -> ImFont = "ImGui_GetFont"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetFontSize`.
pub extern "C" fn im_gui_get_font_size() -> Float = "ImGui_GetFontSize"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetFontBaked`.
pub extern "C" fn im_gui_get_font_baked() -> ImFontBaked = "ImGui_GetFontBaked"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushStyleColor`.
pub extern "C" fn im_gui_push_style_color(_p0 : Int, _p1 : UInt) -> Unit = "ImGui_PushStyleColor"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushStyleColorImVec4Ptr`.
#borrow(_p1)
pub extern "C" fn im_gui_push_style_color_im_vec4_ptr(
  _p0 : Int,
  _p1 : ImVec4,
) -> Unit = "ImGui_PushStyleColorImVec4Ptr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopStyleColor`.
pub extern "C" fn im_gui_pop_style_color() -> Unit = "ImGui_PopStyleColor"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopStyleColorEx`.
pub extern "C" fn im_gui_pop_style_color_ex(_p0 : Int) -> Unit = "ImGui_PopStyleColorEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushStyleVar`.
pub extern "C" fn im_gui_push_style_var(_p0 : Int, _p1 : Float) -> Unit = "ImGui_PushStyleVar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushStyleVarImVec2Ptr`.
#borrow(_p1)
pub extern "C" fn im_gui_push_style_var_im_vec2_ptr(
  _p0 : Int,
  _p1 : ImVec2,
) -> Unit = "ImGui_PushStyleVarImVec2Ptr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushStyleVarX`.
pub extern "C" fn im_gui_push_style_var_x(_p0 : Int, _p1 : Float) -> Unit = "ImGui_PushStyleVarX"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushStyleVarY`.
pub extern "C" fn im_gui_push_style_var_y(_p0 : Int, _p1 : Float) -> Unit = "ImGui_PushStyleVarY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopStyleVar`.
pub extern "C" fn im_gui_pop_style_var() -> Unit = "ImGui_PopStyleVar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopStyleVarEx`.
pub extern "C" fn im_gui_pop_style_var_ex(_p0 : Int) -> Unit = "ImGui_PopStyleVarEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushItemFlag`.
pub extern "C" fn im_gui_push_item_flag(_p0 : Int, _p1 : Bool) -> Unit = "ImGui_PushItemFlag"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopItemFlag`.
pub extern "C" fn im_gui_pop_item_flag() -> Unit = "ImGui_PopItemFlag"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushItemWidth`.
pub extern "C" fn im_gui_push_item_width(_p0 : Float) -> Unit = "ImGui_PushItemWidth"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopItemWidth`.
pub extern "C" fn im_gui_pop_item_width() -> Unit = "ImGui_PopItemWidth"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextItemWidth`.
pub extern "C" fn im_gui_set_next_item_width(_p0 : Float) -> Unit = "ImGui_SetNextItemWidth"

///|
/// Direct dear_bindings C ABI binding for `ImGui_CalcItemWidth`.
pub extern "C" fn im_gui_calc_item_width() -> Float = "ImGui_CalcItemWidth"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushTextWrapPos`.
pub extern "C" fn im_gui_push_text_wrap_pos(_p0 : Float) -> Unit = "ImGui_PushTextWrapPos"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopTextWrapPos`.
pub extern "C" fn im_gui_pop_text_wrap_pos() -> Unit = "ImGui_PopTextWrapPos"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColorU32`.
pub extern "C" fn im_gui_get_color_u32(_p0 : Int) -> UInt = "ImGui_GetColorU32"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColorU32Ex`.
pub extern "C" fn im_gui_get_color_u32_ex(_p0 : Int, _p1 : Float) -> UInt = "ImGui_GetColorU32Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColorU32ImVec4`.
#borrow(_p0)
pub extern "C" fn im_gui_get_color_u32_im_vec4(_p0 : ImVec4) -> UInt = "ImGui_GetColorU32ImVec4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColorU32ImU32`.
pub extern "C" fn im_gui_get_color_u32_im_u32(_p0 : UInt) -> UInt = "ImGui_GetColorU32ImU32"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColorU32ImU32Ex`.
pub extern "C" fn im_gui_get_color_u32_im_u32_ex(
  _p0 : UInt,
  _p1 : Float,
) -> UInt = "ImGui_GetColorU32ImU32Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetStyleColorVec4`.
pub extern "C" fn im_gui_get_style_color_vec4(_p0 : Int) -> ImVec4 = "ImGui_GetStyleColorVec4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetCursorScreenPos`.
#borrow(_p0)
pub extern "C" fn im_gui_set_cursor_screen_pos(_p0 : ImVec2) -> Unit = "ImGui_SetCursorScreenPos"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetCursorPosX`.
pub extern "C" fn im_gui_get_cursor_pos_x() -> Float = "ImGui_GetCursorPosX"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetCursorPosY`.
pub extern "C" fn im_gui_get_cursor_pos_y() -> Float = "ImGui_GetCursorPosY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetCursorPos`.
#borrow(_p0)
pub extern "C" fn im_gui_set_cursor_pos(_p0 : ImVec2) -> Unit = "ImGui_SetCursorPos"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetCursorPosX`.
pub extern "C" fn im_gui_set_cursor_pos_x(_p0 : Float) -> Unit = "ImGui_SetCursorPosX"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetCursorPosY`.
pub extern "C" fn im_gui_set_cursor_pos_y(_p0 : Float) -> Unit = "ImGui_SetCursorPosY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Separator`.
pub extern "C" fn im_gui_separator() -> Unit = "ImGui_Separator"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SameLine`.
pub extern "C" fn im_gui_same_line() -> Unit = "ImGui_SameLine"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SameLineEx`.
pub extern "C" fn im_gui_same_line_ex(_p0 : Float, _p1 : Float) -> Unit = "ImGui_SameLineEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_NewLine`.
pub extern "C" fn im_gui_new_line() -> Unit = "ImGui_NewLine"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Spacing`.
pub extern "C" fn im_gui_spacing() -> Unit = "ImGui_Spacing"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Dummy`.
#borrow(_p0)
pub extern "C" fn im_gui_dummy(_p0 : ImVec2) -> Unit = "ImGui_Dummy"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Indent`.
pub extern "C" fn im_gui_indent() -> Unit = "ImGui_Indent"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IndentEx`.
pub extern "C" fn im_gui_indent_ex(_p0 : Float) -> Unit = "ImGui_IndentEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Unindent`.
pub extern "C" fn im_gui_unindent() -> Unit = "ImGui_Unindent"

///|
/// Direct dear_bindings C ABI binding for `ImGui_UnindentEx`.
pub extern "C" fn im_gui_unindent_ex(_p0 : Float) -> Unit = "ImGui_UnindentEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginGroup`.
pub extern "C" fn im_gui_begin_group() -> Unit = "ImGui_BeginGroup"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndGroup`.
pub extern "C" fn im_gui_end_group() -> Unit = "ImGui_EndGroup"

///|
/// Direct dear_bindings C ABI binding for `ImGui_AlignTextToFramePadding`.
pub extern "C" fn im_gui_align_text_to_frame_padding() -> Unit = "ImGui_AlignTextToFramePadding"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetTextLineHeight`.
pub extern "C" fn im_gui_get_text_line_height() -> Float = "ImGui_GetTextLineHeight"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetTextLineHeightWithSpacing`.
pub extern "C" fn im_gui_get_text_line_height_with_spacing() -> Float = "ImGui_GetTextLineHeightWithSpacing"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetFrameHeight`.
pub extern "C" fn im_gui_get_frame_height() -> Float = "ImGui_GetFrameHeight"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetFrameHeightWithSpacing`.
pub extern "C" fn im_gui_get_frame_height_with_spacing() -> Float = "ImGui_GetFrameHeightWithSpacing"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushID`.
#borrow(_p0)
pub extern "C" fn im_gui_push_id(_p0 : Bytes) -> Unit = "ImGui_PushID"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushIDStr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_push_id_str(_p0 : Bytes, _p1 : Bytes) -> Unit = "ImGui_PushIDStr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushIDPtr`.
#borrow(_p0)
pub extern "C" fn im_gui_push_id_ptr(_p0 : VoidPtr) -> Unit = "ImGui_PushIDPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushIDInt`.
pub extern "C" fn im_gui_push_id_int(_p0 : Int) -> Unit = "ImGui_PushIDInt"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopID`.
pub extern "C" fn im_gui_pop_id() -> Unit = "ImGui_PopID"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetID`.
#borrow(_p0)
pub extern "C" fn im_gui_get_id(_p0 : Bytes) -> UInt = "ImGui_GetID"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetIDStr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_get_id_str(_p0 : Bytes, _p1 : Bytes) -> UInt = "ImGui_GetIDStr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetIDPtr`.
#borrow(_p0)
pub extern "C" fn im_gui_get_id_ptr(_p0 : VoidPtr) -> UInt = "ImGui_GetIDPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetIDInt`.
pub extern "C" fn im_gui_get_id_int(_p0 : Int) -> UInt = "ImGui_GetIDInt"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextUnformatted`.
#borrow(_p0)
pub extern "C" fn im_gui_text_unformatted(_p0 : Bytes) -> Unit = "ImGui_TextUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextUnformattedEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_text_unformatted_ex(
  _p0 : Bytes,
  _p1 : Ref[Byte]?,
) -> Unit = "ImGui_TextUnformattedEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextV`.
#borrow(_p0)
pub extern "C" fn im_gui_text_v(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_TextV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextColoredUnformatted`.
#borrow(_p1, _p0)
pub extern "C" fn im_gui_text_colored_unformatted(
  _p0 : ImVec4,
  _p1 : Bytes,
) -> Unit = "ImGui_TextColoredUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextColoredV`.
#borrow(_p1, _p0)
pub extern "C" fn im_gui_text_colored_v(
  _p0 : ImVec4,
  _p1 : Bytes,
  _p2 : Int,
) -> Unit = "ImGui_TextColoredV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextDisabledUnformatted`.
#borrow(_p0)
pub extern "C" fn im_gui_text_disabled_unformatted(_p0 : Bytes) -> Unit = "ImGui_TextDisabledUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextDisabledV`.
#borrow(_p0)
pub extern "C" fn im_gui_text_disabled_v(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_TextDisabledV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextWrappedUnformatted`.
#borrow(_p0)
pub extern "C" fn im_gui_text_wrapped_unformatted(_p0 : Bytes) -> Unit = "ImGui_TextWrappedUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextWrappedV`.
#borrow(_p0)
pub extern "C" fn im_gui_text_wrapped_v(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_TextWrappedV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LabelTextUnformatted`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_label_text_unformatted(
  _p0 : Bytes,
  _p1 : Bytes,
) -> Unit = "ImGui_LabelTextUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LabelTextV`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_label_text_v(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Int,
) -> Unit = "ImGui_LabelTextV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BulletTextUnformatted`.
#borrow(_p0)
pub extern "C" fn im_gui_bullet_text_unformatted(_p0 : Bytes) -> Unit = "ImGui_BulletTextUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BulletTextV`.
#borrow(_p0)
pub extern "C" fn im_gui_bullet_text_v(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_BulletTextV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SeparatorText`.
#borrow(_p0)
pub extern "C" fn im_gui_separator_text(_p0 : Bytes) -> Unit = "ImGui_SeparatorText"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Button`.
#borrow(_p0)
pub extern "C" fn im_gui_button(_p0 : Bytes) -> Bool = "ImGui_Button"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ButtonEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_button_ex(_p0 : Bytes, _p1 : ImVec2) -> Bool = "ImGui_ButtonEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SmallButton`.
#borrow(_p0)
pub extern "C" fn im_gui_small_button(_p0 : Bytes) -> Bool = "ImGui_SmallButton"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InvisibleButton`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_invisible_button(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Int,
) -> Bool = "ImGui_InvisibleButton"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ArrowButton`.
#borrow(_p0)
pub extern "C" fn im_gui_arrow_button(_p0 : Bytes, _p1 : Int) -> Bool = "ImGui_ArrowButton"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Checkbox`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_checkbox(_p0 : Bytes, _p1 : Ref[Bool]?) -> Bool = "ImGui_Checkbox"

///|
/// Direct dear_bindings C ABI binding for `ImGui_CheckboxFlagsIntPtr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_checkbox_flags_int_ptr(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Int,
) -> Bool = "ImGui_CheckboxFlagsIntPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_CheckboxFlagsUintPtr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_checkbox_flags_uint_ptr(
  _p0 : Bytes,
  _p1 : Ref[UInt]?,
  _p2 : UInt,
) -> Bool = "ImGui_CheckboxFlagsUintPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_RadioButton`.
#borrow(_p0)
pub extern "C" fn im_gui_radio_button(_p0 : Bytes, _p1 : Bool) -> Bool = "ImGui_RadioButton"

///|
/// Direct dear_bindings C ABI binding for `ImGui_RadioButtonIntPtr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_radio_button_int_ptr(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Int,
) -> Bool = "ImGui_RadioButtonIntPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ProgressBar`.
#borrow(_p1, _p2)
pub extern "C" fn im_gui_progress_bar(
  _p0 : Float,
  _p1 : ImVec2,
  _p2 : Ref[Byte]?,
) -> Unit = "ImGui_ProgressBar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Bullet`.
pub extern "C" fn im_gui_bullet() -> Unit = "ImGui_Bullet"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextLink`.
#borrow(_p0)
pub extern "C" fn im_gui_text_link(_p0 : Bytes) -> Bool = "ImGui_TextLink"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextLinkOpenURL`.
#borrow(_p0)
pub extern "C" fn im_gui_text_link_open_url(_p0 : Bytes) -> Bool = "ImGui_TextLinkOpenURL"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TextLinkOpenURLEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_text_link_open_url_ex(
  _p0 : Bytes,
  _p1 : Ref[Byte]?,
) -> Bool = "ImGui_TextLinkOpenURLEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Image`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_image(_p0 : ImTextureRef, _p1 : ImVec2) -> Unit = "ImGui_Image"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ImageEx`.
#borrow(_p0, _p1, _p2, _p3)
pub extern "C" fn im_gui_image_ex(
  _p0 : ImTextureRef,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
) -> Unit = "ImGui_ImageEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ImageWithBg`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_image_with_bg(
  _p0 : ImTextureRef,
  _p1 : ImVec2,
) -> Unit = "ImGui_ImageWithBg"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ImageWithBgEx`.
#borrow(_p0, _p1, _p2, _p3, _p4, _p5)
pub extern "C" fn im_gui_image_with_bg_ex(
  _p0 : ImTextureRef,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec4,
  _p5 : ImVec4,
) -> Unit = "ImGui_ImageWithBgEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ImageButton`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_image_button(
  _p0 : Bytes,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
) -> Bool = "ImGui_ImageButton"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ImageButtonEx`.
#borrow(_p0, _p1, _p2, _p3, _p4, _p5, _p6)
pub extern "C" fn im_gui_image_button_ex(
  _p0 : Bytes,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : ImVec4,
  _p6 : ImVec4,
) -> Bool = "ImGui_ImageButtonEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginCombo`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_begin_combo(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Int,
) -> Bool = "ImGui_BeginCombo"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndCombo`.
pub extern "C" fn im_gui_end_combo() -> Unit = "ImGui_EndCombo"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ComboChar`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_combo_char(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : FixedArray[Bytes],
  _p3 : Int,
) -> Bool = "ImGui_ComboChar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ComboCharEx`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_combo_char_ex(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : FixedArray[Bytes],
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_ComboCharEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Combo`.
#borrow(_p0, _p2, _p1)
pub extern "C" fn im_gui_combo(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Bytes,
) -> Bool = "ImGui_Combo"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ComboEx`.
#borrow(_p0, _p2, _p1)
pub extern "C" fn im_gui_combo_ex(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Bytes,
  _p3 : Int,
) -> Bool = "ImGui_ComboEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloat`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_drag_float(_p0 : Bytes, _p1 : Ref[Float]?) -> Bool = "ImGui_DragFloat"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloatEx`.
#borrow(_p0, _p5, _p1)
pub extern "C" fn im_gui_drag_float_ex(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_DragFloatEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloat2`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_drag_float2(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
) -> Bool = "ImGui_DragFloat2"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloat2Ex`.
#borrow(_p0, _p5, _p1)
pub extern "C" fn im_gui_drag_float2_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_DragFloat2Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloat3`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_drag_float3(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
) -> Bool = "ImGui_DragFloat3"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloat3Ex`.
#borrow(_p0, _p5, _p1)
pub extern "C" fn im_gui_drag_float3_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_DragFloat3Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloat4`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_drag_float4(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
) -> Bool = "ImGui_DragFloat4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloat4Ex`.
#borrow(_p0, _p5, _p1)
pub extern "C" fn im_gui_drag_float4_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_DragFloat4Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloatRange2`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_drag_float_range2(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Ref[Float]?,
) -> Bool = "ImGui_DragFloatRange2"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragFloatRange2Ex`.
#borrow(_p0, _p6, _p1, _p2, _p7)
pub extern "C" fn im_gui_drag_float_range2_ex(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Ref[Float]?,
  _p3 : Float,
  _p4 : Float,
  _p5 : Float,
  _p6 : Bytes,
  _p7 : Ref[Byte]?,
  _p8 : Int,
) -> Bool = "ImGui_DragFloatRange2Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragInt`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_drag_int(_p0 : Bytes, _p1 : Ref[Int]?) -> Bool = "ImGui_DragInt"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragIntEx`.
#borrow(_p0, _p5, _p1)
pub extern "C" fn im_gui_drag_int_ex(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_DragIntEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragInt2`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_drag_int2(_p0 : Bytes, _p1 : FixedArray[Int]) -> Bool = "ImGui_DragInt2"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragInt2Ex`.
#borrow(_p0, _p5, _p1)
pub extern "C" fn im_gui_drag_int2_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_DragInt2Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragInt3`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_drag_int3(_p0 : Bytes, _p1 : FixedArray[Int]) -> Bool = "ImGui_DragInt3"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragInt3Ex`.
#borrow(_p0, _p5, _p1)
pub extern "C" fn im_gui_drag_int3_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_DragInt3Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragInt4`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_drag_int4(_p0 : Bytes, _p1 : FixedArray[Int]) -> Bool = "ImGui_DragInt4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragInt4Ex`.
#borrow(_p0, _p5, _p1)
pub extern "C" fn im_gui_drag_int4_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_DragInt4Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragIntRange2`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_drag_int_range2(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Ref[Int]?,
) -> Bool = "ImGui_DragIntRange2"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragIntRange2Ex`.
#borrow(_p0, _p6, _p1, _p2, _p7)
pub extern "C" fn im_gui_drag_int_range2_ex(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Ref[Int]?,
  _p3 : Float,
  _p4 : Int,
  _p5 : Int,
  _p6 : Bytes,
  _p7 : Ref[Byte]?,
  _p8 : Int,
) -> Bool = "ImGui_DragIntRange2Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragScalar`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_drag_scalar(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
) -> Bool = "ImGui_DragScalar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragScalarEx`.
#borrow(_p0, _p2, _p4, _p5, _p6)
pub extern "C" fn im_gui_drag_scalar_ex(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Float,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
  _p6 : Ref[Byte]?,
  _p7 : Int,
) -> Bool = "ImGui_DragScalarEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragScalarN`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_drag_scalar_n(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
) -> Bool = "ImGui_DragScalarN"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DragScalarNEx`.
#borrow(_p0, _p2, _p5, _p6, _p7)
pub extern "C" fn im_gui_drag_scalar_n_ex(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : Float,
  _p5 : VoidPtr,
  _p6 : VoidPtr,
  _p7 : Ref[Byte]?,
  _p8 : Int,
) -> Bool = "ImGui_DragScalarNEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderFloat`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_float(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Float,
  _p3 : Float,
) -> Bool = "ImGui_SliderFloat"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderFloatEx`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_float_ex(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Float,
  _p3 : Float,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderFloatEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderFloat2`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_float2(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
) -> Bool = "ImGui_SliderFloat2"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderFloat2Ex`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_float2_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderFloat2Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderFloat3`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_float3(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
) -> Bool = "ImGui_SliderFloat3"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderFloat3Ex`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_float3_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderFloat3Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderFloat4`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_float4(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
) -> Bool = "ImGui_SliderFloat4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderFloat4Ex`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_float4_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Float,
  _p3 : Float,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderFloat4Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderAngle`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_angle(_p0 : Bytes, _p1 : Ref[Float]?) -> Bool = "ImGui_SliderAngle"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderAngleEx`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_angle_ex(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Float,
  _p3 : Float,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderAngleEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderInt`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_int(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SliderInt"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderIntEx`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_int_ex(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Int,
  _p3 : Int,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderIntEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderInt2`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_int2(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SliderInt2"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderInt2Ex`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_int2_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
  _p3 : Int,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderInt2Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderInt3`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_int3(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SliderInt3"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderInt3Ex`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_int3_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
  _p3 : Int,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderInt3Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderInt4`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_slider_int4(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SliderInt4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderInt4Ex`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_slider_int4_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
  _p3 : Int,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_SliderInt4Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderScalar`.
#borrow(_p0, _p2, _p3, _p4)
pub extern "C" fn im_gui_slider_scalar(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
) -> Bool = "ImGui_SliderScalar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderScalarEx`.
#borrow(_p0, _p2, _p3, _p4, _p5)
pub extern "C" fn im_gui_slider_scalar_ex(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
  _p5 : Ref[Byte]?,
  _p6 : Int,
) -> Bool = "ImGui_SliderScalarEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderScalarN`.
#borrow(_p0, _p2, _p4, _p5)
pub extern "C" fn im_gui_slider_scalar_n(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
) -> Bool = "ImGui_SliderScalarN"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SliderScalarNEx`.
#borrow(_p0, _p2, _p4, _p5, _p6)
pub extern "C" fn im_gui_slider_scalar_n_ex(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
  _p6 : Ref[Byte]?,
  _p7 : Int,
) -> Bool = "ImGui_SliderScalarNEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_VSliderFloat`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_v_slider_float(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Ref[Float]?,
  _p3 : Float,
  _p4 : Float,
) -> Bool = "ImGui_VSliderFloat"

///|
/// Direct dear_bindings C ABI binding for `ImGui_VSliderFloatEx`.
#borrow(_p0, _p5, _p1, _p2)
pub extern "C" fn im_gui_v_slider_float_ex(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Ref[Float]?,
  _p3 : Float,
  _p4 : Float,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_VSliderFloatEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_VSliderInt`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_v_slider_int(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Ref[Int]?,
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_VSliderInt"

///|
/// Direct dear_bindings C ABI binding for `ImGui_VSliderIntEx`.
#borrow(_p0, _p5, _p1, _p2)
pub extern "C" fn im_gui_v_slider_int_ex(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Ref[Int]?,
  _p3 : Int,
  _p4 : Int,
  _p5 : Bytes,
  _p6 : Int,
) -> Bool = "ImGui_VSliderIntEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_VSliderScalar`.
#borrow(_p0, _p1, _p3, _p4, _p5)
pub extern "C" fn im_gui_v_slider_scalar(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
) -> Bool = "ImGui_VSliderScalar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_VSliderScalarEx`.
#borrow(_p0, _p1, _p3, _p4, _p5, _p6)
pub extern "C" fn im_gui_v_slider_scalar_ex(
  _p0 : Bytes,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
  _p6 : Ref[Byte]?,
  _p7 : Int,
) -> Bool = "ImGui_VSliderScalarEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputText`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_text(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_InputText"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputTextEx`.
#borrow(_p0, _p1, _p4, _p5)
pub extern "C" fn im_gui_input_text_ex(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Int,
  _p3 : Int,
  _p4 : FuncRef[(ImGuiInputTextCallbackData) -> Int],
  _p5 : VoidPtr,
) -> Bool = "ImGui_InputTextEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputTextMultiline`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_text_multiline(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Int,
) -> Bool = "ImGui_InputTextMultiline"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputTextMultilineEx`.
#borrow(_p0, _p1, _p3, _p5, _p6)
pub extern "C" fn im_gui_input_text_multiline_ex(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Int,
  _p3 : ImVec2,
  _p4 : Int,
  _p5 : FuncRef[(ImGuiInputTextCallbackData) -> Int],
  _p6 : VoidPtr,
) -> Bool = "ImGui_InputTextMultilineEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputTextWithHint`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_input_text_with_hint(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Bytes,
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_InputTextWithHint"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputTextWithHintEx`.
#borrow(_p0, _p1, _p2, _p5, _p6)
pub extern "C" fn im_gui_input_text_with_hint_ex(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Bytes,
  _p3 : Int,
  _p4 : Int,
  _p5 : FuncRef[(ImGuiInputTextCallbackData) -> Int],
  _p6 : VoidPtr,
) -> Bool = "ImGui_InputTextWithHintEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputFloat`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_float(_p0 : Bytes, _p1 : Ref[Float]?) -> Bool = "ImGui_InputFloat"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputFloatEx`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_input_float_ex(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Float,
  _p3 : Float,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_InputFloatEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputFloat2`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_float2(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
) -> Bool = "ImGui_InputFloat2"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputFloat2Ex`.
#borrow(_p0, _p2, _p1)
pub extern "C" fn im_gui_input_float2_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Bytes,
  _p3 : Int,
) -> Bool = "ImGui_InputFloat2Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputFloat3`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_float3(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
) -> Bool = "ImGui_InputFloat3"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputFloat3Ex`.
#borrow(_p0, _p2, _p1)
pub extern "C" fn im_gui_input_float3_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Bytes,
  _p3 : Int,
) -> Bool = "ImGui_InputFloat3Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputFloat4`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_float4(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
) -> Bool = "ImGui_InputFloat4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputFloat4Ex`.
#borrow(_p0, _p2, _p1)
pub extern "C" fn im_gui_input_float4_ex(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Bytes,
  _p3 : Int,
) -> Bool = "ImGui_InputFloat4Ex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputInt`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_int(_p0 : Bytes, _p1 : Ref[Int]?) -> Bool = "ImGui_InputInt"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputIntEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_int_ex(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_InputIntEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputInt2`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_int2(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
) -> Bool = "ImGui_InputInt2"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputInt3`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_int3(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
) -> Bool = "ImGui_InputInt3"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputInt4`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_int4(
  _p0 : Bytes,
  _p1 : FixedArray[Int],
  _p2 : Int,
) -> Bool = "ImGui_InputInt4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputDouble`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_input_double(_p0 : Bytes, _p1 : Ref[Double]?) -> Bool = "ImGui_InputDouble"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputDoubleEx`.
#borrow(_p0, _p4, _p1)
pub extern "C" fn im_gui_input_double_ex(
  _p0 : Bytes,
  _p1 : Ref[Double]?,
  _p2 : Double,
  _p3 : Double,
  _p4 : Bytes,
  _p5 : Int,
) -> Bool = "ImGui_InputDoubleEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputScalar`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_input_scalar(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
) -> Bool = "ImGui_InputScalar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputScalarEx`.
#borrow(_p0, _p2, _p3, _p4, _p5)
pub extern "C" fn im_gui_input_scalar_ex(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : VoidPtr,
  _p4 : VoidPtr,
  _p5 : Ref[Byte]?,
  _p6 : Int,
) -> Bool = "ImGui_InputScalarEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputScalarN`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_input_scalar_n(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
) -> Bool = "ImGui_InputScalarN"

///|
/// Direct dear_bindings C ABI binding for `ImGui_InputScalarNEx`.
#borrow(_p0, _p2, _p4, _p5, _p6)
pub extern "C" fn im_gui_input_scalar_n_ex(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : VoidPtr,
  _p3 : Int,
  _p4 : VoidPtr,
  _p5 : VoidPtr,
  _p6 : Ref[Byte]?,
  _p7 : Int,
) -> Bool = "ImGui_InputScalarNEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorEdit3`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_color_edit3(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Int,
) -> Bool = "ImGui_ColorEdit3"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorEdit4`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_color_edit4(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Int,
) -> Bool = "ImGui_ColorEdit4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorPicker3`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_color_picker3(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Int,
) -> Bool = "ImGui_ColorPicker3"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorPicker4`.
#borrow(_p0, _p1, _p3)
pub extern "C" fn im_gui_color_picker4(
  _p0 : Bytes,
  _p1 : FixedArray[Float],
  _p2 : Int,
  _p3 : Ref[Float]?,
) -> Bool = "ImGui_ColorPicker4"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorButton`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_color_button(
  _p0 : Bytes,
  _p1 : ImVec4,
  _p2 : Int,
) -> Bool = "ImGui_ColorButton"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorButtonEx`.
#borrow(_p0, _p1, _p3)
pub extern "C" fn im_gui_color_button_ex(
  _p0 : Bytes,
  _p1 : ImVec4,
  _p2 : Int,
  _p3 : ImVec2,
) -> Bool = "ImGui_ColorButtonEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetColorEditOptions`.
pub extern "C" fn im_gui_set_color_edit_options(_p0 : Int) -> Unit = "ImGui_SetColorEditOptions"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNode`.
#borrow(_p0)
pub extern "C" fn im_gui_tree_node(_p0 : Bytes) -> Bool = "ImGui_TreeNode"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeStrUnformatted`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_tree_node_str_unformatted(
  _p0 : Bytes,
  _p1 : Bytes,
) -> Bool = "ImGui_TreeNodeStrUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodePtrUnformatted`.
#borrow(_p1, _p0)
pub extern "C" fn im_gui_tree_node_ptr_unformatted(
  _p0 : VoidPtr,
  _p1 : Bytes,
) -> Bool = "ImGui_TreeNodePtrUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeV`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_tree_node_v(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Int,
) -> Bool = "ImGui_TreeNodeV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeVPtr`.
#borrow(_p1, _p0)
pub extern "C" fn im_gui_tree_node_v_ptr(
  _p0 : VoidPtr,
  _p1 : Bytes,
  _p2 : Int,
) -> Bool = "ImGui_TreeNodeVPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeEx`.
#borrow(_p0)
pub extern "C" fn im_gui_tree_node_ex(_p0 : Bytes, _p1 : Int) -> Bool = "ImGui_TreeNodeEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeExStrUnformatted`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_tree_node_ex_str_unformatted(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : Bytes,
) -> Bool = "ImGui_TreeNodeExStrUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeExPtrUnformatted`.
#borrow(_p2, _p0)
pub extern "C" fn im_gui_tree_node_ex_ptr_unformatted(
  _p0 : VoidPtr,
  _p1 : Int,
  _p2 : Bytes,
) -> Bool = "ImGui_TreeNodeExPtrUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeExV`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_tree_node_ex_v(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : Bytes,
  _p3 : Int,
) -> Bool = "ImGui_TreeNodeExV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeExVPtr`.
#borrow(_p2, _p0)
pub extern "C" fn im_gui_tree_node_ex_v_ptr(
  _p0 : VoidPtr,
  _p1 : Int,
  _p2 : Bytes,
  _p3 : Int,
) -> Bool = "ImGui_TreeNodeExVPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreePush`.
#borrow(_p0)
pub extern "C" fn im_gui_tree_push(_p0 : Bytes) -> Unit = "ImGui_TreePush"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreePushPtr`.
#borrow(_p0)
pub extern "C" fn im_gui_tree_push_ptr(_p0 : VoidPtr) -> Unit = "ImGui_TreePushPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreePop`.
pub extern "C" fn im_gui_tree_pop() -> Unit = "ImGui_TreePop"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetTreeNodeToLabelSpacing`.
pub extern "C" fn im_gui_get_tree_node_to_label_spacing() -> Float = "ImGui_GetTreeNodeToLabelSpacing"

///|
/// Direct dear_bindings C ABI binding for `ImGui_CollapsingHeader`.
#borrow(_p0)
pub extern "C" fn im_gui_collapsing_header(_p0 : Bytes, _p1 : Int) -> Bool = "ImGui_CollapsingHeader"

///|
/// Direct dear_bindings C ABI binding for `ImGui_CollapsingHeaderBoolPtr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_collapsing_header_bool_ptr(
  _p0 : Bytes,
  _p1 : Ref[Bool]?,
  _p2 : Int,
) -> Bool = "ImGui_CollapsingHeaderBoolPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextItemOpen`.
pub extern "C" fn im_gui_set_next_item_open(_p0 : Bool, _p1 : Int) -> Unit = "ImGui_SetNextItemOpen"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextItemStorageID`.
pub extern "C" fn im_gui_set_next_item_storage_id(_p0 : UInt) -> Unit = "ImGui_SetNextItemStorageID"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TreeNodeGetOpen`.
pub extern "C" fn im_gui_tree_node_get_open(_p0 : UInt) -> Bool = "ImGui_TreeNodeGetOpen"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Selectable`.
#borrow(_p0)
pub extern "C" fn im_gui_selectable(_p0 : Bytes) -> Bool = "ImGui_Selectable"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SelectableEx`.
#borrow(_p0, _p3)
pub extern "C" fn im_gui_selectable_ex(
  _p0 : Bytes,
  _p1 : Bool,
  _p2 : Int,
  _p3 : ImVec2,
) -> Bool = "ImGui_SelectableEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SelectableBoolPtr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_selectable_bool_ptr(
  _p0 : Bytes,
  _p1 : Ref[Bool]?,
  _p2 : Int,
) -> Bool = "ImGui_SelectableBoolPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SelectableBoolPtrEx`.
#borrow(_p0, _p1, _p3)
pub extern "C" fn im_gui_selectable_bool_ptr_ex(
  _p0 : Bytes,
  _p1 : Ref[Bool]?,
  _p2 : Int,
  _p3 : ImVec2,
) -> Bool = "ImGui_SelectableBoolPtrEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginMultiSelect`.
pub extern "C" fn im_gui_begin_multi_select(_p0 : Int) -> ImGuiMultiSelectIO = "ImGui_BeginMultiSelect"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginMultiSelectEx`.
pub extern "C" fn im_gui_begin_multi_select_ex(
  _p0 : Int,
  _p1 : Int,
  _p2 : Int,
) -> ImGuiMultiSelectIO = "ImGui_BeginMultiSelectEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndMultiSelect`.
pub extern "C" fn im_gui_end_multi_select() -> ImGuiMultiSelectIO = "ImGui_EndMultiSelect"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextItemSelectionUserData`.
pub extern "C" fn im_gui_set_next_item_selection_user_data(_p0 : Int64) -> Unit = "ImGui_SetNextItemSelectionUserData"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemToggledSelection`.
pub extern "C" fn im_gui_is_item_toggled_selection() -> Bool = "ImGui_IsItemToggledSelection"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginListBox`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_begin_list_box(_p0 : Bytes, _p1 : ImVec2) -> Bool = "ImGui_BeginListBox"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndListBox`.
pub extern "C" fn im_gui_end_list_box() -> Unit = "ImGui_EndListBox"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ListBox`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_list_box(
  _p0 : Bytes,
  _p1 : Ref[Int]?,
  _p2 : FixedArray[Bytes],
  _p3 : Int,
  _p4 : Int,
) -> Bool = "ImGui_ListBox"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PlotLines`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_plot_lines(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Int,
) -> Unit = "ImGui_PlotLines"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PlotLinesEx`.
#borrow(_p0, _p1, _p4, _p7)
pub extern "C" fn im_gui_plot_lines_ex(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Int,
  _p3 : Int,
  _p4 : Ref[Byte]?,
  _p5 : Float,
  _p6 : Float,
  _p7 : ImVec2,
  _p8 : Int,
) -> Unit = "ImGui_PlotLinesEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PlotHistogram`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_plot_histogram(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Int,
) -> Unit = "ImGui_PlotHistogram"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PlotHistogramEx`.
#borrow(_p0, _p1, _p4, _p7)
pub extern "C" fn im_gui_plot_histogram_ex(
  _p0 : Bytes,
  _p1 : Ref[Float]?,
  _p2 : Int,
  _p3 : Int,
  _p4 : Ref[Byte]?,
  _p5 : Float,
  _p6 : Float,
  _p7 : ImVec2,
  _p8 : Int,
) -> Unit = "ImGui_PlotHistogramEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginMenuBar`.
pub extern "C" fn im_gui_begin_menu_bar() -> Bool = "ImGui_BeginMenuBar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndMenuBar`.
pub extern "C" fn im_gui_end_menu_bar() -> Unit = "ImGui_EndMenuBar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginMainMenuBar`.
pub extern "C" fn im_gui_begin_main_menu_bar() -> Bool = "ImGui_BeginMainMenuBar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndMainMenuBar`.
pub extern "C" fn im_gui_end_main_menu_bar() -> Unit = "ImGui_EndMainMenuBar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginMenu`.
#borrow(_p0)
pub extern "C" fn im_gui_begin_menu(_p0 : Bytes) -> Bool = "ImGui_BeginMenu"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginMenuEx`.
#borrow(_p0)
pub extern "C" fn im_gui_begin_menu_ex(_p0 : Bytes, _p1 : Bool) -> Bool = "ImGui_BeginMenuEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndMenu`.
pub extern "C" fn im_gui_end_menu() -> Unit = "ImGui_EndMenu"

///|
/// Direct dear_bindings C ABI binding for `ImGui_MenuItem`.
#borrow(_p0)
pub extern "C" fn im_gui_menu_item(_p0 : Bytes) -> Bool = "ImGui_MenuItem"

///|
/// Direct dear_bindings C ABI binding for `ImGui_MenuItemEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_menu_item_ex(
  _p0 : Bytes,
  _p1 : Ref[Byte]?,
  _p2 : Bool,
  _p3 : Bool,
) -> Bool = "ImGui_MenuItemEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_MenuItemBoolPtr`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_menu_item_bool_ptr(
  _p0 : Bytes,
  _p1 : Bytes,
  _p2 : Ref[Bool]?,
  _p3 : Bool,
) -> Bool = "ImGui_MenuItemBoolPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginTooltip`.
pub extern "C" fn im_gui_begin_tooltip() -> Bool = "ImGui_BeginTooltip"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndTooltip`.
pub extern "C" fn im_gui_end_tooltip() -> Unit = "ImGui_EndTooltip"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetTooltipUnformatted`.
#borrow(_p0)
pub extern "C" fn im_gui_set_tooltip_unformatted(_p0 : Bytes) -> Unit = "ImGui_SetTooltipUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetTooltipV`.
#borrow(_p0)
pub extern "C" fn im_gui_set_tooltip_v(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_SetTooltipV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginItemTooltip`.
pub extern "C" fn im_gui_begin_item_tooltip() -> Bool = "ImGui_BeginItemTooltip"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetItemTooltipUnformatted`.
#borrow(_p0)
pub extern "C" fn im_gui_set_item_tooltip_unformatted(_p0 : Bytes) -> Unit = "ImGui_SetItemTooltipUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetItemTooltipV`.
#borrow(_p0)
pub extern "C" fn im_gui_set_item_tooltip_v(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_SetItemTooltipV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginPopup`.
#borrow(_p0)
pub extern "C" fn im_gui_begin_popup(_p0 : Bytes, _p1 : Int) -> Bool = "ImGui_BeginPopup"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginPopupModal`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_begin_popup_modal(
  _p0 : Bytes,
  _p1 : Ref[Bool]?,
  _p2 : Int,
) -> Bool = "ImGui_BeginPopupModal"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndPopup`.
pub extern "C" fn im_gui_end_popup() -> Unit = "ImGui_EndPopup"

///|
/// Direct dear_bindings C ABI binding for `ImGui_OpenPopup`.
#borrow(_p0)
pub extern "C" fn im_gui_open_popup(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_OpenPopup"

///|
/// Direct dear_bindings C ABI binding for `ImGui_OpenPopupID`.
pub extern "C" fn im_gui_open_popup_id(_p0 : UInt, _p1 : Int) -> Unit = "ImGui_OpenPopupID"

///|
/// Direct dear_bindings C ABI binding for `ImGui_OpenPopupOnItemClick`.
#borrow(_p0)
pub extern "C" fn im_gui_open_popup_on_item_click(
  _p0 : Ref[Byte]?,
  _p1 : Int,
) -> Unit = "ImGui_OpenPopupOnItemClick"

///|
/// Direct dear_bindings C ABI binding for `ImGui_CloseCurrentPopup`.
pub extern "C" fn im_gui_close_current_popup() -> Unit = "ImGui_CloseCurrentPopup"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginPopupContextItem`.
pub extern "C" fn im_gui_begin_popup_context_item() -> Bool = "ImGui_BeginPopupContextItem"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginPopupContextItemEx`.
#borrow(_p0)
pub extern "C" fn im_gui_begin_popup_context_item_ex(
  _p0 : Ref[Byte]?,
  _p1 : Int,
) -> Bool = "ImGui_BeginPopupContextItemEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginPopupContextWindow`.
pub extern "C" fn im_gui_begin_popup_context_window() -> Bool = "ImGui_BeginPopupContextWindow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginPopupContextWindowEx`.
#borrow(_p0)
pub extern "C" fn im_gui_begin_popup_context_window_ex(
  _p0 : Ref[Byte]?,
  _p1 : Int,
) -> Bool = "ImGui_BeginPopupContextWindowEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginPopupContextVoid`.
pub extern "C" fn im_gui_begin_popup_context_void() -> Bool = "ImGui_BeginPopupContextVoid"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginPopupContextVoidEx`.
#borrow(_p0)
pub extern "C" fn im_gui_begin_popup_context_void_ex(
  _p0 : Ref[Byte]?,
  _p1 : Int,
) -> Bool = "ImGui_BeginPopupContextVoidEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsPopupOpen`.
#borrow(_p0)
pub extern "C" fn im_gui_is_popup_open(_p0 : Bytes, _p1 : Int) -> Bool = "ImGui_IsPopupOpen"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginTable`.
#borrow(_p0)
pub extern "C" fn im_gui_begin_table(_p0 : Bytes, _p1 : Int, _p2 : Int) -> Bool = "ImGui_BeginTable"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginTableEx`.
#borrow(_p0, _p3)
pub extern "C" fn im_gui_begin_table_ex(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : Int,
  _p3 : ImVec2,
  _p4 : Float,
) -> Bool = "ImGui_BeginTableEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndTable`.
pub extern "C" fn im_gui_end_table() -> Unit = "ImGui_EndTable"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableNextRow`.
pub extern "C" fn im_gui_table_next_row() -> Unit = "ImGui_TableNextRow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableNextRowEx`.
pub extern "C" fn im_gui_table_next_row_ex(_p0 : Int, _p1 : Float) -> Unit = "ImGui_TableNextRowEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableNextColumn`.
pub extern "C" fn im_gui_table_next_column() -> Bool = "ImGui_TableNextColumn"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableSetColumnIndex`.
pub extern "C" fn im_gui_table_set_column_index(_p0 : Int) -> Bool = "ImGui_TableSetColumnIndex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableSetupColumn`.
#borrow(_p0)
pub extern "C" fn im_gui_table_setup_column(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_TableSetupColumn"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableSetupColumnEx`.
#borrow(_p0)
pub extern "C" fn im_gui_table_setup_column_ex(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : Float,
  _p3 : UInt,
) -> Unit = "ImGui_TableSetupColumnEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableSetupScrollFreeze`.
pub extern "C" fn im_gui_table_setup_scroll_freeze(
  _p0 : Int,
  _p1 : Int,
) -> Unit = "ImGui_TableSetupScrollFreeze"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableHeader`.
#borrow(_p0)
pub extern "C" fn im_gui_table_header(_p0 : Bytes) -> Unit = "ImGui_TableHeader"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableHeadersRow`.
pub extern "C" fn im_gui_table_headers_row() -> Unit = "ImGui_TableHeadersRow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableAngledHeadersRow`.
pub extern "C" fn im_gui_table_angled_headers_row() -> Unit = "ImGui_TableAngledHeadersRow"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableGetSortSpecs`.
pub extern "C" fn im_gui_table_get_sort_specs() -> ImGuiTableSortSpecs = "ImGui_TableGetSortSpecs"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableGetColumnCount`.
pub extern "C" fn im_gui_table_get_column_count() -> Int = "ImGui_TableGetColumnCount"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableGetColumnIndex`.
pub extern "C" fn im_gui_table_get_column_index() -> Int = "ImGui_TableGetColumnIndex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableGetRowIndex`.
pub extern "C" fn im_gui_table_get_row_index() -> Int = "ImGui_TableGetRowIndex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableGetColumnName`.
pub extern "C" fn im_gui_table_get_column_name(_p0 : Int) -> Ref[Byte]? = "ImGui_TableGetColumnName"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableGetColumnFlags`.
pub extern "C" fn im_gui_table_get_column_flags(_p0 : Int) -> Int = "ImGui_TableGetColumnFlags"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableSetColumnEnabled`.
pub extern "C" fn im_gui_table_set_column_enabled(
  _p0 : Int,
  _p1 : Bool,
) -> Unit = "ImGui_TableSetColumnEnabled"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableGetHoveredColumn`.
pub extern "C" fn im_gui_table_get_hovered_column() -> Int = "ImGui_TableGetHoveredColumn"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TableSetBgColor`.
pub extern "C" fn im_gui_table_set_bg_color(
  _p0 : Int,
  _p1 : UInt,
  _p2 : Int,
) -> Unit = "ImGui_TableSetBgColor"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Columns`.
pub extern "C" fn im_gui_columns() -> Unit = "ImGui_Columns"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColumnsEx`.
#borrow(_p1)
pub extern "C" fn im_gui_columns_ex(
  _p0 : Int,
  _p1 : Ref[Byte]?,
  _p2 : Bool,
) -> Unit = "ImGui_ColumnsEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_NextColumn`.
pub extern "C" fn im_gui_next_column() -> Unit = "ImGui_NextColumn"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColumnIndex`.
pub extern "C" fn im_gui_get_column_index() -> Int = "ImGui_GetColumnIndex"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColumnWidth`.
pub extern "C" fn im_gui_get_column_width(_p0 : Int) -> Float = "ImGui_GetColumnWidth"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetColumnWidth`.
pub extern "C" fn im_gui_set_column_width(_p0 : Int, _p1 : Float) -> Unit = "ImGui_SetColumnWidth"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColumnOffset`.
pub extern "C" fn im_gui_get_column_offset(_p0 : Int) -> Float = "ImGui_GetColumnOffset"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetColumnOffset`.
pub extern "C" fn im_gui_set_column_offset(_p0 : Int, _p1 : Float) -> Unit = "ImGui_SetColumnOffset"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetColumnsCount`.
pub extern "C" fn im_gui_get_columns_count() -> Int = "ImGui_GetColumnsCount"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginTabBar`.
#borrow(_p0)
pub extern "C" fn im_gui_begin_tab_bar(_p0 : Bytes, _p1 : Int) -> Bool = "ImGui_BeginTabBar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndTabBar`.
pub extern "C" fn im_gui_end_tab_bar() -> Unit = "ImGui_EndTabBar"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginTabItem`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_begin_tab_item(
  _p0 : Bytes,
  _p1 : Ref[Bool]?,
  _p2 : Int,
) -> Bool = "ImGui_BeginTabItem"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndTabItem`.
pub extern "C" fn im_gui_end_tab_item() -> Unit = "ImGui_EndTabItem"

///|
/// Direct dear_bindings C ABI binding for `ImGui_TabItemButton`.
#borrow(_p0)
pub extern "C" fn im_gui_tab_item_button(_p0 : Bytes, _p1 : Int) -> Bool = "ImGui_TabItemButton"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetTabItemClosed`.
#borrow(_p0)
pub extern "C" fn im_gui_set_tab_item_closed(_p0 : Bytes) -> Unit = "ImGui_SetTabItemClosed"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LogToTTY`.
pub extern "C" fn im_gui_log_to_tty(_p0 : Int) -> Unit = "ImGui_LogToTTY"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LogToFile`.
#borrow(_p1)
pub extern "C" fn im_gui_log_to_file(_p0 : Int, _p1 : Ref[Byte]?) -> Unit = "ImGui_LogToFile"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LogToClipboard`.
pub extern "C" fn im_gui_log_to_clipboard(_p0 : Int) -> Unit = "ImGui_LogToClipboard"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LogFinish`.
pub extern "C" fn im_gui_log_finish() -> Unit = "ImGui_LogFinish"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LogButtons`.
pub extern "C" fn im_gui_log_buttons() -> Unit = "ImGui_LogButtons"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LogTextUnformatted`.
#borrow(_p0)
pub extern "C" fn im_gui_log_text_unformatted(_p0 : Bytes) -> Unit = "ImGui_LogTextUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LogTextV`.
#borrow(_p0)
pub extern "C" fn im_gui_log_text_v(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_LogTextV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginDragDropSource`.
pub extern "C" fn im_gui_begin_drag_drop_source(_p0 : Int) -> Bool = "ImGui_BeginDragDropSource"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetDragDropPayload`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_set_drag_drop_payload(
  _p0 : Bytes,
  _p1 : VoidPtr,
  _p2 : Int,
  _p3 : Int,
) -> Bool = "ImGui_SetDragDropPayload"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndDragDropSource`.
pub extern "C" fn im_gui_end_drag_drop_source() -> Unit = "ImGui_EndDragDropSource"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginDragDropTarget`.
pub extern "C" fn im_gui_begin_drag_drop_target() -> Bool = "ImGui_BeginDragDropTarget"

///|
/// Direct dear_bindings C ABI binding for `ImGui_AcceptDragDropPayload`.
#borrow(_p0)
pub extern "C" fn im_gui_accept_drag_drop_payload(
  _p0 : Bytes,
  _p1 : Int,
) -> ImGuiPayload = "ImGui_AcceptDragDropPayload"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndDragDropTarget`.
pub extern "C" fn im_gui_end_drag_drop_target() -> Unit = "ImGui_EndDragDropTarget"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetDragDropPayload`.
pub extern "C" fn im_gui_get_drag_drop_payload() -> ImGuiPayload = "ImGui_GetDragDropPayload"

///|
/// Direct dear_bindings C ABI binding for `ImGui_BeginDisabled`.
pub extern "C" fn im_gui_begin_disabled(_p0 : Bool) -> Unit = "ImGui_BeginDisabled"

///|
/// Direct dear_bindings C ABI binding for `ImGui_EndDisabled`.
pub extern "C" fn im_gui_end_disabled() -> Unit = "ImGui_EndDisabled"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushClipRect`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_push_clip_rect(
  _p0 : ImVec2,
  _p1 : ImVec2,
  _p2 : Bool,
) -> Unit = "ImGui_PushClipRect"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopClipRect`.
pub extern "C" fn im_gui_pop_clip_rect() -> Unit = "ImGui_PopClipRect"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetItemDefaultFocus`.
pub extern "C" fn im_gui_set_item_default_focus() -> Unit = "ImGui_SetItemDefaultFocus"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetKeyboardFocusHere`.
pub extern "C" fn im_gui_set_keyboard_focus_here() -> Unit = "ImGui_SetKeyboardFocusHere"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetKeyboardFocusHereEx`.
pub extern "C" fn im_gui_set_keyboard_focus_here_ex(_p0 : Int) -> Unit = "ImGui_SetKeyboardFocusHereEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNavCursorVisible`.
pub extern "C" fn im_gui_set_nav_cursor_visible(_p0 : Bool) -> Unit = "ImGui_SetNavCursorVisible"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextItemAllowOverlap`.
pub extern "C" fn im_gui_set_next_item_allow_overlap() -> Unit = "ImGui_SetNextItemAllowOverlap"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemHovered`.
pub extern "C" fn im_gui_is_item_hovered(_p0 : Int) -> Bool = "ImGui_IsItemHovered"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemActive`.
pub extern "C" fn im_gui_is_item_active() -> Bool = "ImGui_IsItemActive"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemFocused`.
pub extern "C" fn im_gui_is_item_focused() -> Bool = "ImGui_IsItemFocused"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemClicked`.
pub extern "C" fn im_gui_is_item_clicked() -> Bool = "ImGui_IsItemClicked"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemClickedEx`.
pub extern "C" fn im_gui_is_item_clicked_ex(_p0 : Int) -> Bool = "ImGui_IsItemClickedEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemVisible`.
pub extern "C" fn im_gui_is_item_visible() -> Bool = "ImGui_IsItemVisible"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemEdited`.
pub extern "C" fn im_gui_is_item_edited() -> Bool = "ImGui_IsItemEdited"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemActivated`.
pub extern "C" fn im_gui_is_item_activated() -> Bool = "ImGui_IsItemActivated"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemDeactivated`.
pub extern "C" fn im_gui_is_item_deactivated() -> Bool = "ImGui_IsItemDeactivated"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemDeactivatedAfterEdit`.
pub extern "C" fn im_gui_is_item_deactivated_after_edit() -> Bool = "ImGui_IsItemDeactivatedAfterEdit"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsItemToggledOpen`.
pub extern "C" fn im_gui_is_item_toggled_open() -> Bool = "ImGui_IsItemToggledOpen"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsAnyItemHovered`.
pub extern "C" fn im_gui_is_any_item_hovered() -> Bool = "ImGui_IsAnyItemHovered"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsAnyItemActive`.
pub extern "C" fn im_gui_is_any_item_active() -> Bool = "ImGui_IsAnyItemActive"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsAnyItemFocused`.
pub extern "C" fn im_gui_is_any_item_focused() -> Bool = "ImGui_IsAnyItemFocused"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetItemID`.
pub extern "C" fn im_gui_get_item_id() -> UInt = "ImGui_GetItemID"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetItemFlags`.
pub extern "C" fn im_gui_get_item_flags() -> Int = "ImGui_GetItemFlags"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetMainViewport`.
pub extern "C" fn im_gui_get_main_viewport() -> ImGuiViewport = "ImGui_GetMainViewport"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetBackgroundDrawList`.
pub extern "C" fn im_gui_get_background_draw_list() -> ImDrawList = "ImGui_GetBackgroundDrawList"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetForegroundDrawList`.
pub extern "C" fn im_gui_get_foreground_draw_list() -> ImDrawList = "ImGui_GetForegroundDrawList"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsRectVisibleBySize`.
#borrow(_p0)
pub extern "C" fn im_gui_is_rect_visible_by_size(_p0 : ImVec2) -> Bool = "ImGui_IsRectVisibleBySize"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsRectVisibleImVec2Ptr`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_is_rect_visible_im_vec2_ptr(
  _p0 : ImVec2,
  _p1 : ImVec2,
) -> Bool = "ImGui_IsRectVisibleImVec2Ptr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetTime`.
pub extern "C" fn im_gui_get_time() -> Double = "ImGui_GetTime"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetFrameCount`.
pub extern "C" fn im_gui_get_frame_count() -> Int = "ImGui_GetFrameCount"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetDrawListSharedData`.
pub extern "C" fn im_gui_get_draw_list_shared_data() -> ImDrawListSharedData = "ImGui_GetDrawListSharedData"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetStyleColorName`.
pub extern "C" fn im_gui_get_style_color_name(_p0 : Int) -> Ref[Byte]? = "ImGui_GetStyleColorName"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetStateStorage`.
#borrow(_p0)
pub extern "C" fn im_gui_set_state_storage(_p0 : ImGuiStorage) -> Unit = "ImGui_SetStateStorage"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetStateStorage`.
pub extern "C" fn im_gui_get_state_storage() -> ImGuiStorage = "ImGui_GetStateStorage"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorConvertFloat4ToU32`.
#borrow(_p0)
pub extern "C" fn im_gui_color_convert_float4_to_u32(_p0 : ImVec4) -> UInt = "ImGui_ColorConvertFloat4ToU32"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorConvertRGBtoHSV`.
#borrow(_p3, _p4, _p5)
pub extern "C" fn im_gui_color_convert_rg_bto_hsv(
  _p0 : Float,
  _p1 : Float,
  _p2 : Float,
  _p3 : Ref[Float]?,
  _p4 : Ref[Float]?,
  _p5 : Ref[Float]?,
) -> Unit = "ImGui_ColorConvertRGBtoHSV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ColorConvertHSVtoRGB`.
#borrow(_p3, _p4, _p5)
pub extern "C" fn im_gui_color_convert_hs_vto_rgb(
  _p0 : Float,
  _p1 : Float,
  _p2 : Float,
  _p3 : Ref[Float]?,
  _p4 : Ref[Float]?,
  _p5 : Ref[Float]?,
) -> Unit = "ImGui_ColorConvertHSVtoRGB"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsKeyDown`.
pub extern "C" fn im_gui_is_key_down(_p0 : Int) -> Bool = "ImGui_IsKeyDown"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsKeyPressed`.
pub extern "C" fn im_gui_is_key_pressed(_p0 : Int) -> Bool = "ImGui_IsKeyPressed"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsKeyPressedEx`.
pub extern "C" fn im_gui_is_key_pressed_ex(_p0 : Int, _p1 : Bool) -> Bool = "ImGui_IsKeyPressedEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsKeyReleased`.
pub extern "C" fn im_gui_is_key_released(_p0 : Int) -> Bool = "ImGui_IsKeyReleased"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsKeyChordPressed`.
pub extern "C" fn im_gui_is_key_chord_pressed(_p0 : Int) -> Bool = "ImGui_IsKeyChordPressed"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetKeyPressedAmount`.
pub extern "C" fn im_gui_get_key_pressed_amount(
  _p0 : Int,
  _p1 : Float,
  _p2 : Float,
) -> Int = "ImGui_GetKeyPressedAmount"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetKeyName`.
pub extern "C" fn im_gui_get_key_name(_p0 : Int) -> Ref[Byte]? = "ImGui_GetKeyName"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextFrameWantCaptureKeyboard`.
pub extern "C" fn im_gui_set_next_frame_want_capture_keyboard(
  _p0 : Bool,
) -> Unit = "ImGui_SetNextFrameWantCaptureKeyboard"

///|
/// Direct dear_bindings C ABI binding for `ImGui_Shortcut`.
pub extern "C" fn im_gui_shortcut(_p0 : Int, _p1 : Int) -> Bool = "ImGui_Shortcut"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextItemShortcut`.
pub extern "C" fn im_gui_set_next_item_shortcut(_p0 : Int, _p1 : Int) -> Unit = "ImGui_SetNextItemShortcut"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetItemKeyOwner`.
pub extern "C" fn im_gui_set_item_key_owner(_p0 : Int) -> Bool = "ImGui_SetItemKeyOwner"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseDown`.
pub extern "C" fn im_gui_is_mouse_down(_p0 : Int) -> Bool = "ImGui_IsMouseDown"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseClicked`.
pub extern "C" fn im_gui_is_mouse_clicked(_p0 : Int) -> Bool = "ImGui_IsMouseClicked"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseClickedEx`.
pub extern "C" fn im_gui_is_mouse_clicked_ex(_p0 : Int, _p1 : Bool) -> Bool = "ImGui_IsMouseClickedEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseReleased`.
pub extern "C" fn im_gui_is_mouse_released(_p0 : Int) -> Bool = "ImGui_IsMouseReleased"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseDoubleClicked`.
pub extern "C" fn im_gui_is_mouse_double_clicked(_p0 : Int) -> Bool = "ImGui_IsMouseDoubleClicked"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseReleasedWithDelay`.
pub extern "C" fn im_gui_is_mouse_released_with_delay(
  _p0 : Int,
  _p1 : Float,
) -> Bool = "ImGui_IsMouseReleasedWithDelay"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetMouseClickedCount`.
pub extern "C" fn im_gui_get_mouse_clicked_count(_p0 : Int) -> Int = "ImGui_GetMouseClickedCount"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseHoveringRect`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_is_mouse_hovering_rect(
  _p0 : ImVec2,
  _p1 : ImVec2,
) -> Bool = "ImGui_IsMouseHoveringRect"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseHoveringRectEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_is_mouse_hovering_rect_ex(
  _p0 : ImVec2,
  _p1 : ImVec2,
  _p2 : Bool,
) -> Bool = "ImGui_IsMouseHoveringRectEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMousePosValid`.
#borrow(_p0)
pub extern "C" fn im_gui_is_mouse_pos_valid(_p0 : ImVec2) -> Bool = "ImGui_IsMousePosValid"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsAnyMouseDown`.
pub extern "C" fn im_gui_is_any_mouse_down() -> Bool = "ImGui_IsAnyMouseDown"

///|
/// Direct dear_bindings C ABI binding for `ImGui_IsMouseDragging`.
pub extern "C" fn im_gui_is_mouse_dragging(_p0 : Int, _p1 : Float) -> Bool = "ImGui_IsMouseDragging"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ResetMouseDragDelta`.
pub extern "C" fn im_gui_reset_mouse_drag_delta() -> Unit = "ImGui_ResetMouseDragDelta"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ResetMouseDragDeltaEx`.
pub extern "C" fn im_gui_reset_mouse_drag_delta_ex(_p0 : Int) -> Unit = "ImGui_ResetMouseDragDeltaEx"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetMouseCursor`.
pub extern "C" fn im_gui_get_mouse_cursor() -> Int = "ImGui_GetMouseCursor"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetMouseCursor`.
pub extern "C" fn im_gui_set_mouse_cursor(_p0 : Int) -> Unit = "ImGui_SetMouseCursor"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetNextFrameWantCaptureMouse`.
pub extern "C" fn im_gui_set_next_frame_want_capture_mouse(_p0 : Bool) -> Unit = "ImGui_SetNextFrameWantCaptureMouse"

///|
/// Direct dear_bindings C ABI binding for `ImGui_GetClipboardText`.
pub extern "C" fn im_gui_get_clipboard_text() -> Ref[Byte]? = "ImGui_GetClipboardText"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetClipboardText`.
#borrow(_p0)
pub extern "C" fn im_gui_set_clipboard_text(_p0 : Bytes) -> Unit = "ImGui_SetClipboardText"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LoadIniSettingsFromDisk`.
#borrow(_p0)
pub extern "C" fn im_gui_load_ini_settings_from_disk(_p0 : Bytes) -> Unit = "ImGui_LoadIniSettingsFromDisk"

///|
/// Direct dear_bindings C ABI binding for `ImGui_LoadIniSettingsFromMemory`.
#borrow(_p0)
pub extern "C" fn im_gui_load_ini_settings_from_memory(
  _p0 : Bytes,
  _p1 : Int,
) -> Unit = "ImGui_LoadIniSettingsFromMemory"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SaveIniSettingsToDisk`.
#borrow(_p0)
pub extern "C" fn im_gui_save_ini_settings_to_disk(_p0 : Bytes) -> Unit = "ImGui_SaveIniSettingsToDisk"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SaveIniSettingsToMemory`.
#borrow(_p0)
pub extern "C" fn im_gui_save_ini_settings_to_memory(
  _p0 : Ref[Int]?,
) -> Ref[Byte]? = "ImGui_SaveIniSettingsToMemory"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DebugTextEncoding`.
#borrow(_p0)
pub extern "C" fn im_gui_debug_text_encoding(_p0 : Bytes) -> Unit = "ImGui_DebugTextEncoding"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DebugFlashStyleColor`.
pub extern "C" fn im_gui_debug_flash_style_color(_p0 : Int) -> Unit = "ImGui_DebugFlashStyleColor"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DebugStartItemPicker`.
pub extern "C" fn im_gui_debug_start_item_picker() -> Unit = "ImGui_DebugStartItemPicker"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DebugCheckVersionAndDataLayout`.
#borrow(_p0)
pub extern "C" fn im_gui_debug_check_version_and_data_layout(
  _p0 : Bytes,
  _p1 : Int,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
  _p5 : Int,
  _p6 : Int,
) -> Bool = "ImGui_DebugCheckVersionAndDataLayout"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DebugLogUnformatted`.
#borrow(_p0)
pub extern "C" fn im_gui_debug_log_unformatted(_p0 : Bytes) -> Unit = "ImGui_DebugLogUnformatted"

///|
/// Direct dear_bindings C ABI binding for `ImGui_DebugLogV`.
#borrow(_p0)
pub extern "C" fn im_gui_debug_log_v(_p0 : Bytes, _p1 : Int) -> Unit = "ImGui_DebugLogV"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetAllocatorFunctions`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_set_allocator_functions(
  _p0 : FuncRef[(Int, VoidPtr) -> VoidPtr],
  _p1 : FuncRef[(VoidPtr, VoidPtr) -> Unit],
  _p2 : VoidPtr,
) -> Unit = "ImGui_SetAllocatorFunctions"

///|
/// Direct dear_bindings C ABI binding for `ImGui_MemAlloc`.
pub extern "C" fn im_gui_mem_alloc(_p0 : Int) -> VoidPtr = "ImGui_MemAlloc"

///|
/// Direct dear_bindings C ABI binding for `ImGui_MemFree`.
#borrow(_p0)
pub extern "C" fn im_gui_mem_free(_p0 : VoidPtr) -> Unit = "ImGui_MemFree"

///|
/// Direct dear_bindings C ABI binding for `ImVector_Construct`.
#borrow(_p0)
pub extern "C" fn im_vector_construct(_p0 : VoidPtr) -> Unit = "ImVector_Construct"

///|
/// Direct dear_bindings C ABI binding for `ImVector_Destruct`.
#borrow(_p0)
pub extern "C" fn im_vector_destruct(_p0 : VoidPtr) -> Unit = "ImVector_Destruct"

///|
/// Direct dear_bindings C ABI binding for `ImStr_FromCharStr`.
#borrow(_p0)
pub extern "C" fn im_str_from_char_str(_p0 : Bytes) -> Int = "ImStr_FromCharStr"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStyle_ScaleAllSizes`.
#borrow(_p0)
pub extern "C" fn im_gui_style_scale_all_sizes(
  _p0 : ImGuiStyle,
  _p1 : Float,
) -> Unit = "ImGuiStyle_ScaleAllSizes"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddKeyEvent`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_key_event(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
) -> Unit = "ImGuiIO_AddKeyEvent"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddKeyAnalogEvent`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_key_analog_event(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
  _p3 : Float,
) -> Unit = "ImGuiIO_AddKeyAnalogEvent"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddMousePosEvent`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_mouse_pos_event(
  _p0 : ImGuiIO,
  _p1 : Float,
  _p2 : Float,
) -> Unit = "ImGuiIO_AddMousePosEvent"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddMouseButtonEvent`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_mouse_button_event(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Bool,
) -> Unit = "ImGuiIO_AddMouseButtonEvent"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddMouseWheelEvent`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_mouse_wheel_event(
  _p0 : ImGuiIO,
  _p1 : Float,
  _p2 : Float,
) -> Unit = "ImGuiIO_AddMouseWheelEvent"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddMouseSourceEvent`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_mouse_source_event(
  _p0 : ImGuiIO,
  _p1 : Int,
) -> Unit = "ImGuiIO_AddMouseSourceEvent"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddFocusEvent`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_focus_event(_p0 : ImGuiIO, _p1 : Bool) -> Unit = "ImGuiIO_AddFocusEvent"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddInputCharacter`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_input_character(
  _p0 : ImGuiIO,
  _p1 : UInt,
) -> Unit = "ImGuiIO_AddInputCharacter"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddInputCharacterUTF16`.
#borrow(_p0)
pub extern "C" fn im_gui_io_add_input_character_utf16(
  _p0 : ImGuiIO,
  _p1 : UInt,
) -> Unit = "ImGuiIO_AddInputCharacterUTF16"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_AddInputCharactersUTF8`.
#borrow(_p1, _p0)
pub extern "C" fn im_gui_io_add_input_characters_utf8(
  _p0 : ImGuiIO,
  _p1 : Bytes,
) -> Unit = "ImGuiIO_AddInputCharactersUTF8"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_SetKeyEventNativeData`.
#borrow(_p0)
pub extern "C" fn im_gui_io_set_key_event_native_data(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Int,
  _p3 : Int,
) -> Unit = "ImGuiIO_SetKeyEventNativeData"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_SetKeyEventNativeDataEx`.
#borrow(_p0)
pub extern "C" fn im_gui_io_set_key_event_native_data_ex(
  _p0 : ImGuiIO,
  _p1 : Int,
  _p2 : Int,
  _p3 : Int,
  _p4 : Int,
) -> Unit = "ImGuiIO_SetKeyEventNativeDataEx"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_SetAppAcceptingEvents`.
#borrow(_p0)
pub extern "C" fn im_gui_io_set_app_accepting_events(
  _p0 : ImGuiIO,
  _p1 : Bool,
) -> Unit = "ImGuiIO_SetAppAcceptingEvents"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_ClearEventsQueue`.
#borrow(_p0)
pub extern "C" fn im_gui_io_clear_events_queue(_p0 : ImGuiIO) -> Unit = "ImGuiIO_ClearEventsQueue"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_ClearInputKeys`.
#borrow(_p0)
pub extern "C" fn im_gui_io_clear_input_keys(_p0 : ImGuiIO) -> Unit = "ImGuiIO_ClearInputKeys"

///|
/// Direct dear_bindings C ABI binding for `ImGuiIO_ClearInputMouse`.
#borrow(_p0)
pub extern "C" fn im_gui_io_clear_input_mouse(_p0 : ImGuiIO) -> Unit = "ImGuiIO_ClearInputMouse"

///|
/// Direct dear_bindings C ABI binding for `ImGuiInputTextCallbackData_DeleteChars`.
#borrow(_p0)
pub extern "C" fn im_gui_input_text_callback_data_delete_chars(
  _p0 : ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImGuiInputTextCallbackData_DeleteChars"

///|
/// Direct dear_bindings C ABI binding for `ImGuiInputTextCallbackData_InsertChars`.
#borrow(_p2, _p0, _p3)
pub extern "C" fn im_gui_input_text_callback_data_insert_chars(
  _p0 : ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : Bytes,
  _p3 : Ref[Byte]?,
) -> Unit = "ImGuiInputTextCallbackData_InsertChars"

///|
/// Direct dear_bindings C ABI binding for `ImGuiInputTextCallbackData_SelectAll`.
#borrow(_p0)
pub extern "C" fn im_gui_input_text_callback_data_select_all(
  _p0 : ImGuiInputTextCallbackData,
) -> Unit = "ImGuiInputTextCallbackData_SelectAll"

///|
/// Direct dear_bindings C ABI binding for `ImGuiInputTextCallbackData_SetSelection`.
#borrow(_p0)
pub extern "C" fn im_gui_input_text_callback_data_set_selection(
  _p0 : ImGuiInputTextCallbackData,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImGuiInputTextCallbackData_SetSelection"

///|
/// Direct dear_bindings C ABI binding for `ImGuiInputTextCallbackData_ClearSelection`.
#borrow(_p0)
pub extern "C" fn im_gui_input_text_callback_data_clear_selection(
  _p0 : ImGuiInputTextCallbackData,
) -> Unit = "ImGuiInputTextCallbackData_ClearSelection"

///|
/// Direct dear_bindings C ABI binding for `ImGuiInputTextCallbackData_HasSelection`.
#borrow(_p0)
pub extern "C" fn im_gui_input_text_callback_data_has_selection(
  _p0 : ImGuiInputTextCallbackData,
) -> Bool = "ImGuiInputTextCallbackData_HasSelection"

///|
/// Direct dear_bindings C ABI binding for `ImGuiPayload_Clear`.
#borrow(_p0)
pub extern "C" fn im_gui_payload_clear(_p0 : ImGuiPayload) -> Unit = "ImGuiPayload_Clear"

///|
/// Direct dear_bindings C ABI binding for `ImGuiPayload_IsDataType`.
#borrow(_p1, _p0)
pub extern "C" fn im_gui_payload_is_data_type(
  _p0 : ImGuiPayload,
  _p1 : Bytes,
) -> Bool = "ImGuiPayload_IsDataType"

///|
/// Direct dear_bindings C ABI binding for `ImGuiPayload_IsPreview`.
#borrow(_p0)
pub extern "C" fn im_gui_payload_is_preview(_p0 : ImGuiPayload) -> Bool = "ImGuiPayload_IsPreview"

///|
/// Direct dear_bindings C ABI binding for `ImGuiPayload_IsDelivery`.
#borrow(_p0)
pub extern "C" fn im_gui_payload_is_delivery(_p0 : ImGuiPayload) -> Bool = "ImGuiPayload_IsDelivery"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextFilter_ImGuiTextRange_empty`.
#borrow(_p0)
pub extern "C" fn im_gui_text_filter_im_gui_text_range_empty(
  _p0 : ImGuiTextFilterImGuiTextRange,
) -> Bool = "ImGuiTextFilter_ImGuiTextRange_empty"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextFilter_ImGuiTextRange_split`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_text_filter_im_gui_text_range_split(
  _p0 : ImGuiTextFilterImGuiTextRange,
  _p1 : Byte,
  _p2 : ImVectorImGuiTextRange,
) -> Unit = "ImGuiTextFilter_ImGuiTextRange_split"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextFilter_Draw`.
#borrow(_p1, _p0)
pub extern "C" fn im_gui_text_filter_draw(
  _p0 : ImGuiTextFilter,
  _p1 : Bytes,
  _p2 : Float,
) -> Bool = "ImGuiTextFilter_Draw"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextFilter_PassFilter`.
#borrow(_p1, _p0, _p2)
pub extern "C" fn im_gui_text_filter_pass_filter(
  _p0 : ImGuiTextFilter,
  _p1 : Bytes,
  _p2 : Ref[Byte]?,
) -> Bool = "ImGuiTextFilter_PassFilter"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextFilter_Build`.
#borrow(_p0)
pub extern "C" fn im_gui_text_filter_build(_p0 : ImGuiTextFilter) -> Unit = "ImGuiTextFilter_Build"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextFilter_Clear`.
#borrow(_p0)
pub extern "C" fn im_gui_text_filter_clear(_p0 : ImGuiTextFilter) -> Unit = "ImGuiTextFilter_Clear"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextFilter_IsActive`.
#borrow(_p0)
pub extern "C" fn im_gui_text_filter_is_active(_p0 : ImGuiTextFilter) -> Bool = "ImGuiTextFilter_IsActive"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_begin`.
#borrow(_p0)
pub extern "C" fn im_gui_text_buffer_begin(_p0 : ImGuiTextBuffer) -> Ref[Byte]? = "ImGuiTextBuffer_begin"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_end`.
#borrow(_p0)
pub extern "C" fn im_gui_text_buffer_end(_p0 : ImGuiTextBuffer) -> Ref[Byte]? = "ImGuiTextBuffer_end"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_size`.
#borrow(_p0)
pub extern "C" fn im_gui_text_buffer_size(_p0 : ImGuiTextBuffer) -> Int = "ImGuiTextBuffer_size"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_empty`.
#borrow(_p0)
pub extern "C" fn im_gui_text_buffer_empty(_p0 : ImGuiTextBuffer) -> Bool = "ImGuiTextBuffer_empty"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_clear`.
#borrow(_p0)
pub extern "C" fn im_gui_text_buffer_clear(_p0 : ImGuiTextBuffer) -> Unit = "ImGuiTextBuffer_clear"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_resize`.
#borrow(_p0)
pub extern "C" fn im_gui_text_buffer_resize(
  _p0 : ImGuiTextBuffer,
  _p1 : Int,
) -> Unit = "ImGuiTextBuffer_resize"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_reserve`.
#borrow(_p0)
pub extern "C" fn im_gui_text_buffer_reserve(
  _p0 : ImGuiTextBuffer,
  _p1 : Int,
) -> Unit = "ImGuiTextBuffer_reserve"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_c_str`.
#borrow(_p0)
pub extern "C" fn im_gui_text_buffer_c_str(_p0 : ImGuiTextBuffer) -> Ref[Byte]? = "ImGuiTextBuffer_c_str"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_append`.
#borrow(_p1, _p0, _p2)
pub extern "C" fn im_gui_text_buffer_append(
  _p0 : ImGuiTextBuffer,
  _p1 : Bytes,
  _p2 : Ref[Byte]?,
) -> Unit = "ImGuiTextBuffer_append"

///|
/// Direct dear_bindings C ABI binding for `ImGuiTextBuffer_appendfv`.
#borrow(_p1, _p0)
pub extern "C" fn im_gui_text_buffer_appendfv(
  _p0 : ImGuiTextBuffer,
  _p1 : Bytes,
  _p2 : Int,
) -> Unit = "ImGuiTextBuffer_appendfv"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_Clear`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_clear(_p0 : ImGuiStorage) -> Unit = "ImGuiStorage_Clear"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_GetInt`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_get_int(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> Int = "ImGuiStorage_GetInt"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_SetInt`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_set_int(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> Unit = "ImGuiStorage_SetInt"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_GetBool`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_get_bool(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Bool = "ImGuiStorage_GetBool"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_SetBool`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_set_bool(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Unit = "ImGuiStorage_SetBool"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_GetFloat`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_get_float(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> Float = "ImGuiStorage_GetFloat"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_SetFloat`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_set_float(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> Unit = "ImGuiStorage_SetFloat"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_GetVoidPtr`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_get_void_ptr(
  _p0 : ImGuiStorage,
  _p1 : UInt,
) -> VoidPtr = "ImGuiStorage_GetVoidPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_SetVoidPtr`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_storage_set_void_ptr(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : VoidPtr,
) -> Unit = "ImGuiStorage_SetVoidPtr"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_GetIntRef`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_get_int_ref(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Int,
) -> Ref[Int]? = "ImGuiStorage_GetIntRef"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_GetBoolRef`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_get_bool_ref(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Ref[Bool]? = "ImGuiStorage_GetBoolRef"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_GetFloatRef`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_get_float_ref(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : Float,
) -> Ref[Float]? = "ImGuiStorage_GetFloatRef"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_GetVoidPtrRef`.
#borrow(_p0, _p2)
pub extern "C" fn im_gui_storage_get_void_ptr_ref(
  _p0 : ImGuiStorage,
  _p1 : UInt,
  _p2 : VoidPtr,
) -> Ref[VoidPtr]? = "ImGuiStorage_GetVoidPtrRef"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_BuildSortByKey`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_build_sort_by_key(_p0 : ImGuiStorage) -> Unit = "ImGuiStorage_BuildSortByKey"

///|
/// Direct dear_bindings C ABI binding for `ImGuiStorage_SetAllInt`.
#borrow(_p0)
pub extern "C" fn im_gui_storage_set_all_int(
  _p0 : ImGuiStorage,
  _p1 : Int,
) -> Unit = "ImGuiStorage_SetAllInt"

///|
/// Direct dear_bindings C ABI binding for `ImGuiListClipper_Begin`.
#borrow(_p0)
pub extern "C" fn im_gui_list_clipper_begin(
  _p0 : ImGuiListClipper,
  _p1 : Int,
  _p2 : Float,
) -> Unit = "ImGuiListClipper_Begin"

///|
/// Direct dear_bindings C ABI binding for `ImGuiListClipper_End`.
#borrow(_p0)
pub extern "C" fn im_gui_list_clipper_end(_p0 : ImGuiListClipper) -> Unit = "ImGuiListClipper_End"

///|
/// Direct dear_bindings C ABI binding for `ImGuiListClipper_Step`.
#borrow(_p0)
pub extern "C" fn im_gui_list_clipper_step(_p0 : ImGuiListClipper) -> Bool = "ImGuiListClipper_Step"

///|
/// Direct dear_bindings C ABI binding for `ImGuiListClipper_IncludeItemByIndex`.
#borrow(_p0)
pub extern "C" fn im_gui_list_clipper_include_item_by_index(
  _p0 : ImGuiListClipper,
  _p1 : Int,
) -> Unit = "ImGuiListClipper_IncludeItemByIndex"

///|
/// Direct dear_bindings C ABI binding for `ImGuiListClipper_IncludeItemsByIndex`.
#borrow(_p0)
pub extern "C" fn im_gui_list_clipper_include_items_by_index(
  _p0 : ImGuiListClipper,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImGuiListClipper_IncludeItemsByIndex"

///|
/// Direct dear_bindings C ABI binding for `ImGuiListClipper_SeekCursorForItem`.
#borrow(_p0)
pub extern "C" fn im_gui_list_clipper_seek_cursor_for_item(
  _p0 : ImGuiListClipper,
  _p1 : Int,
) -> Unit = "ImGuiListClipper_SeekCursorForItem"

///|
/// Direct dear_bindings C ABI binding for `ImColor_SetHSV`.
#borrow(_p0)
pub extern "C" fn im_color_set_hsv(
  _p0 : ImColor,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
) -> Unit = "ImColor_SetHSV"

///|
/// Direct dear_bindings C ABI binding for `ImGuiSelectionBasicStorage_ApplyRequests`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_selection_basic_storage_apply_requests(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : ImGuiMultiSelectIO,
) -> Unit = "ImGuiSelectionBasicStorage_ApplyRequests"

///|
/// Direct dear_bindings C ABI binding for `ImGuiSelectionBasicStorage_Contains`.
#borrow(_p0)
pub extern "C" fn im_gui_selection_basic_storage_contains(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : UInt,
) -> Bool = "ImGuiSelectionBasicStorage_Contains"

///|
/// Direct dear_bindings C ABI binding for `ImGuiSelectionBasicStorage_Clear`.
#borrow(_p0)
pub extern "C" fn im_gui_selection_basic_storage_clear(
  _p0 : ImGuiSelectionBasicStorage,
) -> Unit = "ImGuiSelectionBasicStorage_Clear"

///|
/// Direct dear_bindings C ABI binding for `ImGuiSelectionBasicStorage_Swap`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_selection_basic_storage_swap(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : ImGuiSelectionBasicStorage,
) -> Unit = "ImGuiSelectionBasicStorage_Swap"

///|
/// Direct dear_bindings C ABI binding for `ImGuiSelectionBasicStorage_SetItemSelected`.
#borrow(_p0)
pub extern "C" fn im_gui_selection_basic_storage_set_item_selected(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : UInt,
  _p2 : Bool,
) -> Unit = "ImGuiSelectionBasicStorage_SetItemSelected"

///|
/// Direct dear_bindings C ABI binding for `ImGuiSelectionBasicStorage_GetNextSelectedItem`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_gui_selection_basic_storage_get_next_selected_item(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : Ref[VoidPtr]?,
  _p2 : Ref[UInt]?,
) -> Bool = "ImGuiSelectionBasicStorage_GetNextSelectedItem"

///|
/// Direct dear_bindings C ABI binding for `ImGuiSelectionBasicStorage_GetStorageIdFromIndex`.
#borrow(_p0)
pub extern "C" fn im_gui_selection_basic_storage_get_storage_id_from_index(
  _p0 : ImGuiSelectionBasicStorage,
  _p1 : Int,
) -> UInt = "ImGuiSelectionBasicStorage_GetStorageIdFromIndex"

///|
/// Direct dear_bindings C ABI binding for `ImGuiSelectionExternalStorage_ApplyRequests`.
#borrow(_p0, _p1)
pub extern "C" fn im_gui_selection_external_storage_apply_requests(
  _p0 : ImGuiSelectionExternalStorage,
  _p1 : ImGuiMultiSelectIO,
) -> Unit = "ImGuiSelectionExternalStorage_ApplyRequests"

///|
/// Direct dear_bindings C ABI binding for `ImDrawCmd_GetTexID`.
#borrow(_p0)
pub extern "C" fn im_draw_cmd_get_tex_id(_p0 : ImDrawCmd) -> UInt64 = "ImDrawCmd_GetTexID"

///|
/// Direct dear_bindings C ABI binding for `ImDrawListSplitter_Clear`.
#borrow(_p0)
pub extern "C" fn im_draw_list_splitter_clear(_p0 : ImDrawListSplitter) -> Unit = "ImDrawListSplitter_Clear"

///|
/// Direct dear_bindings C ABI binding for `ImDrawListSplitter_ClearFreeMemory`.
#borrow(_p0)
pub extern "C" fn im_draw_list_splitter_clear_free_memory(
  _p0 : ImDrawListSplitter,
) -> Unit = "ImDrawListSplitter_ClearFreeMemory"

///|
/// Direct dear_bindings C ABI binding for `ImDrawListSplitter_Split`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_splitter_split(
  _p0 : ImDrawListSplitter,
  _p1 : ImDrawList,
  _p2 : Int,
) -> Unit = "ImDrawListSplitter_Split"

///|
/// Direct dear_bindings C ABI binding for `ImDrawListSplitter_Merge`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_splitter_merge(
  _p0 : ImDrawListSplitter,
  _p1 : ImDrawList,
) -> Unit = "ImDrawListSplitter_Merge"

///|
/// Direct dear_bindings C ABI binding for `ImDrawListSplitter_SetCurrentChannel`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_splitter_set_current_channel(
  _p0 : ImDrawListSplitter,
  _p1 : ImDrawList,
  _p2 : Int,
) -> Unit = "ImDrawListSplitter_SetCurrentChannel"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PushClipRect`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_push_clip_rect(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Bool,
) -> Unit = "ImDrawList_PushClipRect"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PushClipRectFullScreen`.
#borrow(_p0)
pub extern "C" fn im_draw_list_push_clip_rect_full_screen(
  _p0 : ImDrawList,
) -> Unit = "ImDrawList_PushClipRectFullScreen"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PopClipRect`.
#borrow(_p0)
pub extern "C" fn im_draw_list_pop_clip_rect(_p0 : ImDrawList) -> Unit = "ImDrawList_PopClipRect"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PushTexture`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_push_texture(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
) -> Unit = "ImDrawList_PushTexture"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PopTexture`.
#borrow(_p0)
pub extern "C" fn im_draw_list_pop_texture(_p0 : ImDrawList) -> Unit = "ImDrawList_PopTexture"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddLine`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_line(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddLine"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddLineEx`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_line_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
) -> Unit = "ImDrawList_AddLineEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddLineH`.
#borrow(_p0)
pub extern "C" fn im_draw_list_add_line_h(
  _p0 : ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
) -> Unit = "ImDrawList_AddLineH"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddLineHEx`.
#borrow(_p0)
pub extern "C" fn im_draw_list_add_line_h_ex(
  _p0 : ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
  _p5 : Float,
) -> Unit = "ImDrawList_AddLineHEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddLineV`.
#borrow(_p0)
pub extern "C" fn im_draw_list_add_line_v(
  _p0 : ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
) -> Unit = "ImDrawList_AddLineV"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddLineVEx`.
#borrow(_p0)
pub extern "C" fn im_draw_list_add_line_v_ex(
  _p0 : ImDrawList,
  _p1 : Float,
  _p2 : Float,
  _p3 : Float,
  _p4 : UInt,
  _p5 : Float,
) -> Unit = "ImDrawList_AddLineVEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddRect`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_rect(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddRect"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddRectEx`.
#borrow(_p0, _p1, _p2)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddRectFilled`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_rect_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddRectFilled"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddRectFilledEx`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_rect_filled_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList_AddRectFilledEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddRectFilledMultiColor`.
#borrow(_p0, _p1, _p2)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddQuad`.
#borrow(_p0, _p1, _p2, _p3, _p4)
pub extern "C" fn im_draw_list_add_quad(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : UInt,
) -> Unit = "ImDrawList_AddQuad"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddQuadEx`.
#borrow(_p0, _p1, _p2, _p3, _p4)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddQuadFilled`.
#borrow(_p0, _p1, _p2, _p3, _p4)
pub extern "C" fn im_draw_list_add_quad_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : UInt,
) -> Unit = "ImDrawList_AddQuadFilled"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddTriangle`.
#borrow(_p0, _p1, _p2, _p3)
pub extern "C" fn im_draw_list_add_triangle(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : UInt,
) -> Unit = "ImDrawList_AddTriangle"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddTriangleEx`.
#borrow(_p0, _p1, _p2, _p3)
pub extern "C" fn im_draw_list_add_triangle_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : Float,
) -> Unit = "ImDrawList_AddTriangleEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddTriangleFilled`.
#borrow(_p0, _p1, _p2, _p3)
pub extern "C" fn im_draw_list_add_triangle_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : UInt,
) -> Unit = "ImDrawList_AddTriangleFilled"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddCircle`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_circle(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddCircle"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddCircleEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_circle_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit = "ImDrawList_AddCircleEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddCircleFilled`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_circle_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit = "ImDrawList_AddCircleFilled"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddNgon`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_ngon(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit = "ImDrawList_AddNgon"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddNgonEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_ngon_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit = "ImDrawList_AddNgonEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddNgonFilled`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_ngon_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
) -> Unit = "ImDrawList_AddNgonFilled"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddEllipse`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_ellipse(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddEllipse"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddEllipseEx`.
#borrow(_p0, _p1, _p2)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddEllipseFilled`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_ellipse_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddEllipseFilled"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddEllipseFilledEx`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_ellipse_filled_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList_AddEllipseFilledEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddText`.
#borrow(_p3, _p0, _p1)
pub extern "C" fn im_draw_list_add_text(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : UInt,
  _p3 : Bytes,
) -> Unit = "ImDrawList_AddText"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddTextEx`.
#borrow(_p3, _p0, _p1, _p4)
pub extern "C" fn im_draw_list_add_text_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : UInt,
  _p3 : Bytes,
  _p4 : Ref[Byte]?,
) -> Unit = "ImDrawList_AddTextEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddTextImFontPtr`.
#borrow(_p5, _p0, _p1, _p3)
pub extern "C" fn im_draw_list_add_text_im_font_ptr(
  _p0 : ImDrawList,
  _p1 : ImFont,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : Bytes,
) -> Unit = "ImDrawList_AddTextImFontPtr"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddTextImFontPtrEx`.
#borrow(_p5, _p0, _p1, _p3, _p6, _p8)
pub extern "C" fn im_draw_list_add_text_im_font_ptr_ex(
  _p0 : ImDrawList,
  _p1 : ImFont,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : Bytes,
  _p6 : Ref[Byte]?,
  _p7 : Float,
  _p8 : ImVec4,
) -> Unit = "ImDrawList_AddTextImFontPtrEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddBezierCubic`.
#borrow(_p0, _p1, _p2, _p3, _p4)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddBezierQuadratic`.
#borrow(_p0, _p1, _p2, _p3)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddPolyline`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_polyline(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : UInt,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList_AddPolyline"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddConvexPolyFilled`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_convex_poly_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddConvexPolyFilled"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddConcavePolyFilled`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_concave_poly_filled(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : UInt,
) -> Unit = "ImDrawList_AddConcavePolyFilled"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddImage`.
#borrow(_p0, _p1, _p2, _p3)
pub extern "C" fn im_draw_list_add_image(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
) -> Unit = "ImDrawList_AddImage"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddImageEx`.
#borrow(_p0, _p1, _p2, _p3, _p4, _p5)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddImageQuad`.
#borrow(_p0, _p1, _p2, _p3, _p4, _p5)
pub extern "C" fn im_draw_list_add_image_quad(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : ImVec2,
) -> Unit = "ImDrawList_AddImageQuad"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddImageQuadEx`.
#borrow(_p0, _p1, _p2, _p3, _p4, _p5, _p6, _p7, _p8, _p9)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddImageRounded`.
#borrow(_p0, _p1, _p2, _p3, _p4, _p5)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_PathClear`.
#borrow(_p0)
pub extern "C" fn im_draw_list_path_clear(_p0 : ImDrawList) -> Unit = "ImDrawList_PathClear"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathLineTo`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_path_line_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
) -> Unit = "ImDrawList_PathLineTo"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathLineToMergeDuplicate`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_path_line_to_merge_duplicate(
  _p0 : ImDrawList,
  _p1 : ImVec2,
) -> Unit = "ImDrawList_PathLineToMergeDuplicate"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathFillConvex`.
#borrow(_p0)
pub extern "C" fn im_draw_list_path_fill_convex(
  _p0 : ImDrawList,
  _p1 : UInt,
) -> Unit = "ImDrawList_PathFillConvex"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathFillConcave`.
#borrow(_p0)
pub extern "C" fn im_draw_list_path_fill_concave(
  _p0 : ImDrawList,
  _p1 : UInt,
) -> Unit = "ImDrawList_PathFillConcave"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathStroke`.
#borrow(_p0)
pub extern "C" fn im_draw_list_path_stroke(
  _p0 : ImDrawList,
  _p1 : UInt,
  _p2 : Float,
  _p3 : Int,
) -> Unit = "ImDrawList_PathStroke"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathArcTo`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_path_arc_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList_PathArcTo"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathArcToFast`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_path_arc_to_fast(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
) -> Unit = "ImDrawList_PathArcToFast"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathEllipticalArcTo`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_path_elliptical_arc_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Float,
  _p4 : Float,
  _p5 : Float,
) -> Unit = "ImDrawList_PathEllipticalArcTo"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathEllipticalArcToEx`.
#borrow(_p0, _p1, _p2)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_PathBezierCubicCurveTo`.
#borrow(_p0, _p1, _p2, _p3)
pub extern "C" fn im_draw_list_path_bezier_cubic_curve_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : Int,
) -> Unit = "ImDrawList_PathBezierCubicCurveTo"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathBezierQuadraticCurveTo`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_path_bezier_quadratic_curve_to(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Int,
) -> Unit = "ImDrawList_PathBezierQuadraticCurveTo"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathRect`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_path_rect(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : Float,
  _p4 : Int,
) -> Unit = "ImDrawList_PathRect"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddCallback`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_callback(
  _p0 : ImDrawList,
  _p1 : FuncRef[(ImDrawList, ImDrawCmd) -> Unit],
) -> Unit = "ImDrawList_AddCallback"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddCallbackEx`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_add_callback_ex(
  _p0 : ImDrawList,
  _p1 : FuncRef[(ImDrawList, ImDrawCmd) -> Unit],
  _p2 : VoidPtr,
  _p3 : Int,
) -> Unit = "ImDrawList_AddCallbackEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddDrawCmd`.
#borrow(_p0)
pub extern "C" fn im_draw_list_add_draw_cmd(_p0 : ImDrawList) -> Unit = "ImDrawList_AddDrawCmd"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_CloneOutput`.
#borrow(_p0)
pub extern "C" fn im_draw_list_clone_output(_p0 : ImDrawList) -> ImDrawList = "ImDrawList_CloneOutput"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_ChannelsSplit`.
#borrow(_p0)
pub extern "C" fn im_draw_list_channels_split(
  _p0 : ImDrawList,
  _p1 : Int,
) -> Unit = "ImDrawList_ChannelsSplit"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_ChannelsMerge`.
#borrow(_p0)
pub extern "C" fn im_draw_list_channels_merge(_p0 : ImDrawList) -> Unit = "ImDrawList_ChannelsMerge"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_ChannelsSetCurrent`.
#borrow(_p0)
pub extern "C" fn im_draw_list_channels_set_current(
  _p0 : ImDrawList,
  _p1 : Int,
) -> Unit = "ImDrawList_ChannelsSetCurrent"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PrimReserve`.
#borrow(_p0)
pub extern "C" fn im_draw_list_prim_reserve(
  _p0 : ImDrawList,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImDrawList_PrimReserve"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PrimUnreserve`.
#borrow(_p0)
pub extern "C" fn im_draw_list_prim_unreserve(
  _p0 : ImDrawList,
  _p1 : Int,
  _p2 : Int,
) -> Unit = "ImDrawList_PrimUnreserve"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PrimRect`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_prim_rect(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_PrimRect"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PrimRectUV`.
#borrow(_p0, _p1, _p2, _p3, _p4)
pub extern "C" fn im_draw_list_prim_rect_uv(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec2,
  _p5 : UInt,
) -> Unit = "ImDrawList_PrimRectUV"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PrimQuadUV`.
#borrow(_p0, _p1, _p2, _p3, _p4, _p5, _p6, _p7, _p8)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_PrimWriteVtx`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_prim_write_vtx(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_PrimWriteVtx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PrimWriteIdx`.
#borrow(_p0)
pub extern "C" fn im_draw_list_prim_write_idx(
  _p0 : ImDrawList,
  _p1 : UInt,
) -> Unit = "ImDrawList_PrimWriteIdx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PrimVtx`.
#borrow(_p0, _p1, _p2)
pub extern "C" fn im_draw_list_prim_vtx(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : UInt,
) -> Unit = "ImDrawList_PrimVtx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_AddRectImDrawFlags`.
#borrow(_p0, _p1, _p2)
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
/// Direct dear_bindings C ABI binding for `ImDrawList_AddPolylineImDrawFlags`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_add_polyline_im_draw_flags(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Int,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Float,
) -> Unit = "ImDrawList_AddPolylineImDrawFlags"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PathStrokeImDrawFlags`.
#borrow(_p0)
pub extern "C" fn im_draw_list_path_stroke_im_draw_flags(
  _p0 : ImDrawList,
  _p1 : UInt,
  _p2 : Int,
  _p3 : Float,
) -> Unit = "ImDrawList_PathStrokeImDrawFlags"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PushTextureID`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_push_texture_id(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
) -> Unit = "ImDrawList_PushTextureID"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList_PopTextureID`.
#borrow(_p0)
pub extern "C" fn im_draw_list_pop_texture_id(_p0 : ImDrawList) -> Unit = "ImDrawList_PopTextureID"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__SetDrawListSharedData`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_set_draw_list_shared_data(
  _p0 : ImDrawList,
  _p1 : ImDrawListSharedData,
) -> Unit = "ImDrawList__SetDrawListSharedData"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__ResetForNewFrame`.
#borrow(_p0)
pub extern "C" fn im_draw_list_reset_for_new_frame(_p0 : ImDrawList) -> Unit = "ImDrawList__ResetForNewFrame"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__ClearFreeMemory`.
#borrow(_p0)
pub extern "C" fn im_draw_list_clear_free_memory(_p0 : ImDrawList) -> Unit = "ImDrawList__ClearFreeMemory"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__PopUnusedDrawCmd`.
#borrow(_p0)
pub extern "C" fn im_draw_list_pop_unused_draw_cmd(_p0 : ImDrawList) -> Unit = "ImDrawList__PopUnusedDrawCmd"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__TryMergeDrawCmds`.
#borrow(_p0)
pub extern "C" fn im_draw_list_try_merge_draw_cmds(_p0 : ImDrawList) -> Unit = "ImDrawList__TryMergeDrawCmds"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__OnChangedClipRect`.
#borrow(_p0)
pub extern "C" fn im_draw_list_on_changed_clip_rect(_p0 : ImDrawList) -> Unit = "ImDrawList__OnChangedClipRect"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__OnChangedTexture`.
#borrow(_p0)
pub extern "C" fn im_draw_list_on_changed_texture(_p0 : ImDrawList) -> Unit = "ImDrawList__OnChangedTexture"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__OnChangedVtxOffset`.
#borrow(_p0)
pub extern "C" fn im_draw_list_on_changed_vtx_offset(_p0 : ImDrawList) -> Unit = "ImDrawList__OnChangedVtxOffset"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__SetTexture`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_set_texture(
  _p0 : ImDrawList,
  _p1 : ImTextureRef,
) -> Unit = "ImDrawList__SetTexture"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__CalcCircleAutoSegmentCount`.
#borrow(_p0)
pub extern "C" fn im_draw_list_calc_circle_auto_segment_count(
  _p0 : ImDrawList,
  _p1 : Float,
) -> Int = "ImDrawList__CalcCircleAutoSegmentCount"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__PathArcToFastEx`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_path_arc_to_fast_ex(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : Int,
  _p4 : Int,
  _p5 : Int,
) -> Unit = "ImDrawList__PathArcToFastEx"

///|
/// Direct dear_bindings C ABI binding for `ImDrawList__PathArcToN`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_list_path_arc_to_n(
  _p0 : ImDrawList,
  _p1 : ImVec2,
  _p2 : Float,
  _p3 : Float,
  _p4 : Float,
  _p5 : Int,
) -> Unit = "ImDrawList__PathArcToN"

///|
/// Direct dear_bindings C ABI binding for `ImDrawData_Clear`.
#borrow(_p0)
pub extern "C" fn im_draw_data_clear(_p0 : ImDrawData) -> Unit = "ImDrawData_Clear"

///|
/// Direct dear_bindings C ABI binding for `ImDrawData_AddDrawList`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_data_add_draw_list(
  _p0 : ImDrawData,
  _p1 : ImDrawList,
) -> Unit = "ImDrawData_AddDrawList"

///|
/// Direct dear_bindings C ABI binding for `ImDrawData_DeIndexAllBuffers`.
#borrow(_p0)
pub extern "C" fn im_draw_data_de_index_all_buffers(_p0 : ImDrawData) -> Unit = "ImDrawData_DeIndexAllBuffers"

///|
/// Direct dear_bindings C ABI binding for `ImDrawData_ScaleClipRects`.
#borrow(_p0, _p1)
pub extern "C" fn im_draw_data_scale_clip_rects(
  _p0 : ImDrawData,
  _p1 : ImVec2,
) -> Unit = "ImDrawData_ScaleClipRects"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_Create`.
#borrow(_p0)
pub extern "C" fn im_texture_data_create(
  _p0 : ImTextureData,
  _p1 : Int,
  _p2 : Int,
  _p3 : Int,
) -> Unit = "ImTextureData_Create"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_DestroyPixels`.
#borrow(_p0)
pub extern "C" fn im_texture_data_destroy_pixels(_p0 : ImTextureData) -> Unit = "ImTextureData_DestroyPixels"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_GetPixels`.
#borrow(_p0)
pub extern "C" fn im_texture_data_get_pixels(_p0 : ImTextureData) -> VoidPtr = "ImTextureData_GetPixels"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_GetPixelsAt`.
#borrow(_p0)
pub extern "C" fn im_texture_data_get_pixels_at(
  _p0 : ImTextureData,
  _p1 : Int,
  _p2 : Int,
) -> VoidPtr = "ImTextureData_GetPixelsAt"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_GetSizeInBytes`.
#borrow(_p0)
pub extern "C" fn im_texture_data_get_size_in_bytes(_p0 : ImTextureData) -> Int = "ImTextureData_GetSizeInBytes"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_GetPitch`.
#borrow(_p0)
pub extern "C" fn im_texture_data_get_pitch(_p0 : ImTextureData) -> Int = "ImTextureData_GetPitch"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_GetTexID`.
#borrow(_p0)
pub extern "C" fn im_texture_data_get_tex_id(_p0 : ImTextureData) -> UInt64 = "ImTextureData_GetTexID"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_SetTexID`.
#borrow(_p0)
pub extern "C" fn im_texture_data_set_tex_id(
  _p0 : ImTextureData,
  _p1 : UInt64,
) -> Unit = "ImTextureData_SetTexID"

///|
/// Direct dear_bindings C ABI binding for `ImTextureData_SetStatus`.
#borrow(_p0)
pub extern "C" fn im_texture_data_set_status(
  _p0 : ImTextureData,
  _p1 : Int,
) -> Unit = "ImTextureData_SetStatus"

///|
/// Direct dear_bindings C ABI binding for `ImFontGlyphRangesBuilder_Clear`.
#borrow(_p0)
pub extern "C" fn im_font_glyph_ranges_builder_clear(
  _p0 : ImFontGlyphRangesBuilder,
) -> Unit = "ImFontGlyphRangesBuilder_Clear"

///|
/// Direct dear_bindings C ABI binding for `ImFontGlyphRangesBuilder_GetBit`.
#borrow(_p0)
pub extern "C" fn im_font_glyph_ranges_builder_get_bit(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : Int,
) -> Bool = "ImFontGlyphRangesBuilder_GetBit"

///|
/// Direct dear_bindings C ABI binding for `ImFontGlyphRangesBuilder_SetBit`.
#borrow(_p0)
pub extern "C" fn im_font_glyph_ranges_builder_set_bit(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : Int,
) -> Unit = "ImFontGlyphRangesBuilder_SetBit"

///|
/// Direct dear_bindings C ABI binding for `ImFontGlyphRangesBuilder_AddChar`.
#borrow(_p0)
pub extern "C" fn im_font_glyph_ranges_builder_add_char(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : UInt,
) -> Unit = "ImFontGlyphRangesBuilder_AddChar"

///|
/// Direct dear_bindings C ABI binding for `ImFontGlyphRangesBuilder_AddText`.
#borrow(_p1, _p0, _p2)
pub extern "C" fn im_font_glyph_ranges_builder_add_text(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : Bytes,
  _p2 : Ref[Byte]?,
) -> Unit = "ImFontGlyphRangesBuilder_AddText"

///|
/// Direct dear_bindings C ABI binding for `ImFontGlyphRangesBuilder_AddRanges`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_glyph_ranges_builder_add_ranges(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : Ref[UInt]?,
) -> Unit = "ImFontGlyphRangesBuilder_AddRanges"

///|
/// Direct dear_bindings C ABI binding for `ImFontGlyphRangesBuilder_BuildRanges`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_glyph_ranges_builder_build_ranges(
  _p0 : ImFontGlyphRangesBuilder,
  _p1 : ImVectorImWchar,
) -> Unit = "ImFontGlyphRangesBuilder_BuildRanges"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddFont`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_atlas_add_font(
  _p0 : ImFontAtlas,
  _p1 : ImFontConfig,
) -> ImFont = "ImFontAtlas_AddFont"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddFontDefault`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_atlas_add_font_default(
  _p0 : ImFontAtlas,
  _p1 : ImFontConfig,
) -> ImFont = "ImFontAtlas_AddFontDefault"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddFontDefaultVector`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_atlas_add_font_default_vector(
  _p0 : ImFontAtlas,
  _p1 : ImFontConfig,
) -> ImFont = "ImFontAtlas_AddFontDefaultVector"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddFontDefaultBitmap`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_atlas_add_font_default_bitmap(
  _p0 : ImFontAtlas,
  _p1 : ImFontConfig,
) -> ImFont = "ImFontAtlas_AddFontDefaultBitmap"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddFontFromFileTTF`.
#borrow(_p1, _p0, _p3, _p4)
pub extern "C" fn im_font_atlas_add_font_from_file_ttf(
  _p0 : ImFontAtlas,
  _p1 : Bytes,
  _p2 : Float,
  _p3 : ImFontConfig,
  _p4 : Ref[UInt]?,
) -> ImFont = "ImFontAtlas_AddFontFromFileTTF"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddFontFromMemoryTTF`.
#borrow(_p0, _p1, _p4, _p5)
pub extern "C" fn im_font_atlas_add_font_from_memory_ttf(
  _p0 : ImFontAtlas,
  _p1 : VoidPtr,
  _p2 : Int,
  _p3 : Float,
  _p4 : ImFontConfig,
  _p5 : Ref[UInt]?,
) -> ImFont = "ImFontAtlas_AddFontFromMemoryTTF"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddFontFromMemoryCompressedTTF`.
#borrow(_p0, _p1, _p4, _p5)
pub extern "C" fn im_font_atlas_add_font_from_memory_compressed_ttf(
  _p0 : ImFontAtlas,
  _p1 : VoidPtr,
  _p2 : Int,
  _p3 : Float,
  _p4 : ImFontConfig,
  _p5 : Ref[UInt]?,
) -> ImFont = "ImFontAtlas_AddFontFromMemoryCompressedTTF"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddFontFromMemoryCompressedBase85TTF`.
#borrow(_p1, _p0, _p3, _p4)
pub extern "C" fn im_font_atlas_add_font_from_memory_compressed_base85_ttf(
  _p0 : ImFontAtlas,
  _p1 : Bytes,
  _p2 : Float,
  _p3 : ImFontConfig,
  _p4 : Ref[UInt]?,
) -> ImFont = "ImFontAtlas_AddFontFromMemoryCompressedBase85TTF"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_RemoveFont`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_atlas_remove_font(
  _p0 : ImFontAtlas,
  _p1 : ImFont,
) -> Unit = "ImFontAtlas_RemoveFont"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_Clear`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_clear(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_Clear"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_ClearFonts`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_clear_fonts(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_ClearFonts"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_CompactCache`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_compact_cache(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_CompactCache"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_SetFontLoader`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_atlas_set_font_loader(
  _p0 : ImFontAtlas,
  _p1 : ImFontLoader,
) -> Unit = "ImFontAtlas_SetFontLoader"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_ClearInputData`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_clear_input_data(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_ClearInputData"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_ClearTexData`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_clear_tex_data(_p0 : ImFontAtlas) -> Unit = "ImFontAtlas_ClearTexData"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_Build`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_build(_p0 : ImFontAtlas) -> Bool = "ImFontAtlas_Build"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetTexDataAsAlpha8`.
#borrow(_p0, _p1, _p2, _p3, _p4)
pub extern "C" fn im_font_atlas_get_tex_data_as_alpha8(
  _p0 : ImFontAtlas,
  _p1 : Ref[Ref[Byte]]?,
  _p2 : Ref[Int]?,
  _p3 : Ref[Int]?,
  _p4 : Ref[Int]?,
) -> Unit = "ImFontAtlas_GetTexDataAsAlpha8"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetTexDataAsRGBA32`.
#borrow(_p0, _p1, _p2, _p3, _p4)
pub extern "C" fn im_font_atlas_get_tex_data_as_rgba32(
  _p0 : ImFontAtlas,
  _p1 : Ref[Ref[Byte]]?,
  _p2 : Ref[Int]?,
  _p3 : Ref[Int]?,
  _p4 : Ref[Int]?,
) -> Unit = "ImFontAtlas_GetTexDataAsRGBA32"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_SetTexID`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_set_tex_id(
  _p0 : ImFontAtlas,
  _p1 : UInt64,
) -> Unit = "ImFontAtlas_SetTexID"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_SetTexIDImTextureRefPtr`.
#borrow(_p0, _p1)
pub extern "C" fn im_font_atlas_set_tex_id_im_texture_ref_ptr(
  _p0 : ImFontAtlas,
  _p1 : ImTextureRef,
) -> Unit = "ImFontAtlas_SetTexIDImTextureRefPtr"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_IsBuilt`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_is_built(_p0 : ImFontAtlas) -> Bool = "ImFontAtlas_IsBuilt"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesDefault`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_default(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesDefault"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesGreek`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_greek(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesGreek"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesKorean`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_korean(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesKorean"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesJapanese`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_japanese(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesJapanese"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesChineseFull`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_chinese_full(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesChineseFull"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_chinese_simplified_common(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesCyrillic`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_cyrillic(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesCyrillic"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesThai`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_thai(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesThai"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetGlyphRangesVietnamese`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_glyph_ranges_vietnamese(
  _p0 : ImFontAtlas,
) -> Ref[UInt]? = "ImFontAtlas_GetGlyphRangesVietnamese"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddCustomRect`.
#borrow(_p0, _p3)
pub extern "C" fn im_font_atlas_add_custom_rect(
  _p0 : ImFontAtlas,
  _p1 : Int,
  _p2 : Int,
  _p3 : ImFontAtlasRect,
) -> Int = "ImFontAtlas_AddCustomRect"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_RemoveCustomRect`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_remove_custom_rect(
  _p0 : ImFontAtlas,
  _p1 : Int,
) -> Unit = "ImFontAtlas_RemoveCustomRect"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetCustomRect`.
#borrow(_p0, _p2)
pub extern "C" fn im_font_atlas_get_custom_rect(
  _p0 : ImFontAtlas,
  _p1 : Int,
  _p2 : ImFontAtlasRect,
) -> Bool = "ImFontAtlas_GetCustomRect"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddCustomRectRegular`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_add_custom_rect_regular(
  _p0 : ImFontAtlas,
  _p1 : Int,
  _p2 : Int,
) -> Int = "ImFontAtlas_AddCustomRectRegular"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_GetCustomRectByIndex`.
#borrow(_p0)
pub extern "C" fn im_font_atlas_get_custom_rect_by_index(
  _p0 : ImFontAtlas,
  _p1 : Int,
) -> ImFontAtlasRect = "ImFontAtlas_GetCustomRectByIndex"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_CalcCustomRectUV`.
#borrow(_p0, _p1, _p2, _p3)
pub extern "C" fn im_font_atlas_calc_custom_rect_uv(
  _p0 : ImFontAtlas,
  _p1 : ImFontAtlasRect,
  _p2 : ImVec2,
  _p3 : ImVec2,
) -> Unit = "ImFontAtlas_CalcCustomRectUV"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddCustomRectFontGlyph`.
#borrow(_p0, _p1, _p6)
pub extern "C" fn im_font_atlas_add_custom_rect_font_glyph(
  _p0 : ImFontAtlas,
  _p1 : ImFont,
  _p2 : UInt,
  _p3 : Int,
  _p4 : Int,
  _p5 : Float,
  _p6 : ImVec2,
) -> Int = "ImFontAtlas_AddCustomRectFontGlyph"

///|
/// Direct dear_bindings C ABI binding for `ImFontAtlas_AddCustomRectFontGlyphForSize`.
#borrow(_p0, _p1, _p7)
pub extern "C" fn im_font_atlas_add_custom_rect_font_glyph_for_size(
  _p0 : ImFontAtlas,
  _p1 : ImFont,
  _p2 : Float,
  _p3 : UInt,
  _p4 : Int,
  _p5 : Int,
  _p6 : Float,
  _p7 : ImVec2,
) -> Int = "ImFontAtlas_AddCustomRectFontGlyphForSize"

///|
/// Direct dear_bindings C ABI binding for `ImFontBaked_ClearOutputData`.
#borrow(_p0)
pub extern "C" fn im_font_baked_clear_output_data(_p0 : ImFontBaked) -> Unit = "ImFontBaked_ClearOutputData"

///|
/// Direct dear_bindings C ABI binding for `ImFontBaked_FindGlyph`.
#borrow(_p0)
pub extern "C" fn im_font_baked_find_glyph(
  _p0 : ImFontBaked,
  _p1 : UInt,
) -> ImFontGlyph = "ImFontBaked_FindGlyph"

///|
/// Direct dear_bindings C ABI binding for `ImFontBaked_FindGlyphNoFallback`.
#borrow(_p0)
pub extern "C" fn im_font_baked_find_glyph_no_fallback(
  _p0 : ImFontBaked,
  _p1 : UInt,
) -> ImFontGlyph = "ImFontBaked_FindGlyphNoFallback"

///|
/// Direct dear_bindings C ABI binding for `ImFontBaked_GetCharAdvance`.
#borrow(_p0)
pub extern "C" fn im_font_baked_get_char_advance(
  _p0 : ImFontBaked,
  _p1 : UInt,
) -> Float = "ImFontBaked_GetCharAdvance"

///|
/// Direct dear_bindings C ABI binding for `ImFontBaked_IsGlyphLoaded`.
#borrow(_p0)
pub extern "C" fn im_font_baked_is_glyph_loaded(
  _p0 : ImFontBaked,
  _p1 : UInt,
) -> Bool = "ImFontBaked_IsGlyphLoaded"

///|
/// Direct dear_bindings C ABI binding for `ImFont_IsGlyphInFont`.
#borrow(_p0)
pub extern "C" fn im_font_is_glyph_in_font(_p0 : ImFont, _p1 : UInt) -> Bool = "ImFont_IsGlyphInFont"

///|
/// Direct dear_bindings C ABI binding for `ImFont_IsLoaded`.
#borrow(_p0)
pub extern "C" fn im_font_is_loaded(_p0 : ImFont) -> Bool = "ImFont_IsLoaded"

///|
/// Direct dear_bindings C ABI binding for `ImFont_GetDebugName`.
#borrow(_p0)
pub extern "C" fn im_font_get_debug_name(_p0 : ImFont) -> Ref[Byte]? = "ImFont_GetDebugName"

///|
/// Direct dear_bindings C ABI binding for `ImFont_GetFontBaked`.
#borrow(_p0)
pub extern "C" fn im_font_get_font_baked(
  _p0 : ImFont,
  _p1 : Float,
) -> ImFontBaked = "ImFont_GetFontBaked"

///|
/// Direct dear_bindings C ABI binding for `ImFont_GetFontBakedEx`.
#borrow(_p0)
pub extern "C" fn im_font_get_font_baked_ex(
  _p0 : ImFont,
  _p1 : Float,
  _p2 : Float,
) -> ImFontBaked = "ImFont_GetFontBakedEx"

///|
/// Direct dear_bindings C ABI binding for `ImFont_CalcWordWrapPosition`.
#borrow(_p2, _p3, _p0)
pub extern "C" fn im_font_calc_word_wrap_position(
  _p0 : ImFont,
  _p1 : Float,
  _p2 : Bytes,
  _p3 : Bytes,
  _p4 : Float,
) -> Ref[Byte]? = "ImFont_CalcWordWrapPosition"

///|
/// Direct dear_bindings C ABI binding for `ImFont_RenderChar`.
#borrow(_p0, _p1, _p3)
pub extern "C" fn im_font_render_char(
  _p0 : ImFont,
  _p1 : ImDrawList,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : UInt,
) -> Unit = "ImFont_RenderChar"

///|
/// Direct dear_bindings C ABI binding for `ImFont_RenderCharEx`.
#borrow(_p0, _p1, _p3, _p6)
pub extern "C" fn im_font_render_char_ex(
  _p0 : ImFont,
  _p1 : ImDrawList,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : UInt,
  _p6 : ImVec4,
) -> Unit = "ImFont_RenderCharEx"

///|
/// Direct dear_bindings C ABI binding for `ImFont_RenderText`.
#borrow(_p6, _p7, _p0, _p1, _p3, _p5)
pub extern "C" fn im_font_render_text(
  _p0 : ImFont,
  _p1 : ImDrawList,
  _p2 : Float,
  _p3 : ImVec2,
  _p4 : UInt,
  _p5 : ImVec4,
  _p6 : Bytes,
  _p7 : Bytes,
  _p8 : Float,
  _p9 : Int,
) -> Unit = "ImFont_RenderText"

///|
/// Direct dear_bindings C ABI binding for `ImFont_CalcWordWrapPositionA`.
#borrow(_p2, _p3, _p0)
pub extern "C" fn im_font_calc_word_wrap_position_a(
  _p0 : ImFont,
  _p1 : Float,
  _p2 : Bytes,
  _p3 : Bytes,
  _p4 : Float,
) -> Ref[Byte]? = "ImFont_CalcWordWrapPositionA"

///|
/// Direct dear_bindings C ABI binding for `ImFont_ClearOutputData`.
#borrow(_p0)
pub extern "C" fn im_font_clear_output_data(_p0 : ImFont) -> Unit = "ImFont_ClearOutputData"

///|
/// Direct dear_bindings C ABI binding for `ImFont_AddRemapChar`.
#borrow(_p0)
pub extern "C" fn im_font_add_remap_char(
  _p0 : ImFont,
  _p1 : UInt,
  _p2 : UInt,
) -> Unit = "ImFont_AddRemapChar"

///|
/// Direct dear_bindings C ABI binding for `ImFont_IsGlyphRangeUnused`.
#borrow(_p0)
pub extern "C" fn im_font_is_glyph_range_unused(
  _p0 : ImFont,
  _p1 : UInt,
  _p2 : UInt,
) -> Bool = "ImFont_IsGlyphRangeUnused"

///|
/// Direct dear_bindings C ABI binding for `ImGuiPlatformIO_ClearPlatformHandlers`.
#borrow(_p0)
pub extern "C" fn im_gui_platform_io_clear_platform_handlers(
  _p0 : ImGuiPlatformIO,
) -> Unit = "ImGuiPlatformIO_ClearPlatformHandlers"

///|
/// Direct dear_bindings C ABI binding for `ImGuiPlatformIO_ClearRendererHandlers`.
#borrow(_p0)
pub extern "C" fn im_gui_platform_io_clear_renderer_handlers(
  _p0 : ImGuiPlatformIO,
) -> Unit = "ImGuiPlatformIO_ClearRendererHandlers"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushFont`.
#borrow(_p0)
pub extern "C" fn im_gui_push_font(_p0 : ImFont) -> Unit = "ImGui_PushFont"

///|
/// Direct dear_bindings C ABI binding for `ImGui_SetWindowFontScale`.
pub extern "C" fn im_gui_set_window_font_scale(_p0 : Float) -> Unit = "ImGui_SetWindowFontScale"

///|
/// Direct dear_bindings C ABI binding for `ImGui_ImageImVec4Ptr`.
#borrow(_p0, _p1, _p2, _p3, _p4, _p5)
pub extern "C" fn im_gui_image_im_vec4_ptr(
  _p0 : ImTextureRef,
  _p1 : ImVec2,
  _p2 : ImVec2,
  _p3 : ImVec2,
  _p4 : ImVec4,
  _p5 : ImVec4,
) -> Unit = "ImGui_ImageImVec4Ptr"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushButtonRepeat`.
pub extern "C" fn im_gui_push_button_repeat(_p0 : Bool) -> Unit = "ImGui_PushButtonRepeat"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopButtonRepeat`.
pub extern "C" fn im_gui_pop_button_repeat() -> Unit = "ImGui_PopButtonRepeat"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PushTabStop`.
pub extern "C" fn im_gui_push_tab_stop(_p0 : Bool) -> Unit = "ImGui_PushTabStop"

///|
/// Direct dear_bindings C ABI binding for `ImGui_PopTabStop`.
pub extern "C" fn im_gui_pop_tab_stop() -> Unit = "ImGui_PopTabStop"
