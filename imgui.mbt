///|
/// Errors raised by the user-facing Dear ImGui wrapper.
pub(all) suberror ImGuiError {
  /// The operation requires a current context.
  NoCurrentContext
} derive(Eq, Debug)

///|
/// Owned Dear ImGui context.
struct Context {
  raw : @bindings.ImGuiContext
}

///|
/// Root UI builder for scoped, callback-style Dear ImGui calls.
struct Ui {}

///|
/// UI operations available inside a window.
struct WindowUi {}

///|
/// UI operations available inside a menu bar.
struct MenuBarUi {}

///|
/// UI operations available inside a menu.
struct MenuUi {}

///|
/// UI operations available inside a tab bar.
struct TabBarUi {}

///|
/// UI operations available inside a tab item.
struct TabItemUi {}

///|
/// UI operations available inside a table.
struct TableUi {}

///|
/// UI operations available inside a popup.
struct PopupUi {}

///|
/// UI operations available inside a tooltip.
struct TooltipUi {}

///|
/// UI operations available inside a combo popup.
struct ComboUi {}

///|
/// UI operations available inside a tree node.
struct TreeNodeUi {}

///|
/// Current ImGui IO handle.
struct Io {
  raw : @bindings.ImGuiIO
}

///|
/// Current ImGui style handle.
struct Style {
  raw : @bindings.ImGuiStyle
}

///|
/// Font handle.
struct Font {
  raw : @bindings.ImFont
}

///|
/// RGBA color value.
pub(all) struct Vec4 {
  x : Float
  y : Float
  z : Float
  w : Float
} derive(Eq, Debug)

///|
/// Two-component float value for scalar widgets.
pub(all) struct Float2 {
  x : Float
  y : Float
} derive(Eq, Debug)

///|
/// Three-component float value for scalar widgets.
pub(all) struct Float3 {
  x : Float
  y : Float
  z : Float
} derive(Eq, Debug)

///|
/// Four-component float value for scalar widgets.
pub(all) struct Float4 {
  x : Float
  y : Float
  z : Float
  w : Float
} derive(Eq, Debug)

///|
/// Two-component integer value for scalar widgets.
pub(all) struct Int2 {
  x : Int
  y : Int
} derive(Eq, Debug)

///|
/// Three-component integer value for scalar widgets.
pub(all) struct Int3 {
  x : Int
  y : Int
  z : Int
} derive(Eq, Debug)

///|
/// Four-component integer value for scalar widgets.
pub(all) struct Int4 {
  x : Int
  y : Int
  z : Int
  w : Int
} derive(Eq, Debug)

///|
/// Float range value for range drag widgets.
pub(all) struct FloatRange {
  min : Float
  max : Float
} derive(Eq, Debug)

///|
/// Integer range value for range drag widgets.
pub(all) struct IntRange {
  min : Int
  max : Int
} derive(Eq, Debug)

///|
/// State for the last submitted item.
pub(all) struct ItemState {
  active : Bool
  hovered : Bool
  focused : Bool
  clicked : Bool
  edited : Bool
  activated : Bool
  deactivated : Bool
  deactivated_after_edit : Bool
  toggled_open : Bool
  visible : Bool
} derive(Eq, Debug)

///|
/// Aggregate state for all submitted items in the current frame.
pub(all) struct AnyItemState {
  active : Bool
  hovered : Bool
  focused : Bool
} derive(Eq, Debug)

///|
/// State for the current window.
pub(all) struct WindowState {
  appearing : Bool
  collapsed : Bool
  focused : Bool
  hovered : Bool
} derive(Eq, Debug)

///|
/// Scroll state for the current window.
pub(all) struct ScrollState {
  x : Float
  y : Float
  max_x : Float
  max_y : Float
} derive(Eq, Debug)

///|
/// Old columns API state for the current column set.
pub(all) struct ColumnState {
  index : Int
  count : Int
  width : Float
  offset : Float
} derive(Eq, Debug)

///|
/// Raw draw data handle returned after rendering.
pub type DrawData = @bindings.ImDrawData

///|
pub fn Vec4::new(x : Float, y : Float, z : Float, w : Float) -> Vec4 {
  { x, y, z, w }
}

///|
pub fn Vec4::rgba(r : Float, g : Float, b : Float, a : Float) -> Vec4 {
  { x: r, y: g, z: b, w: a }
}

///|
pub fn Vec4::white() -> Vec4 {
  { x: 1.0, y: 1.0, z: 1.0, w: 1.0 }
}

///|
pub fn Vec4::transparent() -> Vec4 {
  { x: 0.0, y: 0.0, z: 0.0, w: 0.0 }
}

///|
pub fn Float2::new(x : Float, y : Float) -> Float2 {
  { x, y }
}

///|
pub fn Float3::new(x : Float, y : Float, z : Float) -> Float3 {
  { x, y, z }
}

///|
pub fn Float4::new(x : Float, y : Float, z : Float, w : Float) -> Float4 {
  { x, y, z, w }
}

///|
pub fn Int2::new(x : Int, y : Int) -> Int2 {
  { x, y }
}

///|
pub fn Int3::new(x : Int, y : Int, z : Int) -> Int3 {
  { x, y, z }
}

///|
pub fn Int4::new(x : Int, y : Int, z : Int, w : Int) -> Int4 {
  { x, y, z, w }
}

///|
pub fn FloatRange::new(min : Float, max : Float) -> FloatRange {
  { min, max }
}

///|
pub fn IntRange::new(min : Int, max : Int) -> IntRange {
  { min, max }
}

///|
/// Composable ImGui window flag.
pub(all) enum WindowFlag {
  NoTitleBar
  NoResize
  NoMove
  NoScrollbar
  MenuBar
  AlwaysAutoResize
  NoScrollWithMouse
  NoCollapse
  NoBackground
  NoSavedSettings
  NoMouseInputs
  HorizontalScrollbar
  NoFocusOnAppearing
  NoBringToFrontOnFocus
  AlwaysVerticalScrollbar
  AlwaysHorizontalScrollbar
  NoNavInputs
  NoNavFocus
  UnsavedDocument
  NoNav
  NoDecoration
  NoInputs
} derive(Eq, Debug)

///|
fn WindowFlag::to_int(self : WindowFlag) -> Int {
  match self {
    NoTitleBar => @bindings.im_gui_window_flags_no_title_bar()
    NoResize => @bindings.im_gui_window_flags_no_resize()
    NoMove => @bindings.im_gui_window_flags_no_move()
    NoScrollbar => @bindings.im_gui_window_flags_no_scrollbar()
    MenuBar => @bindings.im_gui_window_flags_menu_bar()
    AlwaysAutoResize => @bindings.im_gui_window_flags_always_auto_resize()
    NoScrollWithMouse => @bindings.im_gui_window_flags_no_scroll_with_mouse()
    NoCollapse => @bindings.im_gui_window_flags_no_collapse()
    NoBackground => @bindings.im_gui_window_flags_no_background()
    NoSavedSettings => @bindings.im_gui_window_flags_no_saved_settings()
    NoMouseInputs => @bindings.im_gui_window_flags_no_mouse_inputs()
    HorizontalScrollbar => @bindings.im_gui_window_flags_horizontal_scrollbar()
    NoFocusOnAppearing => @bindings.im_gui_window_flags_no_focus_on_appearing()
    NoBringToFrontOnFocus =>
      @bindings.im_gui_window_flags_no_bring_to_front_on_focus()
    AlwaysVerticalScrollbar =>
      @bindings.im_gui_window_flags_always_vertical_scrollbar()
    AlwaysHorizontalScrollbar =>
      @bindings.im_gui_window_flags_always_horizontal_scrollbar()
    NoNavInputs => @bindings.im_gui_window_flags_no_nav_inputs()
    NoNavFocus => @bindings.im_gui_window_flags_no_nav_focus()
    UnsavedDocument => @bindings.im_gui_window_flags_unsaved_document()
    NoNav => @bindings.im_gui_window_flags_no_nav()
    NoDecoration => @bindings.im_gui_window_flags_no_decoration()
    NoInputs => @bindings.im_gui_window_flags_no_inputs()
  }
}

///|
fn window_flag_bits(flags : Array[WindowFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui selectable flag.
pub(all) enum SelectableFlag {
  NoAutoClosePopups
  SpanAllColumns
  AllowDoubleClick
  Disabled
  AllowOverlap
  Highlight
  SelectOnNav
  DontClosePopups
} derive(Eq, Debug)

///|
fn SelectableFlag::to_int(self : SelectableFlag) -> Int {
  match self {
    NoAutoClosePopups =>
      @bindings.im_gui_selectable_flags_no_auto_close_popups()
    SpanAllColumns => @bindings.im_gui_selectable_flags_span_all_columns()
    AllowDoubleClick => @bindings.im_gui_selectable_flags_allow_double_click()
    Disabled => @bindings.im_gui_selectable_flags_disabled()
    AllowOverlap => @bindings.im_gui_selectable_flags_allow_overlap()
    Highlight => @bindings.im_gui_selectable_flags_highlight()
    SelectOnNav => @bindings.im_gui_selectable_flags_select_on_nav()
    DontClosePopups => @bindings.im_gui_selectable_flags_dont_close_popups()
  }
}

///|
fn selectable_flag_bits(flags : Array[SelectableFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui table flag.
pub(all) enum TableFlag {
  Resizable
  Reorderable
  Hideable
  Sortable
  NoSavedSettings
  ContextMenuInBody
  Borders
  RowBg
  BordersInnerH
  BordersOuterH
  BordersInnerV
  BordersOuterV
  BordersH
  BordersV
  BordersInner
  BordersOuter
  NoBordersInBody
  NoBordersInBodyUntilResize
  SizingFixedFit
  SizingFixedSame
  SizingStretchProp
  SizingStretchSame
  NoHostExtendX
  NoHostExtendY
  NoKeepColumnsVisible
  PreciseWidths
  NoClip
  PadOuterX
  NoPadOuterX
  NoPadInnerX
  ScrollX
  ScrollY
  SortMulti
  SortTristate
  HighlightHoveredColumn
} derive(Eq, Debug)

///|
fn TableFlag::to_int(self : TableFlag) -> Int {
  match self {
    Resizable => @bindings.im_gui_table_flags_resizable()
    Reorderable => @bindings.im_gui_table_flags_reorderable()
    Hideable => @bindings.im_gui_table_flags_hideable()
    Sortable => @bindings.im_gui_table_flags_sortable()
    NoSavedSettings => @bindings.im_gui_table_flags_no_saved_settings()
    ContextMenuInBody => @bindings.im_gui_table_flags_context_menu_in_body()
    Borders => @bindings.im_gui_table_flags_borders()
    RowBg => @bindings.im_gui_table_flags_row_bg()
    BordersInnerH => @bindings.im_gui_table_flags_borders_inner_h()
    BordersOuterH => @bindings.im_gui_table_flags_borders_outer_h()
    BordersInnerV => @bindings.im_gui_table_flags_borders_inner_v()
    BordersOuterV => @bindings.im_gui_table_flags_borders_outer_v()
    BordersH => @bindings.im_gui_table_flags_borders_h()
    BordersV => @bindings.im_gui_table_flags_borders_v()
    BordersInner => @bindings.im_gui_table_flags_borders_inner()
    BordersOuter => @bindings.im_gui_table_flags_borders_outer()
    NoBordersInBody => @bindings.im_gui_table_flags_no_borders_in_body()
    NoBordersInBodyUntilResize =>
      @bindings.im_gui_table_flags_no_borders_in_body_until_resize()
    SizingFixedFit => @bindings.im_gui_table_flags_sizing_fixed_fit()
    SizingFixedSame => @bindings.im_gui_table_flags_sizing_fixed_same()
    SizingStretchProp => @bindings.im_gui_table_flags_sizing_stretch_prop()
    SizingStretchSame => @bindings.im_gui_table_flags_sizing_stretch_same()
    NoHostExtendX => @bindings.im_gui_table_flags_no_host_extend_x()
    NoHostExtendY => @bindings.im_gui_table_flags_no_host_extend_y()
    NoKeepColumnsVisible =>
      @bindings.im_gui_table_flags_no_keep_columns_visible()
    PreciseWidths => @bindings.im_gui_table_flags_precise_widths()
    NoClip => @bindings.im_gui_table_flags_no_clip()
    PadOuterX => @bindings.im_gui_table_flags_pad_outer_x()
    NoPadOuterX => @bindings.im_gui_table_flags_no_pad_outer_x()
    NoPadInnerX => @bindings.im_gui_table_flags_no_pad_inner_x()
    ScrollX => @bindings.im_gui_table_flags_scroll_x()
    ScrollY => @bindings.im_gui_table_flags_scroll_y()
    SortMulti => @bindings.im_gui_table_flags_sort_multi()
    SortTristate => @bindings.im_gui_table_flags_sort_tristate()
    HighlightHoveredColumn =>
      @bindings.im_gui_table_flags_highlight_hovered_column()
  }
}

///|
fn table_flag_bits(flags : Array[TableFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui tab bar flag.
pub(all) enum TabBarFlag {
  Reorderable
  AutoSelectNewTabs
  TabListPopupButton
  NoCloseWithMiddleMouseButton
  NoTabListScrollingButtons
  NoTooltip
  DrawSelectedOverline
  FittingPolicyMixed
  FittingPolicyShrink
  FittingPolicyScroll
  FittingPolicyResizeDown
} derive(Eq, Debug)

///|
fn TabBarFlag::to_int(self : TabBarFlag) -> Int {
  match self {
    Reorderable => @bindings.im_gui_tab_bar_flags_reorderable()
    AutoSelectNewTabs => @bindings.im_gui_tab_bar_flags_auto_select_new_tabs()
    TabListPopupButton => @bindings.im_gui_tab_bar_flags_tab_list_popup_button()
    NoCloseWithMiddleMouseButton =>
      @bindings.im_gui_tab_bar_flags_no_close_with_middle_mouse_button()
    NoTabListScrollingButtons =>
      @bindings.im_gui_tab_bar_flags_no_tab_list_scrolling_buttons()
    NoTooltip => @bindings.im_gui_tab_bar_flags_no_tooltip()
    DrawSelectedOverline =>
      @bindings.im_gui_tab_bar_flags_draw_selected_overline()
    FittingPolicyMixed => @bindings.im_gui_tab_bar_flags_fitting_policy_mixed()
    FittingPolicyShrink =>
      @bindings.im_gui_tab_bar_flags_fitting_policy_shrink()
    FittingPolicyScroll =>
      @bindings.im_gui_tab_bar_flags_fitting_policy_scroll()
    FittingPolicyResizeDown =>
      @bindings.im_gui_tab_bar_flags_fitting_policy_resize_down()
  }
}

///|
fn tab_bar_flag_bits(flags : Array[TabBarFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui tab item flag.
pub(all) enum TabItemFlag {
  UnsavedDocument
  SetSelected
  NoCloseWithMiddleMouseButton
  NoPushId
  NoTooltip
  NoReorder
  Leading
  Trailing
  NoAssumedClosure
} derive(Eq, Debug)

///|
fn TabItemFlag::to_int(self : TabItemFlag) -> Int {
  match self {
    UnsavedDocument => @bindings.im_gui_tab_item_flags_unsaved_document()
    SetSelected => @bindings.im_gui_tab_item_flags_set_selected()
    NoCloseWithMiddleMouseButton =>
      @bindings.im_gui_tab_item_flags_no_close_with_middle_mouse_button()
    NoPushId => @bindings.im_gui_tab_item_flags_no_push_id()
    NoTooltip => @bindings.im_gui_tab_item_flags_no_tooltip()
    NoReorder => @bindings.im_gui_tab_item_flags_no_reorder()
    Leading => @bindings.im_gui_tab_item_flags_leading()
    Trailing => @bindings.im_gui_tab_item_flags_trailing()
    NoAssumedClosure => @bindings.im_gui_tab_item_flags_no_assumed_closure()
  }
}

///|
fn tab_item_flag_bits(flags : Array[TabItemFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui popup flag.
pub(all) enum PopupFlag {
  MouseButtonLeft
  MouseButtonRight
  MouseButtonMiddle
  NoReopen
  NoOpenOverExistingPopup
  NoOpenOverItems
  AnyPopId
  AnyPopupLevel
  AnyPopup
} derive(Eq, Debug)

///|
fn PopupFlag::to_int(self : PopupFlag) -> Int {
  match self {
    MouseButtonLeft => @bindings.im_gui_popup_flags_mouse_button_left()
    MouseButtonRight => @bindings.im_gui_popup_flags_mouse_button_right()
    MouseButtonMiddle => @bindings.im_gui_popup_flags_mouse_button_middle()
    NoReopen => @bindings.im_gui_popup_flags_no_reopen()
    NoOpenOverExistingPopup =>
      @bindings.im_gui_popup_flags_no_open_over_existing_popup()
    NoOpenOverItems => @bindings.im_gui_popup_flags_no_open_over_items()
    AnyPopId => @bindings.im_gui_popup_flags_any_popup_id()
    AnyPopupLevel => @bindings.im_gui_popup_flags_any_popup_level()
    AnyPopup => @bindings.im_gui_popup_flags_any_popup()
  }
}

///|
fn popup_flag_bits(flags : Array[PopupFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui tree node flag.
pub(all) enum TreeNodeFlag {
  Selected
  Framed
  AllowOverlap
  NoTreePushOnOpen
  NoAutoOpenOnLog
  DefaultOpen
  OpenOnDoubleClick
  OpenOnArrow
  Leaf
  Bullet
  FramePadding
  SpanAvailWidth
  SpanFullWidth
  SpanLabelWidth
  SpanAllColumns
  LabelSpanAllColumns
  NavLeftJumpsToParent
  CollapsingHeader
  DrawLinesNone
  DrawLinesFull
  DrawLinesToNodes
  NavLeftJumpsBackHere
  SpanTextWidth
} derive(Eq, Debug)

///|
fn TreeNodeFlag::to_int(self : TreeNodeFlag) -> Int {
  match self {
    Selected => @bindings.im_gui_tree_node_flags_selected()
    Framed => @bindings.im_gui_tree_node_flags_framed()
    AllowOverlap => @bindings.im_gui_tree_node_flags_allow_overlap()
    NoTreePushOnOpen => @bindings.im_gui_tree_node_flags_no_tree_push_on_open()
    NoAutoOpenOnLog => @bindings.im_gui_tree_node_flags_no_auto_open_on_log()
    DefaultOpen => @bindings.im_gui_tree_node_flags_default_open()
    OpenOnDoubleClick => @bindings.im_gui_tree_node_flags_open_on_double_click()
    OpenOnArrow => @bindings.im_gui_tree_node_flags_open_on_arrow()
    Leaf => @bindings.im_gui_tree_node_flags_leaf()
    Bullet => @bindings.im_gui_tree_node_flags_bullet()
    FramePadding => @bindings.im_gui_tree_node_flags_frame_padding()
    SpanAvailWidth => @bindings.im_gui_tree_node_flags_span_avail_width()
    SpanFullWidth => @bindings.im_gui_tree_node_flags_span_full_width()
    SpanLabelWidth => @bindings.im_gui_tree_node_flags_span_label_width()
    SpanAllColumns => @bindings.im_gui_tree_node_flags_span_all_columns()
    LabelSpanAllColumns =>
      @bindings.im_gui_tree_node_flags_label_span_all_columns()
    NavLeftJumpsToParent =>
      @bindings.im_gui_tree_node_flags_nav_left_jumps_to_parent()
    CollapsingHeader => @bindings.im_gui_tree_node_flags_collapsing_header()
    DrawLinesNone => @bindings.im_gui_tree_node_flags_draw_lines_none()
    DrawLinesFull => @bindings.im_gui_tree_node_flags_draw_lines_full()
    DrawLinesToNodes => @bindings.im_gui_tree_node_flags_draw_lines_to_nodes()
    NavLeftJumpsBackHere =>
      @bindings.im_gui_tree_node_flags_nav_left_jumps_back_here()
    SpanTextWidth => @bindings.im_gui_tree_node_flags_span_text_width()
  }
}

///|
fn tree_node_flag_bits(flags : Array[TreeNodeFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui combo flag.
pub(all) enum ComboFlag {
  PopupAlignLeft
  HeightSmall
  HeightRegular
  HeightLarge
  HeightLargest
  NoArrowButton
  NoPreview
  WidthFitPreview
} derive(Eq, Debug)

///|
fn ComboFlag::to_int(self : ComboFlag) -> Int {
  match self {
    PopupAlignLeft => @bindings.im_gui_combo_flags_popup_align_left()
    HeightSmall => @bindings.im_gui_combo_flags_height_small()
    HeightRegular => @bindings.im_gui_combo_flags_height_regular()
    HeightLarge => @bindings.im_gui_combo_flags_height_large()
    HeightLargest => @bindings.im_gui_combo_flags_height_largest()
    NoArrowButton => @bindings.im_gui_combo_flags_no_arrow_button()
    NoPreview => @bindings.im_gui_combo_flags_no_preview()
    WidthFitPreview => @bindings.im_gui_combo_flags_width_fit_preview()
  }
}

///|
fn combo_flag_bits(flags : Array[ComboFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui input text flag.
pub(all) enum InputTextFlag {
  CharsDecimal
  CharsHexadecimal
  CharsUppercase
  CharsNoBlank
  AutoSelectAll
  EnterReturnsTrue
  CallbackCompletion
  CallbackHistory
  CallbackAlways
  CallbackCharFilter
  AllowTabInput
  CtrlEnterForNewLine
  NoHorizontalScroll
  AlwaysOverwrite
  ReadOnly
  Password
  NoUndoRedo
  CharsScientific
  CallbackResize
  CallbackEdit
  EscapeClearsAll
  DisplayEmptyRefVal
  ParseEmptyRefVal
  ElideLeft
  WordWrap
} derive(Eq, Debug)

///|
fn InputTextFlag::to_int(self : InputTextFlag) -> Int {
  match self {
    CharsDecimal => @bindings.im_gui_input_text_flags_chars_decimal()
    CharsHexadecimal => @bindings.im_gui_input_text_flags_chars_hexadecimal()
    CharsUppercase => @bindings.im_gui_input_text_flags_chars_uppercase()
    CharsNoBlank => @bindings.im_gui_input_text_flags_chars_no_blank()
    AutoSelectAll => @bindings.im_gui_input_text_flags_auto_select_all()
    EnterReturnsTrue => @bindings.im_gui_input_text_flags_enter_returns_true()
    CallbackCompletion =>
      @bindings.im_gui_input_text_flags_callback_completion()
    CallbackHistory => @bindings.im_gui_input_text_flags_callback_history()
    CallbackAlways => @bindings.im_gui_input_text_flags_callback_always()
    CallbackCharFilter =>
      @bindings.im_gui_input_text_flags_callback_char_filter()
    AllowTabInput => @bindings.im_gui_input_text_flags_allow_tab_input()
    CtrlEnterForNewLine =>
      @bindings.im_gui_input_text_flags_ctrl_enter_for_new_line()
    NoHorizontalScroll =>
      @bindings.im_gui_input_text_flags_no_horizontal_scroll()
    AlwaysOverwrite => @bindings.im_gui_input_text_flags_always_overwrite()
    ReadOnly => @bindings.im_gui_input_text_flags_read_only()
    Password => @bindings.im_gui_input_text_flags_password()
    NoUndoRedo => @bindings.im_gui_input_text_flags_no_undo_redo()
    CharsScientific => @bindings.im_gui_input_text_flags_chars_scientific()
    CallbackResize => @bindings.im_gui_input_text_flags_callback_resize()
    CallbackEdit => @bindings.im_gui_input_text_flags_callback_edit()
    EscapeClearsAll => @bindings.im_gui_input_text_flags_escape_clears_all()
    DisplayEmptyRefVal =>
      @bindings.im_gui_input_text_flags_display_empty_ref_val()
    ParseEmptyRefVal => @bindings.im_gui_input_text_flags_parse_empty_ref_val()
    ElideLeft => @bindings.im_gui_input_text_flags_elide_left()
    WordWrap => @bindings.im_gui_input_text_flags_word_wrap()
  }
}

///|
fn input_text_flag_bits(flags : Array[InputTextFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui slider and drag flag.
pub(all) enum SliderFlag {
  Logarithmic
  NoRoundToFormat
  NoInput
  WrapAround
  ClampOnInput
  ClampZeroRange
  NoSpeedTweaks
  ColorMarkers
  AlwaysClamp
} derive(Eq, Debug)

///|
fn SliderFlag::to_int(self : SliderFlag) -> Int {
  match self {
    Logarithmic => @bindings.im_gui_slider_flags_logarithmic()
    NoRoundToFormat => @bindings.im_gui_slider_flags_no_round_to_format()
    NoInput => @bindings.im_gui_slider_flags_no_input()
    WrapAround => @bindings.im_gui_slider_flags_wrap_around()
    ClampOnInput => @bindings.im_gui_slider_flags_clamp_on_input()
    ClampZeroRange => @bindings.im_gui_slider_flags_clamp_zero_range()
    NoSpeedTweaks => @bindings.im_gui_slider_flags_no_speed_tweaks()
    ColorMarkers => @bindings.im_gui_slider_flags_color_markers()
    AlwaysClamp => @bindings.im_gui_slider_flags_always_clamp()
  }
}

///|
fn slider_flag_bits(flags : Array[SliderFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui color edit flag.
pub(all) enum ColorEditFlag {
  NoAlpha
  NoPicker
  NoOptions
  NoSmallPreview
  NoInputs
  NoTooltip
  NoLabel
  NoSidePreview
  NoDragDrop
  NoBorder
  NoColorMarkers
  AlphaOpaque
  AlphaNoBg
  AlphaPreviewHalf
  AlphaBar
  Hdr
  DisplayRgb
  DisplayHsv
  DisplayHex
  UInt8
  FloatMode
  PickerHueBar
  PickerHueWheel
  InputRgb
  InputHsv
  AlphaPreview
} derive(Eq, Debug)

///|
fn ColorEditFlag::to_int(self : ColorEditFlag) -> Int {
  match self {
    NoAlpha => @bindings.im_gui_color_edit_flags_no_alpha()
    NoPicker => @bindings.im_gui_color_edit_flags_no_picker()
    NoOptions => @bindings.im_gui_color_edit_flags_no_options()
    NoSmallPreview => @bindings.im_gui_color_edit_flags_no_small_preview()
    NoInputs => @bindings.im_gui_color_edit_flags_no_inputs()
    NoTooltip => @bindings.im_gui_color_edit_flags_no_tooltip()
    NoLabel => @bindings.im_gui_color_edit_flags_no_label()
    NoSidePreview => @bindings.im_gui_color_edit_flags_no_side_preview()
    NoDragDrop => @bindings.im_gui_color_edit_flags_no_drag_drop()
    NoBorder => @bindings.im_gui_color_edit_flags_no_border()
    NoColorMarkers => @bindings.im_gui_color_edit_flags_no_color_markers()
    AlphaOpaque => @bindings.im_gui_color_edit_flags_alpha_opaque()
    AlphaNoBg => @bindings.im_gui_color_edit_flags_alpha_no_bg()
    AlphaPreviewHalf => @bindings.im_gui_color_edit_flags_alpha_preview_half()
    AlphaBar => @bindings.im_gui_color_edit_flags_alpha_bar()
    Hdr => @bindings.im_gui_color_edit_flags_hdr()
    DisplayRgb => @bindings.im_gui_color_edit_flags_display_rgb()
    DisplayHsv => @bindings.im_gui_color_edit_flags_display_hsv()
    DisplayHex => @bindings.im_gui_color_edit_flags_display_hex()
    UInt8 => @bindings.im_gui_color_edit_flags_uint8()
    FloatMode => @bindings.im_gui_color_edit_flags_float()
    PickerHueBar => @bindings.im_gui_color_edit_flags_picker_hue_bar()
    PickerHueWheel => @bindings.im_gui_color_edit_flags_picker_hue_wheel()
    InputRgb => @bindings.im_gui_color_edit_flags_input_rgb()
    InputHsv => @bindings.im_gui_color_edit_flags_input_hsv()
    AlphaPreview => @bindings.im_gui_color_edit_flags_alpha_preview()
  }
}

///|
fn color_edit_flag_bits(flags : Array[ColorEditFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui item flag.
pub(all) enum ItemFlag {
  NoTabStop
  NoNav
  NoNavDefaultFocus
  ButtonRepeat
  AutoClosePopups
  AllowDuplicateId
  Disabled
} derive(Eq, Debug)

///|
fn ItemFlag::to_int(self : ItemFlag) -> Int {
  match self {
    NoTabStop => @bindings.im_gui_item_flags_no_tab_stop()
    NoNav => @bindings.im_gui_item_flags_no_nav()
    NoNavDefaultFocus => @bindings.im_gui_item_flags_no_nav_default_focus()
    ButtonRepeat => @bindings.im_gui_item_flags_button_repeat()
    AutoClosePopups => @bindings.im_gui_item_flags_auto_close_popups()
    AllowDuplicateId => @bindings.im_gui_item_flags_allow_duplicate_id()
    Disabled => @bindings.im_gui_item_flags_disabled()
  }
}

///|
/// Composable ImGui focused query flag.
pub(all) enum FocusedFlag {
  ChildWindows
  RootWindow
  AnyWindow
  NoPopupHierarchy
  RootAndChildWindows
} derive(Eq, Debug)

///|
fn FocusedFlag::to_int(self : FocusedFlag) -> Int {
  match self {
    ChildWindows => @bindings.im_gui_focused_flags_child_windows()
    RootWindow => @bindings.im_gui_focused_flags_root_window()
    AnyWindow => @bindings.im_gui_focused_flags_any_window()
    NoPopupHierarchy => @bindings.im_gui_focused_flags_no_popup_hierarchy()
    RootAndChildWindows =>
      @bindings.im_gui_focused_flags_root_and_child_windows()
  }
}

///|
fn focused_flag_bits(flags : Array[FocusedFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui hovered query flag.
pub(all) enum HoveredFlag {
  ChildWindows
  RootWindow
  AnyWindow
  NoPopupHierarchy
  AllowWhenBlockedByPopup
  AllowWhenBlockedByActiveItem
  AllowWhenOverlappedByItem
  AllowWhenOverlappedByWindow
  AllowWhenDisabled
  NoNavOverride
  AllowWhenOverlapped
  RectOnly
  RootAndChildWindows
  ForTooltip
  Stationary
  DelayNone
  DelayShort
  DelayNormal
  NoSharedDelay
} derive(Eq, Debug)

///|
fn HoveredFlag::to_int(self : HoveredFlag) -> Int {
  match self {
    ChildWindows => @bindings.im_gui_hovered_flags_child_windows()
    RootWindow => @bindings.im_gui_hovered_flags_root_window()
    AnyWindow => @bindings.im_gui_hovered_flags_any_window()
    NoPopupHierarchy => @bindings.im_gui_hovered_flags_no_popup_hierarchy()
    AllowWhenBlockedByPopup =>
      @bindings.im_gui_hovered_flags_allow_when_blocked_by_popup()
    AllowWhenBlockedByActiveItem =>
      @bindings.im_gui_hovered_flags_allow_when_blocked_by_active_item()
    AllowWhenOverlappedByItem =>
      @bindings.im_gui_hovered_flags_allow_when_overlapped_by_item()
    AllowWhenOverlappedByWindow =>
      @bindings.im_gui_hovered_flags_allow_when_overlapped_by_window()
    AllowWhenDisabled => @bindings.im_gui_hovered_flags_allow_when_disabled()
    NoNavOverride => @bindings.im_gui_hovered_flags_no_nav_override()
    AllowWhenOverlapped =>
      @bindings.im_gui_hovered_flags_allow_when_overlapped()
    RectOnly => @bindings.im_gui_hovered_flags_rect_only()
    RootAndChildWindows =>
      @bindings.im_gui_hovered_flags_root_and_child_windows()
    ForTooltip => @bindings.im_gui_hovered_flags_for_tooltip()
    Stationary => @bindings.im_gui_hovered_flags_stationary()
    DelayNone => @bindings.im_gui_hovered_flags_delay_none()
    DelayShort => @bindings.im_gui_hovered_flags_delay_short()
    DelayNormal => @bindings.im_gui_hovered_flags_delay_normal()
    NoSharedDelay => @bindings.im_gui_hovered_flags_no_shared_delay()
  }
}

///|
fn hovered_flag_bits(flags : Array[HoveredFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui invisible button flag.
pub(all) enum ButtonFlag {
  MouseButtonLeft
  MouseButtonRight
  MouseButtonMiddle
  EnableNav
  AllowOverlap
} derive(Eq, Debug)

///|
/// ImGui mouse button identifier.
struct MouseButton {
  value : Int
} derive(Eq, Debug)

///|
/// ImGui direction identifier.
struct Dir {
  value : Int
} derive(Eq, Debug)

///|
/// ImGui table background target.
struct TableBgTarget {
  value : Int
} derive(Eq, Debug)

///|
/// ImGui style variable identifier.
struct StyleVar {
  value : Int
} derive(Eq, Debug)

///|
/// ImGui style color identifier.
struct ColorId {
  value : Int
} derive(Eq, Debug)

///|
/// ImGui condition value.
struct Cond {
  value : Int
} derive(Eq, Debug)

///|
/// Composable ImGui table column flag.
pub(all) enum TableColumnFlag {
  Disabled
  DefaultHide
  DefaultSort
  WidthStretch
  WidthFixed
  NoResize
  NoReorder
  NoHide
  NoClip
  NoSort
  NoSortAscending
  NoSortDescending
  NoHeaderLabel
  NoHeaderWidth
  PreferSortAscending
  PreferSortDescending
  IndentEnable
  IndentDisable
  AngledHeader
  IsEnabled
  IsVisible
  IsSorted
  IsHovered
} derive(Eq, Debug)

///|
fn TableColumnFlag::to_int(self : TableColumnFlag) -> Int {
  match self {
    Disabled => @bindings.im_gui_table_column_flags_disabled()
    DefaultHide => @bindings.im_gui_table_column_flags_default_hide()
    DefaultSort => @bindings.im_gui_table_column_flags_default_sort()
    WidthStretch => @bindings.im_gui_table_column_flags_width_stretch()
    WidthFixed => @bindings.im_gui_table_column_flags_width_fixed()
    NoResize => @bindings.im_gui_table_column_flags_no_resize()
    NoReorder => @bindings.im_gui_table_column_flags_no_reorder()
    NoHide => @bindings.im_gui_table_column_flags_no_hide()
    NoClip => @bindings.im_gui_table_column_flags_no_clip()
    NoSort => @bindings.im_gui_table_column_flags_no_sort()
    NoSortAscending => @bindings.im_gui_table_column_flags_no_sort_ascending()
    NoSortDescending => @bindings.im_gui_table_column_flags_no_sort_descending()
    NoHeaderLabel => @bindings.im_gui_table_column_flags_no_header_label()
    NoHeaderWidth => @bindings.im_gui_table_column_flags_no_header_width()
    PreferSortAscending =>
      @bindings.im_gui_table_column_flags_prefer_sort_ascending()
    PreferSortDescending =>
      @bindings.im_gui_table_column_flags_prefer_sort_descending()
    IndentEnable => @bindings.im_gui_table_column_flags_indent_enable()
    IndentDisable => @bindings.im_gui_table_column_flags_indent_disable()
    AngledHeader => @bindings.im_gui_table_column_flags_angled_header()
    IsEnabled => @bindings.im_gui_table_column_flags_is_enabled()
    IsVisible => @bindings.im_gui_table_column_flags_is_visible()
    IsSorted => @bindings.im_gui_table_column_flags_is_sorted()
    IsHovered => @bindings.im_gui_table_column_flags_is_hovered()
  }
}

///|
fn table_column_flag_bits(flags : Array[TableColumnFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
/// Composable ImGui table row flag.
pub(all) enum TableRowFlag {
  Headers
} derive(Eq, Debug)

///|
fn TableRowFlag::to_int(self : TableRowFlag) -> Int {
  match self {
    Headers => @bindings.im_gui_table_row_flags_headers()
  }
}

///|
fn table_row_flag_bits(flags : Array[TableRowFlag]) -> Int {
  let mut bits = 0
  for flag in flags {
    bits = bits | flag.to_int()
  }
  bits
}

///|
pub fn MouseButton::left() -> MouseButton {
  { value: @bindings.im_gui_mouse_button_left() }
}

///|
pub fn MouseButton::right() -> MouseButton {
  { value: @bindings.im_gui_mouse_button_right() }
}

///|
pub fn MouseButton::middle() -> MouseButton {
  { value: @bindings.im_gui_mouse_button_middle() }
}

///|
pub fn MouseButton::value(self : MouseButton) -> Int {
  self.value
}

///|
pub fn Dir::none() -> Dir {
  { value: @bindings.im_gui_dir_none() }
}

///|
pub fn Dir::left() -> Dir {
  { value: @bindings.im_gui_dir_left() }
}

///|
pub fn Dir::right() -> Dir {
  { value: @bindings.im_gui_dir_right() }
}

///|
pub fn Dir::up() -> Dir {
  { value: @bindings.im_gui_dir_up() }
}

///|
pub fn Dir::down() -> Dir {
  { value: @bindings.im_gui_dir_down() }
}

///|
pub fn Dir::value(self : Dir) -> Int {
  self.value
}

///|
pub fn TableBgTarget::none() -> TableBgTarget {
  { value: @bindings.im_gui_table_bg_target_none() }
}

///|
pub fn TableBgTarget::row_bg0() -> TableBgTarget {
  { value: @bindings.im_gui_table_bg_target_row_bg0() }
}

///|
pub fn TableBgTarget::row_bg1() -> TableBgTarget {
  { value: @bindings.im_gui_table_bg_target_row_bg1() }
}

///|
pub fn TableBgTarget::cell_bg() -> TableBgTarget {
  { value: @bindings.im_gui_table_bg_target_cell_bg() }
}

///|
pub fn TableBgTarget::value(self : TableBgTarget) -> Int {
  self.value
}

///|
pub fn StyleVar::alpha() -> StyleVar {
  { value: @bindings.im_gui_style_var_alpha() }
}

///|
pub fn StyleVar::disabled_alpha() -> StyleVar {
  { value: @bindings.im_gui_style_var_disabled_alpha() }
}

///|
pub fn StyleVar::window_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_window_rounding() }
}

///|
pub fn StyleVar::window_border_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_window_border_size() }
}

///|
pub fn StyleVar::child_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_child_rounding() }
}

///|
pub fn StyleVar::child_border_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_child_border_size() }
}

///|
pub fn StyleVar::popup_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_popup_rounding() }
}

///|
pub fn StyleVar::popup_border_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_popup_border_size() }
}

///|
pub fn StyleVar::frame_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_frame_rounding() }
}

///|
pub fn StyleVar::frame_border_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_frame_border_size() }
}

///|
pub fn StyleVar::indent_spacing() -> StyleVar {
  { value: @bindings.im_gui_style_var_indent_spacing() }
}

///|
pub fn StyleVar::scrollbar_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_scrollbar_size() }
}

///|
pub fn StyleVar::scrollbar_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_scrollbar_rounding() }
}

///|
pub fn StyleVar::scrollbar_padding() -> StyleVar {
  { value: @bindings.im_gui_style_var_scrollbar_padding() }
}

///|
pub fn StyleVar::grab_min_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_grab_min_size() }
}

///|
pub fn StyleVar::grab_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_grab_rounding() }
}

///|
pub fn StyleVar::image_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_image_rounding() }
}

///|
pub fn StyleVar::image_border_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_image_border_size() }
}

///|
pub fn StyleVar::tab_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_tab_rounding() }
}

///|
pub fn StyleVar::tab_border_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_tab_border_size() }
}

///|
pub fn StyleVar::tab_min_width_base() -> StyleVar {
  { value: @bindings.im_gui_style_var_tab_min_width_base() }
}

///|
pub fn StyleVar::tab_min_width_shrink() -> StyleVar {
  { value: @bindings.im_gui_style_var_tab_min_width_shrink() }
}

///|
pub fn StyleVar::tab_bar_border_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_tab_bar_border_size() }
}

///|
pub fn StyleVar::tab_bar_overline_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_tab_bar_overline_size() }
}

///|
pub fn StyleVar::table_angled_headers_angle() -> StyleVar {
  { value: @bindings.im_gui_style_var_table_angled_headers_angle() }
}

///|
pub fn StyleVar::tree_lines_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_tree_lines_size() }
}

///|
pub fn StyleVar::tree_lines_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_tree_lines_rounding() }
}

///|
pub fn StyleVar::drag_drop_target_rounding() -> StyleVar {
  { value: @bindings.im_gui_style_var_drag_drop_target_rounding() }
}

///|
pub fn StyleVar::separator_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_separator_size() }
}

///|
pub fn StyleVar::separator_text_border_size() -> StyleVar {
  { value: @bindings.im_gui_style_var_separator_text_border_size() }
}

///|
pub fn StyleVar::count() -> StyleVar {
  { value: @bindings.im_gui_style_var_count() }
}

///|
pub fn StyleVar::value(self : StyleVar) -> Int {
  self.value
}

///|
pub fn Cond::none() -> Cond {
  { value: @bindings.im_gui_cond_none() }
}

///|
pub fn Cond::always() -> Cond {
  { value: @bindings.im_gui_cond_always() }
}

///|
pub fn Cond::once() -> Cond {
  { value: @bindings.im_gui_cond_once() }
}

///|
pub fn Cond::first_use_ever() -> Cond {
  { value: @bindings.im_gui_cond_first_use_ever() }
}

///|
pub fn Cond::appearing() -> Cond {
  { value: @bindings.im_gui_cond_appearing() }
}

///|
pub fn Cond::value(self : Cond) -> Int {
  self.value
}

///|
pub fn ColorId::text() -> ColorId {
  { value: @bindings.im_gui_col_text() }
}

///|
pub fn ColorId::text_disabled() -> ColorId {
  { value: @bindings.im_gui_col_text_disabled() }
}

///|
pub fn ColorId::window_bg() -> ColorId {
  { value: @bindings.im_gui_col_window_bg() }
}

///|
pub fn ColorId::child_bg() -> ColorId {
  { value: @bindings.im_gui_col_child_bg() }
}

///|
pub fn ColorId::popup_bg() -> ColorId {
  { value: @bindings.im_gui_col_popup_bg() }
}

///|
pub fn ColorId::border() -> ColorId {
  { value: @bindings.im_gui_col_border() }
}

///|
pub fn ColorId::border_shadow() -> ColorId {
  { value: @bindings.im_gui_col_border_shadow() }
}

///|
pub fn ColorId::frame_bg() -> ColorId {
  { value: @bindings.im_gui_col_frame_bg() }
}

///|
pub fn ColorId::frame_bg_hovered() -> ColorId {
  { value: @bindings.im_gui_col_frame_bg_hovered() }
}

///|
pub fn ColorId::frame_bg_active() -> ColorId {
  { value: @bindings.im_gui_col_frame_bg_active() }
}

///|
pub fn ColorId::title_bg() -> ColorId {
  { value: @bindings.im_gui_col_title_bg() }
}

///|
pub fn ColorId::title_bg_active() -> ColorId {
  { value: @bindings.im_gui_col_title_bg_active() }
}

///|
pub fn ColorId::title_bg_collapsed() -> ColorId {
  { value: @bindings.im_gui_col_title_bg_collapsed() }
}

///|
pub fn ColorId::menu_bar_bg() -> ColorId {
  { value: @bindings.im_gui_col_menu_bar_bg() }
}

///|
pub fn ColorId::scrollbar_bg() -> ColorId {
  { value: @bindings.im_gui_col_scrollbar_bg() }
}

///|
pub fn ColorId::scrollbar_grab() -> ColorId {
  { value: @bindings.im_gui_col_scrollbar_grab() }
}

///|
pub fn ColorId::scrollbar_grab_hovered() -> ColorId {
  { value: @bindings.im_gui_col_scrollbar_grab_hovered() }
}

///|
pub fn ColorId::scrollbar_grab_active() -> ColorId {
  { value: @bindings.im_gui_col_scrollbar_grab_active() }
}

///|
pub fn ColorId::check_mark() -> ColorId {
  { value: @bindings.im_gui_col_check_mark() }
}

///|
pub fn ColorId::checkbox_selected_bg() -> ColorId {
  { value: @bindings.im_gui_col_checkbox_selected_bg() }
}

///|
pub fn ColorId::slider_grab() -> ColorId {
  { value: @bindings.im_gui_col_slider_grab() }
}

///|
pub fn ColorId::slider_grab_active() -> ColorId {
  { value: @bindings.im_gui_col_slider_grab_active() }
}

///|
pub fn ColorId::button() -> ColorId {
  { value: @bindings.im_gui_col_button() }
}

///|
pub fn ColorId::button_hovered() -> ColorId {
  { value: @bindings.im_gui_col_button_hovered() }
}

///|
pub fn ColorId::button_active() -> ColorId {
  { value: @bindings.im_gui_col_button_active() }
}

///|
pub fn ColorId::header() -> ColorId {
  { value: @bindings.im_gui_col_header() }
}

///|
pub fn ColorId::header_hovered() -> ColorId {
  { value: @bindings.im_gui_col_header_hovered() }
}

///|
pub fn ColorId::header_active() -> ColorId {
  { value: @bindings.im_gui_col_header_active() }
}

///|
pub fn ColorId::separator() -> ColorId {
  { value: @bindings.im_gui_col_separator() }
}

///|
pub fn ColorId::separator_hovered() -> ColorId {
  { value: @bindings.im_gui_col_separator_hovered() }
}

///|
pub fn ColorId::separator_active() -> ColorId {
  { value: @bindings.im_gui_col_separator_active() }
}

///|
pub fn ColorId::resize_grip() -> ColorId {
  { value: @bindings.im_gui_col_resize_grip() }
}

///|
pub fn ColorId::resize_grip_hovered() -> ColorId {
  { value: @bindings.im_gui_col_resize_grip_hovered() }
}

///|
pub fn ColorId::resize_grip_active() -> ColorId {
  { value: @bindings.im_gui_col_resize_grip_active() }
}

///|
pub fn ColorId::tab() -> ColorId {
  { value: @bindings.im_gui_col_tab() }
}

///|
pub fn ColorId::tab_active() -> ColorId {
  { value: @bindings.im_gui_col_tab_active() }
}

///|
pub fn ColorId::tab_hovered() -> ColorId {
  { value: @bindings.im_gui_col_tab_hovered() }
}

///|
pub fn ColorId::tab_selected() -> ColorId {
  { value: @bindings.im_gui_col_tab_selected() }
}

///|
pub fn ColorId::tab_selected_overline() -> ColorId {
  { value: @bindings.im_gui_col_tab_selected_overline() }
}

///|
pub fn ColorId::tab_dimmed() -> ColorId {
  { value: @bindings.im_gui_col_tab_dimmed() }
}

///|
pub fn ColorId::tab_dimmed_selected() -> ColorId {
  { value: @bindings.im_gui_col_tab_dimmed_selected() }
}

///|
pub fn ColorId::tab_dimmed_selected_overline() -> ColorId {
  { value: @bindings.im_gui_col_tab_dimmed_selected_overline() }
}

///|
pub fn ColorId::tab_unfocused() -> ColorId {
  { value: @bindings.im_gui_col_tab_unfocused() }
}

///|
pub fn ColorId::tab_unfocused_active() -> ColorId {
  { value: @bindings.im_gui_col_tab_unfocused_active() }
}

///|
pub fn ColorId::plot_lines() -> ColorId {
  { value: @bindings.im_gui_col_plot_lines() }
}

///|
pub fn ColorId::plot_lines_hovered() -> ColorId {
  { value: @bindings.im_gui_col_plot_lines_hovered() }
}

///|
pub fn ColorId::plot_histogram() -> ColorId {
  { value: @bindings.im_gui_col_plot_histogram() }
}

///|
pub fn ColorId::plot_histogram_hovered() -> ColorId {
  { value: @bindings.im_gui_col_plot_histogram_hovered() }
}

///|
pub fn ColorId::table_header_bg() -> ColorId {
  { value: @bindings.im_gui_col_table_header_bg() }
}

///|
pub fn ColorId::table_border_strong() -> ColorId {
  { value: @bindings.im_gui_col_table_border_strong() }
}

///|
pub fn ColorId::table_border_light() -> ColorId {
  { value: @bindings.im_gui_col_table_border_light() }
}

///|
pub fn ColorId::table_row_bg() -> ColorId {
  { value: @bindings.im_gui_col_table_row_bg() }
}

///|
pub fn ColorId::table_row_bg_alt() -> ColorId {
  { value: @bindings.im_gui_col_table_row_bg_alt() }
}

///|
pub fn ColorId::text_link() -> ColorId {
  { value: @bindings.im_gui_col_text_link() }
}

///|
pub fn ColorId::text_selected_bg() -> ColorId {
  { value: @bindings.im_gui_col_text_selected_bg() }
}

///|
pub fn ColorId::tree_lines() -> ColorId {
  { value: @bindings.im_gui_col_tree_lines() }
}

///|
pub fn ColorId::drag_drop_target() -> ColorId {
  { value: @bindings.im_gui_col_drag_drop_target() }
}

///|
pub fn ColorId::drag_drop_target_bg() -> ColorId {
  { value: @bindings.im_gui_col_drag_drop_target_bg() }
}

///|
pub fn ColorId::unsaved_marker() -> ColorId {
  { value: @bindings.im_gui_col_unsaved_marker() }
}

///|
pub fn ColorId::nav_cursor() -> ColorId {
  { value: @bindings.im_gui_col_nav_cursor() }
}

///|
pub fn ColorId::nav_highlight() -> ColorId {
  { value: @bindings.im_gui_col_nav_highlight() }
}

///|
pub fn ColorId::nav_windowing_highlight() -> ColorId {
  { value: @bindings.im_gui_col_nav_windowing_highlight() }
}

///|
pub fn ColorId::nav_windowing_dim_bg() -> ColorId {
  { value: @bindings.im_gui_col_nav_windowing_dim_bg() }
}

///|
pub fn ColorId::modal_window_dim_bg() -> ColorId {
  { value: @bindings.im_gui_col_modal_window_dim_bg() }
}

///|
pub fn ColorId::input_text_cursor() -> ColorId {
  { value: @bindings.im_gui_col_input_text_cursor() }
}

///|
pub fn ColorId::count() -> ColorId {
  { value: @bindings.im_gui_col_count() }
}

///|
pub fn ColorId::value(self : ColorId) -> Int {
  self.value
}

///|
/// Creates a Dear ImGui context and makes it current.
pub fn Context::create() -> Context {
  let raw = @bindings.im_gui_create_context(@bindings.ImFontAtlas::null())
  guard !raw.is_null() else { abort("Dear ImGui context creation failed") }
  @bindings.im_gui_set_current_context(raw)
  { raw, }
}

///|
/// Destroys the native context.
pub fn Context::destroy(self : Context) -> Unit {
  @bindings.im_gui_destroy_context(self.raw)
}

///|
/// Makes this context current.
pub fn Context::make_current(self : Context) -> Unit {
  @bindings.im_gui_set_current_context(self.raw)
}

///|
/// Clears the current context.
pub fn clear_current_context() -> Unit {
  @bindings.im_gui_set_current_context(@bindings.ImGuiContext::null())
}

///|
/// Returns true when a current context exists.
pub fn has_current_context() -> Bool {
  !@bindings.im_gui_get_current_context().is_null()
}

///|
/// Returns the Dear ImGui version number from the generated binding constants.
pub fn version_number() -> Int {
  @bindings.imgui_version_num()
}

///|
/// Starts a new Dear ImGui frame.
pub fn new_frame() -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_new_frame()
}

///|
/// Renders the current frame and returns draw data when available.
pub fn render() -> DrawData raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_render()
  @bindings.im_gui_get_draw_data()
}

///|
/// Returns the Dear ImGui frame count.
pub fn frame_count() -> Int {
  @bindings.im_gui_get_frame_count()
}

///|
/// Returns the current Dear ImGui IO handle.
pub fn io() -> Io raise ImGuiError {
  ensure_current_context()
  let raw = @bindings.im_gui_get_io()
  guard !raw.is_null() else { raise NoCurrentContext }
  { raw, }
}

///|
/// Returns the current Dear ImGui style handle.
pub fn style() -> Style raise ImGuiError {
  ensure_current_context()
  let raw = @bindings.im_gui_get_style()
  guard !raw.is_null() else { raise NoCurrentContext }
  { raw, }
}

///|
/// Returns the current font handle.
pub fn font() -> Font raise ImGuiError {
  ensure_current_context()
  let raw = @bindings.im_gui_get_font()
  { raw, }
}

///|
/// Returns the current font size in pixels.
pub fn font_size() -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_font_size()
}

///|
pub fn Io::set_app_accepting_events(self : Io, accepting : Bool) -> Unit {
  @bindings.im_gui_io_set_app_accepting_events(self.raw, accepting)
}

///|
pub fn Io::add_focus_event(self : Io, focused : Bool) -> Unit {
  @bindings.im_gui_io_add_focus_event(self.raw, focused)
}

///|
pub fn Style::colors_dark(self : Style) -> Unit {
  @bindings.im_gui_style_colors_dark(self.raw)
}

///|
pub fn Style::colors_light(self : Style) -> Unit {
  @bindings.im_gui_style_colors_light(self.raw)
}

///|
pub fn Style::colors_classic(self : Style) -> Unit {
  @bindings.im_gui_style_colors_classic(self.raw)
}

///|
pub fn Style::scale_all_sizes(self : Style, scale : Float) -> Unit {
  @bindings.im_gui_style_scale_all_sizes(self.raw, scale)
}

///|
pub fn Font::is_null(self : Font) -> Bool {
  self.raw.is_null()
}

///|
/// Returns a root UI builder.
pub fn ui() -> Ui {
  Ui::{  }
}

///|
/// Opens the main menu bar and closes it automatically.
pub fn Ui::main_menu_bar(
  _self : Ui,
  body : (MenuBarUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_main_menu_bar()
  if active {
    defer @bindings.im_gui_end_main_menu_bar()
    body(MenuBarUi::{  })
  }
}

///|
/// Opens a window, runs `body` when visible, and always closes the ImGui scope.
pub fn Ui::window(
  _self : Ui,
  title : String,
  flags? : Array[WindowFlag] = [],
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin(
    utf8(title),
    None,
    window_flag_bits(flags),
  )
  defer @bindings.im_gui_end()
  if active {
    body(WindowUi::{  })
  }
}

///|
/// Emits text inside a window.
pub fn WindowUi::text(
  _self : WindowUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
/// Emits disabled text inside a window.
pub fn WindowUi::text_disabled(
  _self : WindowUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_disabled_unformatted(utf8(value))
}

///|
/// Emits wrapped text inside a window.
pub fn WindowUi::text_wrapped(
  _self : WindowUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_wrapped_unformatted(utf8(value))
}

///|
/// Emits a label/value pair inside a window.
pub fn WindowUi::label_text(
  _self : WindowUi,
  label : String,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_label_text_unformatted(utf8(label), utf8(value))
}

///|
/// Emits a bullet marker.
pub fn WindowUi::bullet(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_bullet()
}

///|
/// Emits bullet text.
pub fn WindowUi::bullet_text(
  _self : WindowUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_bullet_text_unformatted(utf8(value))
}

///|
/// Emits a separator with text.
pub fn WindowUi::separator_text(
  _self : WindowUi,
  label : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_separator_text(utf8(label))
}

///|
/// Runs `body` when the button is activated.
pub fn WindowUi::button(
  _self : WindowUi,
  label : String,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_button(utf8(label)) {
    body()
  }
}

///|
/// Runs `body` when the small button is activated.
pub fn WindowUi::small_button(
  _self : WindowUi,
  label : String,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_small_button(utf8(label)) {
    body()
  }
}

///|
/// Runs `body` when an arrow button is activated.
pub fn WindowUi::arrow_button(
  _self : WindowUi,
  label : String,
  direction : Dir,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_arrow_button(utf8(label), direction.value()) {
    body()
  }
}

///|
/// Emits a clickable text link and runs `body` when activated.
pub fn WindowUi::text_link(
  _self : WindowUi,
  label : String,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_text_link(utf8(label)) {
    body()
  }
}

///|
/// Emits a clickable URL text link using the label as URL.
pub fn WindowUi::text_link_open_url(
  _self : WindowUi,
  label : String,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_link_open_url(utf8(label))
}

///|
/// Runs `body` with the updated checked value when the checkbox changes.
pub fn WindowUi::checkbox(
  _self : WindowUi,
  label : String,
  checked : Bool,
  body : (Bool) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = Ref(checked)
  if @bindings.im_gui_checkbox(utf8(label), Some(value)) {
    body(value.val)
  }
}

///|
/// Runs `body` with the updated integer flags when a flag checkbox changes.
pub fn WindowUi::checkbox_flags_int(
  _self : WindowUi,
  label : String,
  flags : Int,
  flag_value : Int,
  body : (Int) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(flags)
  if @bindings.im_gui_checkbox_flags_int_ptr(
      utf8(label),
      Some(current),
      flag_value,
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated unsigned flags when a flag checkbox changes.
pub fn WindowUi::checkbox_flags_uint(
  _self : WindowUi,
  label : String,
  flags : UInt,
  flag_value : UInt,
  body : (UInt) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(flags)
  if @bindings.im_gui_checkbox_flags_uint_ptr(
      utf8(label),
      Some(current),
      flag_value,
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` when the radio button is selected.
pub fn WindowUi::radio_button(
  _self : WindowUi,
  label : String,
  active : Bool,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_radio_button(utf8(label), active) {
    body()
  }
}

///|
/// Runs `body` with the updated integer value when the radio button changes.
pub fn WindowUi::radio_int(
  _self : WindowUi,
  label : String,
  value : Int,
  button_value : Int,
  body : (Int) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_radio_button_int_ptr(
      utf8(label),
      Some(current),
      button_value,
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated value when the slider changes.
pub fn WindowUi::slider_float(
  _self : WindowUi,
  label : String,
  value : Float,
  min : Float,
  max : Float,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (Float) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_slider_float_ex(
      utf8(label),
      Some(current),
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated integer value when the slider changes.
pub fn WindowUi::slider_int(
  _self : WindowUi,
  label : String,
  value : Int,
  min : Int,
  max : Int,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (Int) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_slider_int_ex(
      utf8(label),
      Some(current),
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated angle in radians when the slider changes.
pub fn WindowUi::slider_angle(
  _self : WindowUi,
  label : String,
  value : Float,
  min_degrees? : Float = -360.0,
  max_degrees? : Float = 360.0,
  format? : String = "%.0f deg",
  flags? : Array[SliderFlag] = [],
  body : (Float) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_slider_angle_ex(
      utf8(label),
      Some(current),
      min_degrees,
      max_degrees,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated two-component float value.
pub fn WindowUi::slider_float2(
  _self : WindowUi,
  label : String,
  value : Float2,
  min : Float,
  max : Float,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (Float2) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y])
  if @bindings.im_gui_slider_float2_ex(
      utf8(label),
      current,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Float2::new(current[0], current[1]))
  }
}

///|
/// Runs `body` with the updated three-component float value.
pub fn WindowUi::slider_float3(
  _self : WindowUi,
  label : String,
  value : Float3,
  min : Float,
  max : Float,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (Float3) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z])
  if @bindings.im_gui_slider_float3_ex(
      utf8(label),
      current,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Float3::new(current[0], current[1], current[2]))
  }
}

///|
/// Runs `body` with the updated four-component float value.
pub fn WindowUi::slider_float4(
  _self : WindowUi,
  label : String,
  value : Float4,
  min : Float,
  max : Float,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (Float4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z, value.w])
  if @bindings.im_gui_slider_float4_ex(
      utf8(label),
      current,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Float4::new(current[0], current[1], current[2], current[3]))
  }
}

///|
/// Runs `body` with the updated two-component integer value.
pub fn WindowUi::slider_int2(
  _self : WindowUi,
  label : String,
  value : Int2,
  min : Int,
  max : Int,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (Int2) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y])
  if @bindings.im_gui_slider_int2_ex(
      utf8(label),
      current,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Int2::new(current[0], current[1]))
  }
}

///|
/// Runs `body` with the updated three-component integer value.
pub fn WindowUi::slider_int3(
  _self : WindowUi,
  label : String,
  value : Int3,
  min : Int,
  max : Int,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (Int3) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z])
  if @bindings.im_gui_slider_int3_ex(
      utf8(label),
      current,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Int3::new(current[0], current[1], current[2]))
  }
}

///|
/// Runs `body` with the updated four-component integer value.
pub fn WindowUi::slider_int4(
  _self : WindowUi,
  label : String,
  value : Int4,
  min : Int,
  max : Int,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (Int4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z, value.w])
  if @bindings.im_gui_slider_int4_ex(
      utf8(label),
      current,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Int4::new(current[0], current[1], current[2], current[3]))
  }
}

///|
/// Runs `body` with the updated value when the drag control changes.
pub fn WindowUi::drag_float(
  _self : WindowUi,
  label : String,
  value : Float,
  speed? : Float = 1.0,
  min? : Float = 0.0,
  max? : Float = 0.0,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (Float) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_drag_float_ex(
      utf8(label),
      Some(current),
      speed,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated integer value when the drag control changes.
pub fn WindowUi::drag_int(
  _self : WindowUi,
  label : String,
  value : Int,
  speed? : Float = 1.0,
  min? : Int = 0,
  max? : Int = 0,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (Int) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_drag_int_ex(
      utf8(label),
      Some(current),
      speed,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated two-component float value.
pub fn WindowUi::drag_float2(
  _self : WindowUi,
  label : String,
  value : Float2,
  speed? : Float = 1.0,
  min? : Float = 0.0,
  max? : Float = 0.0,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (Float2) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y])
  if @bindings.im_gui_drag_float2_ex(
      utf8(label),
      current,
      speed,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Float2::new(current[0], current[1]))
  }
}

///|
/// Runs `body` with the updated three-component float value.
pub fn WindowUi::drag_float3(
  _self : WindowUi,
  label : String,
  value : Float3,
  speed? : Float = 1.0,
  min? : Float = 0.0,
  max? : Float = 0.0,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (Float3) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z])
  if @bindings.im_gui_drag_float3_ex(
      utf8(label),
      current,
      speed,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Float3::new(current[0], current[1], current[2]))
  }
}

///|
/// Runs `body` with the updated four-component float value.
pub fn WindowUi::drag_float4(
  _self : WindowUi,
  label : String,
  value : Float4,
  speed? : Float = 1.0,
  min? : Float = 0.0,
  max? : Float = 0.0,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (Float4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z, value.w])
  if @bindings.im_gui_drag_float4_ex(
      utf8(label),
      current,
      speed,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Float4::new(current[0], current[1], current[2], current[3]))
  }
}

///|
/// Runs `body` with the updated two-component integer value.
pub fn WindowUi::drag_int2(
  _self : WindowUi,
  label : String,
  value : Int2,
  speed? : Float = 1.0,
  min? : Int = 0,
  max? : Int = 0,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (Int2) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y])
  if @bindings.im_gui_drag_int2_ex(
      utf8(label),
      current,
      speed,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Int2::new(current[0], current[1]))
  }
}

///|
/// Runs `body` with the updated three-component integer value.
pub fn WindowUi::drag_int3(
  _self : WindowUi,
  label : String,
  value : Int3,
  speed? : Float = 1.0,
  min? : Int = 0,
  max? : Int = 0,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (Int3) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z])
  if @bindings.im_gui_drag_int3_ex(
      utf8(label),
      current,
      speed,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Int3::new(current[0], current[1], current[2]))
  }
}

///|
/// Runs `body` with the updated four-component integer value.
pub fn WindowUi::drag_int4(
  _self : WindowUi,
  label : String,
  value : Int4,
  speed? : Float = 1.0,
  min? : Int = 0,
  max? : Int = 0,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (Int4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z, value.w])
  if @bindings.im_gui_drag_int4_ex(
      utf8(label),
      current,
      speed,
      min,
      max,
      utf8(format),
      slider_flag_bits(flags),
    ) {
    body(Int4::new(current[0], current[1], current[2], current[3]))
  }
}

///|
/// Runs `body` with the updated float range.
pub fn WindowUi::drag_float_range2(
  _self : WindowUi,
  label : String,
  value : FloatRange,
  speed? : Float = 1.0,
  min? : Float = 0.0,
  max? : Float = 0.0,
  format? : String = "%.3f",
  flags? : Array[SliderFlag] = [],
  body : (FloatRange) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current_min = Ref(value.min)
  let current_max = Ref(value.max)
  if @bindings.im_gui_drag_float_range2_ex(
      utf8(label),
      Some(current_min),
      Some(current_max),
      speed,
      min,
      max,
      utf8(format),
      None,
      slider_flag_bits(flags),
    ) {
    body(FloatRange::new(current_min.val, current_max.val))
  }
}

///|
/// Runs `body` with the updated integer range.
pub fn WindowUi::drag_int_range2(
  _self : WindowUi,
  label : String,
  value : IntRange,
  speed? : Float = 1.0,
  min? : Int = 0,
  max? : Int = 0,
  format? : String = "%d",
  flags? : Array[SliderFlag] = [],
  body : (IntRange) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current_min = Ref(value.min)
  let current_max = Ref(value.max)
  if @bindings.im_gui_drag_int_range2_ex(
      utf8(label),
      Some(current_min),
      Some(current_max),
      speed,
      min,
      max,
      utf8(format),
      None,
      slider_flag_bits(flags),
    ) {
    body(IntRange::new(current_min.val, current_max.val))
  }
}

///|
/// Runs `body` with the updated value when the float input changes.
pub fn WindowUi::input_float(
  _self : WindowUi,
  label : String,
  value : Float,
  step? : Float = 0.0,
  step_fast? : Float = 0.0,
  format? : String = "%.3f",
  flags? : Array[InputTextFlag] = [],
  body : (Float) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_input_float_ex(
      utf8(label),
      Some(current),
      step,
      step_fast,
      utf8(format),
      input_text_flag_bits(flags),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated value when the integer input changes.
pub fn WindowUi::input_int(
  _self : WindowUi,
  label : String,
  value : Int,
  step? : Int = 1,
  step_fast? : Int = 100,
  flags? : Array[InputTextFlag] = [],
  body : (Int) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_input_int_ex(
      utf8(label),
      Some(current),
      step,
      step_fast,
      input_text_flag_bits(flags),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated value when the double input changes.
pub fn WindowUi::input_double(
  _self : WindowUi,
  label : String,
  value : Double,
  step? : Double = 0.0,
  step_fast? : Double = 0.0,
  format? : String = "%.6f",
  flags? : Array[InputTextFlag] = [],
  body : (Double) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_input_double_ex(
      utf8(label),
      Some(current),
      step,
      step_fast,
      utf8(format),
      input_text_flag_bits(flags),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated two-component float input.
pub fn WindowUi::input_float2(
  _self : WindowUi,
  label : String,
  value : Float2,
  format? : String = "%.3f",
  flags? : Array[InputTextFlag] = [],
  body : (Float2) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y])
  if @bindings.im_gui_input_float2_ex(
      utf8(label),
      current,
      utf8(format),
      input_text_flag_bits(flags),
    ) {
    body(Float2::new(current[0], current[1]))
  }
}

///|
/// Runs `body` with the updated three-component float input.
pub fn WindowUi::input_float3(
  _self : WindowUi,
  label : String,
  value : Float3,
  format? : String = "%.3f",
  flags? : Array[InputTextFlag] = [],
  body : (Float3) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z])
  if @bindings.im_gui_input_float3_ex(
      utf8(label),
      current,
      utf8(format),
      input_text_flag_bits(flags),
    ) {
    body(Float3::new(current[0], current[1], current[2]))
  }
}

///|
/// Runs `body` with the updated four-component float input.
pub fn WindowUi::input_float4(
  _self : WindowUi,
  label : String,
  value : Float4,
  format? : String = "%.3f",
  flags? : Array[InputTextFlag] = [],
  body : (Float4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z, value.w])
  if @bindings.im_gui_input_float4_ex(
      utf8(label),
      current,
      utf8(format),
      input_text_flag_bits(flags),
    ) {
    body(Float4::new(current[0], current[1], current[2], current[3]))
  }
}

///|
/// Runs `body` with the updated two-component integer input.
pub fn WindowUi::input_int2(
  _self : WindowUi,
  label : String,
  value : Int2,
  flags? : Array[InputTextFlag] = [],
  body : (Int2) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y])
  if @bindings.im_gui_input_int2(
      utf8(label),
      current,
      input_text_flag_bits(flags),
    ) {
    body(Int2::new(current[0], current[1]))
  }
}

///|
/// Runs `body` with the updated three-component integer input.
pub fn WindowUi::input_int3(
  _self : WindowUi,
  label : String,
  value : Int3,
  flags? : Array[InputTextFlag] = [],
  body : (Int3) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z])
  if @bindings.im_gui_input_int3(
      utf8(label),
      current,
      input_text_flag_bits(flags),
    ) {
    body(Int3::new(current[0], current[1], current[2]))
  }
}

///|
/// Runs `body` with the updated four-component integer input.
pub fn WindowUi::input_int4(
  _self : WindowUi,
  label : String,
  value : Int4,
  flags? : Array[InputTextFlag] = [],
  body : (Int4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = FixedArray::from_array([value.x, value.y, value.z, value.w])
  if @bindings.im_gui_input_int4(
      utf8(label),
      current,
      input_text_flag_bits(flags),
    ) {
    body(Int4::new(current[0], current[1], current[2], current[3]))
  }
}

///|
/// Runs `body` with the updated UTF-8 text when the input changes.
pub fn WindowUi::input_text(
  _self : WindowUi,
  label : String,
  buffer : Bytes,
  flags? : Array[InputTextFlag] = [],
  body : (String) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_input_text(
      utf8(label),
      buffer,
      buffer.length(),
      input_text_flag_bits(flags),
    ) {
    body(bytes_to_string(buffer))
  }
}

///|
/// Runs `body` with the updated UTF-8 text when the input changes.
pub fn WindowUi::input_text_with_hint(
  _self : WindowUi,
  label : String,
  hint : String,
  buffer : Bytes,
  flags? : Array[InputTextFlag] = [],
  body : (String) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_input_text_with_hint(
      utf8(label),
      utf8(hint),
      buffer,
      buffer.length(),
      input_text_flag_bits(flags),
    ) {
    body(bytes_to_string(buffer))
  }
}

///|
/// Runs `body` with the updated UTF-8 text when the multiline input changes.
pub fn WindowUi::input_text_multiline(
  _self : WindowUi,
  label : String,
  buffer : Bytes,
  body : (String) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_input_text_multiline(utf8(label), buffer, buffer.length()) {
    body(bytes_to_string(buffer))
  }
}

///|
/// Runs `body` with the updated RGB color.
pub fn WindowUi::color_edit3(
  _self : WindowUi,
  label : String,
  color : Vec4,
  flags? : Array[ColorEditFlag] = [],
  body : (Vec4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = FixedArray::from_array([color.x, color.y, color.z])
  if @bindings.im_gui_color_edit3(
      utf8(label),
      value,
      color_edit_flag_bits(flags),
    ) {
    body(Vec4::rgba(value[0], value[1], value[2], color.w))
  }
}

///|
/// Runs `body` with the updated RGBA color.
pub fn WindowUi::color_edit4(
  _self : WindowUi,
  label : String,
  color : Vec4,
  flags? : Array[ColorEditFlag] = [],
  body : (Vec4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = FixedArray::from_array([color.x, color.y, color.z, color.w])
  if @bindings.im_gui_color_edit4(
      utf8(label),
      value,
      color_edit_flag_bits(flags),
    ) {
    body(Vec4::rgba(value[0], value[1], value[2], value[3]))
  }
}

///|
/// Runs `body` with the updated RGB color from a color picker.
pub fn WindowUi::color_picker3(
  _self : WindowUi,
  label : String,
  color : Vec4,
  flags? : Array[ColorEditFlag] = [],
  body : (Vec4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = FixedArray::from_array([color.x, color.y, color.z])
  if @bindings.im_gui_color_picker3(
      utf8(label),
      value,
      color_edit_flag_bits(flags),
    ) {
    body(Vec4::rgba(value[0], value[1], value[2], color.w))
  }
}

///|
/// Runs `body` with the updated RGBA color from a color picker.
pub fn WindowUi::color_picker4(
  _self : WindowUi,
  label : String,
  color : Vec4,
  flags? : Array[ColorEditFlag] = [],
  body : (Vec4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = FixedArray::from_array([color.x, color.y, color.z, color.w])
  if @bindings.im_gui_color_picker4(
      utf8(label),
      value,
      color_edit_flag_bits(flags),
      None,
    ) {
    body(Vec4::rgba(value[0], value[1], value[2], value[3]))
  }
}

///|
/// Keeps the next window item on the same line.
pub fn WindowUi::same_line(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_same_line()
}

///|
/// Keeps the next window item on the same line with explicit spacing.
pub fn WindowUi::same_line_ex(
  _self : WindowUi,
  offset_from_start_x : Float,
  spacing : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_same_line_ex(offset_from_start_x, spacing)
}

///|
pub fn WindowUi::new_line(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_new_line()
}

///|
pub fn WindowUi::spacing(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_spacing()
}

///|
pub fn WindowUi::indent(
  _self : WindowUi,
  width? : Float = 0.0,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_indent_ex(width)
}

///|
pub fn WindowUi::unindent(
  _self : WindowUi,
  width? : Float = 0.0,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_unindent_ex(width)
}

///|
pub fn WindowUi::align_text_to_frame_padding(
  _self : WindowUi,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_align_text_to_frame_padding()
}

///|
pub fn WindowUi::text_line_height(_self : WindowUi) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_text_line_height()
}

///|
pub fn WindowUi::text_line_height_with_spacing(
  _self : WindowUi,
) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_text_line_height_with_spacing()
}

///|
pub fn WindowUi::frame_height(_self : WindowUi) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_frame_height()
}

///|
pub fn WindowUi::frame_height_with_spacing(
  _self : WindowUi,
) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_frame_height_with_spacing()
}

///|
pub fn WindowUi::calc_item_width(_self : WindowUi) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_calc_item_width()
}

///|
pub fn WindowUi::cursor_pos_x(_self : WindowUi) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_cursor_pos_x()
}

///|
pub fn WindowUi::cursor_pos_y(_self : WindowUi) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_cursor_pos_y()
}

///|
pub fn WindowUi::set_cursor_pos_x(
  _self : WindowUi,
  value : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_cursor_pos_x(value)
}

///|
pub fn WindowUi::set_cursor_pos_y(
  _self : WindowUi,
  value : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_cursor_pos_y(value)
}

///|
pub fn WindowUi::set_next_item_width(
  _self : WindowUi,
  width : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_next_item_width(width)
}

///|
pub fn WindowUi::set_next_item_open(
  _self : WindowUi,
  open : Bool,
  cond? : Cond = Cond::none(),
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_next_item_open(open, cond.value())
}

///|
pub fn WindowUi::set_next_item_allow_overlap(
  _self : WindowUi,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_next_item_allow_overlap()
}

///|
pub fn WindowUi::set_next_item_storage_id(
  _self : WindowUi,
  id : UInt,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_next_item_storage_id(id)
}

///|
pub fn WindowUi::set_next_item_selection_user_data(
  _self : WindowUi,
  value : Int64,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_next_item_selection_user_data(value)
}

///|
/// Sets keyboard focus to the next item.
pub fn WindowUi::set_keyboard_focus_here(
  _self : WindowUi,
  offset? : Int = 0,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_keyboard_focus_here_ex(offset)
}

///|
/// Sets default focus to the last item.
pub fn WindowUi::set_item_default_focus(
  _self : WindowUi,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_item_default_focus()
}

///|
pub fn WindowUi::set_nav_cursor_visible(
  _self : WindowUi,
  visible : Bool,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_nav_cursor_visible(visible)
}

///|
/// Returns state for the last submitted item.
pub fn WindowUi::item_state(_self : WindowUi) -> ItemState raise ImGuiError {
  ensure_current_context()
  {
    active: @bindings.im_gui_is_item_active(),
    hovered: @bindings.im_gui_is_item_hovered(0),
    focused: @bindings.im_gui_is_item_focused(),
    clicked: @bindings.im_gui_is_item_clicked(),
    edited: @bindings.im_gui_is_item_edited(),
    activated: @bindings.im_gui_is_item_activated(),
    deactivated: @bindings.im_gui_is_item_deactivated(),
    deactivated_after_edit: @bindings.im_gui_is_item_deactivated_after_edit(),
    toggled_open: @bindings.im_gui_is_item_toggled_open(),
    visible: @bindings.im_gui_is_item_visible(),
  }
}

///|
/// Returns aggregate state for submitted items in the current frame.
pub fn WindowUi::any_item_state(
  _self : WindowUi,
) -> AnyItemState raise ImGuiError {
  ensure_current_context()
  {
    active: @bindings.im_gui_is_any_item_active(),
    hovered: @bindings.im_gui_is_any_item_hovered(),
    focused: @bindings.im_gui_is_any_item_focused(),
  }
}

///|
/// Returns state for the current window.
pub fn WindowUi::window_state(_self : WindowUi) -> WindowState raise ImGuiError {
  ensure_current_context()
  {
    appearing: @bindings.im_gui_is_window_appearing(),
    collapsed: @bindings.im_gui_is_window_collapsed(),
    focused: @bindings.im_gui_is_window_focused(0),
    hovered: @bindings.im_gui_is_window_hovered(0),
  }
}

///|
pub fn WindowUi::window_width(_self : WindowUi) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_window_width()
}

///|
pub fn WindowUi::window_height(_self : WindowUi) -> Float raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_window_height()
}

///|
pub fn WindowUi::is_window_focused(
  _self : WindowUi,
  flags? : Array[FocusedFlag] = [],
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_is_window_focused(focused_flag_bits(flags))
}

///|
pub fn WindowUi::is_window_hovered(
  _self : WindowUi,
  flags? : Array[HoveredFlag] = [],
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_is_window_hovered(hovered_flag_bits(flags))
}

///|
/// Sets the current window collapsed state.
pub fn WindowUi::set_window_collapsed(
  _self : WindowUi,
  collapsed : Bool,
  cond? : Cond = Cond::none(),
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_window_collapsed(collapsed, cond.value())
}

///|
/// Focuses the current window.
pub fn WindowUi::set_window_focus(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_window_focus()
}

///|
pub fn WindowUi::set_window_focus_by_name(
  _self : WindowUi,
  name : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_window_focus_str(utf8(name))
}

///|
pub fn WindowUi::set_window_font_scale(
  _self : WindowUi,
  scale : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_window_font_scale(scale)
}

///|
/// Returns scroll state for the current window.
pub fn WindowUi::scroll_state(_self : WindowUi) -> ScrollState raise ImGuiError {
  ensure_current_context()
  {
    x: @bindings.im_gui_get_scroll_x(),
    y: @bindings.im_gui_get_scroll_y(),
    max_x: @bindings.im_gui_get_scroll_max_x(),
    max_y: @bindings.im_gui_get_scroll_max_y(),
  }
}

///|
pub fn WindowUi::set_scroll_x(
  _self : WindowUi,
  value : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_scroll_x(value)
}

///|
pub fn WindowUi::set_scroll_y(
  _self : WindowUi,
  value : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_scroll_y(value)
}

///|
pub fn WindowUi::set_scroll_here_x(
  _self : WindowUi,
  center_x_ratio? : Float = 0.5,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_scroll_here_x(center_x_ratio)
}

///|
pub fn WindowUi::set_scroll_here_y(
  _self : WindowUi,
  center_y_ratio? : Float = 0.5,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_scroll_here_y(center_y_ratio)
}

///|
pub fn WindowUi::with_item_width(
  _self : WindowUi,
  width : Float,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_push_item_width(width)
  defer @bindings.im_gui_pop_item_width()
  body(WindowUi::{  })
}

///|
pub fn WindowUi::with_text_wrap_pos(
  _self : WindowUi,
  wrap_pos_x : Float,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_push_text_wrap_pos(wrap_pos_x)
  defer @bindings.im_gui_pop_text_wrap_pos()
  body(WindowUi::{  })
}

///|
/// Adds a separator inside a window.
pub fn WindowUi::separator(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_separator()
}

///|
/// Temporarily pushes an integer-packed style color.
pub fn WindowUi::with_style_color_u32(
  _self : WindowUi,
  color_id : ColorId,
  color : UInt,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_push_style_color(color_id.value(), color)
  defer @bindings.im_gui_pop_style_color()
  body(WindowUi::{  })
}

///|
/// Temporarily pushes a float style variable.
pub fn WindowUi::with_style_var_float(
  _self : WindowUi,
  style_var : StyleVar,
  value : Float,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_push_style_var(style_var.value(), value)
  defer @bindings.im_gui_pop_style_var()
  body(WindowUi::{  })
}

///|
/// Sets global color editor options.
pub fn WindowUi::set_color_edit_options(
  _self : WindowUi,
  flags : Array[ColorEditFlag],
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_color_edit_options(color_edit_flag_bits(flags))
}

///|
/// Temporarily pushes a font.
pub fn WindowUi::with_font(
  _self : WindowUi,
  font : Font,
  size? : Float = 0.0,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if size > 0.0 {
    @bindings.im_gui_push_font_float(font.raw, size)
  } else {
    @bindings.im_gui_push_font(font.raw)
  }
  defer @bindings.im_gui_pop_font()
  body(WindowUi::{  })
}

///|
/// Opens a menu bar and closes it automatically.
pub fn WindowUi::menu_bar(
  _self : WindowUi,
  body : (MenuBarUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_menu_bar()
  if active {
    defer @bindings.im_gui_end_menu_bar()
    body(MenuBarUi::{  })
  }
}

///|
/// Opens a tab bar and closes it automatically.
pub fn WindowUi::tab_bar(
  _self : WindowUi,
  name : String,
  flags? : Array[TabBarFlag] = [],
  body : (TabBarUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_tab_bar(
    utf8(name),
    tab_bar_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_tab_bar()
    body(TabBarUi::{  })
  }
}

///|
/// Opens a table and closes it automatically.
pub fn WindowUi::table(
  _self : WindowUi,
  name : String,
  columns : Int,
  flags? : Array[TableFlag] = [],
  body : (TableUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_table(
    utf8(name),
    columns,
    table_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_table()
    body(TableUi::{  })
  }
}

///|
/// Starts a group and closes it automatically.
pub fn WindowUi::group(
  _self : WindowUi,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_begin_group()
  defer @bindings.im_gui_end_group()
  body(WindowUi::{  })
}

///|
/// Opens an old columns layout and restores one column automatically.
pub fn WindowUi::columns(
  _self : WindowUi,
  count : Int,
  border? : Bool = true,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_columns_ex(count, None, border)
  defer @bindings.im_gui_columns()
  body(WindowUi::{  })
}

///|
/// Moves to the next old columns layout column.
pub fn WindowUi::next_column(_self : WindowUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_next_column()
}

///|
/// Returns state for an old columns layout column.
pub fn WindowUi::column_state(
  _self : WindowUi,
  column? : Int = -1,
) -> ColumnState raise ImGuiError {
  ensure_current_context()
  {
    index: @bindings.im_gui_get_column_index(),
    count: @bindings.im_gui_get_columns_count(),
    width: @bindings.im_gui_get_column_width(column),
    offset: @bindings.im_gui_get_column_offset(column),
  }
}

///|
/// Sets an old columns layout column width.
pub fn WindowUi::set_column_width(
  _self : WindowUi,
  column : Int,
  width : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_column_width(column, width)
}

///|
/// Sets an old columns layout column offset.
pub fn WindowUi::set_column_offset(
  _self : WindowUi,
  column : Int,
  offset : Float,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_column_offset(column, offset)
}

///|
/// Starts a disabled scope and closes it automatically.
pub fn WindowUi::disabled(
  _self : WindowUi,
  disabled? : Bool = true,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_begin_disabled(disabled)
  defer @bindings.im_gui_end_disabled()
  body(WindowUi::{  })
}

///|
/// Pushes an item flag and pops it automatically.
pub fn WindowUi::with_item_flag(
  _self : WindowUi,
  flag : ItemFlag,
  enabled : Bool,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_push_item_flag(flag.to_int(), enabled)
  defer @bindings.im_gui_pop_item_flag()
  body(WindowUi::{  })
}

///|
/// Pushes a string ID and pops it automatically.
pub fn WindowUi::with_id(
  _self : WindowUi,
  id : String,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_push_id(utf8(id))
  defer @bindings.im_gui_pop_id()
  body(WindowUi::{  })
}

///|
pub fn WindowUi::id(_self : WindowUi, value : String) -> UInt raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_id(utf8(value))
}

///|
pub fn WindowUi::id_int(_self : WindowUi, value : Int) -> UInt raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_id_int(value)
}

///|
/// Pushes an integer ID and pops it automatically.
pub fn WindowUi::with_id_int(
  _self : WindowUi,
  id : Int,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_push_id_int(id)
  defer @bindings.im_gui_pop_id()
  body(WindowUi::{  })
}

///|
/// Pushes button repeat behavior and pops it automatically.
pub fn WindowUi::button_repeat(
  _self : WindowUi,
  repeat : Bool,
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_push_button_repeat(repeat)
  defer @bindings.im_gui_pop_button_repeat()
  body(WindowUi::{  })
}

///|
/// Opens a popup by name.
pub fn WindowUi::open_popup(
  _self : WindowUi,
  name : String,
  flags? : Array[PopupFlag] = [],
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_open_popup(utf8(name), popup_flag_bits(flags))
}

///|
/// Opens a popup from the last item click.
pub fn WindowUi::open_popup_on_item_click(
  _self : WindowUi,
  flags? : Array[PopupFlag] = [PopupFlag::MouseButtonRight],
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_open_popup_on_item_click(None, popup_flag_bits(flags))
}

///|
/// Returns whether a named popup is open.
pub fn WindowUi::is_popup_open(
  _self : WindowUi,
  name : String,
  flags? : Array[PopupFlag] = [],
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_is_popup_open(utf8(name), popup_flag_bits(flags))
}

///|
/// Opens and closes a popup scope automatically when active.
pub fn WindowUi::popup(
  _self : WindowUi,
  name : String,
  flags? : Array[PopupFlag] = [],
  body : (PopupUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_popup(utf8(name), popup_flag_bits(flags))
  if active {
    defer @bindings.im_gui_end_popup()
    body(PopupUi::{  })
  }
}

///|
/// Opens and closes the last item's context popup automatically when active.
pub fn WindowUi::popup_context_item(
  _self : WindowUi,
  flags? : Array[PopupFlag] = [PopupFlag::MouseButtonRight],
  body : (PopupUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_popup_context_item_ex(
    None,
    popup_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_popup()
    body(PopupUi::{  })
  }
}

///|
/// Opens and closes the current window's context popup automatically when active.
pub fn WindowUi::popup_context_window(
  _self : WindowUi,
  flags? : Array[PopupFlag] = [PopupFlag::MouseButtonRight],
  body : (PopupUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_popup_context_window_ex(
    None,
    popup_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_popup()
    body(PopupUi::{  })
  }
}

///|
/// Opens and closes the void context popup automatically when active.
pub fn WindowUi::popup_context_void(
  _self : WindowUi,
  flags? : Array[PopupFlag] = [PopupFlag::MouseButtonRight],
  body : (PopupUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_popup_context_void_ex(
    None,
    popup_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_popup()
    body(PopupUi::{  })
  }
}

///|
/// Opens and closes a modal popup scope automatically when active.
pub fn WindowUi::popup_modal(
  _self : WindowUi,
  name : String,
  open : Bool,
  flags? : Array[WindowFlag] = [],
  body : (PopupUi) -> Unit raise ImGuiError,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let current = Ref(open)
  let active = @bindings.im_gui_begin_popup_modal(
    utf8(name),
    Some(current),
    window_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_popup()
    body(PopupUi::{  })
  }
  current.val
}

///|
/// Opens and closes a tooltip scope automatically when active.
pub fn WindowUi::tooltip(
  _self : WindowUi,
  body : (TooltipUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_tooltip()
  if active {
    defer @bindings.im_gui_end_tooltip()
    body(TooltipUi::{  })
  }
}

///|
/// Sets the current item tooltip.
pub fn WindowUi::set_tooltip(
  _self : WindowUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_tooltip_unformatted(utf8(value))
}

///|
/// Opens and closes the last item's tooltip scope automatically when active.
pub fn WindowUi::item_tooltip(
  _self : WindowUi,
  body : (TooltipUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_item_tooltip()
  if active {
    defer @bindings.im_gui_end_tooltip()
    body(TooltipUi::{  })
  }
}

///|
/// Sets the last item's tooltip.
pub fn WindowUi::set_item_tooltip(
  _self : WindowUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_item_tooltip_unformatted(utf8(value))
}

///|
/// Returns whether the last item is hovered.
pub fn WindowUi::is_item_hovered(
  _self : WindowUi,
  flags? : Array[HoveredFlag] = [],
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_is_item_hovered(hovered_flag_bits(flags))
}

///|
pub fn WindowUi::is_item_clicked(
  _self : WindowUi,
  button? : MouseButton = MouseButton::left(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_is_item_clicked_ex(button.value())
}

///|
pub fn WindowUi::item_id(_self : WindowUi) -> UInt raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_get_item_id()
}

///|
pub fn WindowUi::has_item_flag(
  _self : WindowUi,
  flag : ItemFlag,
) -> Bool raise ImGuiError {
  ensure_current_context()
  (@bindings.im_gui_get_item_flags() & flag.to_int()) != 0
}

///|
/// Opens and closes a combo popup automatically when active.
pub fn WindowUi::combo(
  _self : WindowUi,
  label : String,
  preview : String,
  flags? : Array[ComboFlag] = [],
  body : (ComboUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_combo(
    utf8(label),
    utf8(preview),
    combo_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_combo()
    body(ComboUi::{  })
  }
}

///|
/// Opens and closes a tree node automatically when active.
pub fn WindowUi::tree_node(
  _self : WindowUi,
  label : String,
  flags? : Array[TreeNodeFlag] = [],
  body : (TreeNodeUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_tree_node_ex(
    utf8(label),
    tree_node_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_tree_pop()
    body(TreeNodeUi::{  })
  }
}

///|
/// Runs `body` when a collapsing header is open.
pub fn WindowUi::collapsing_header(
  _self : WindowUi,
  label : String,
  flags? : Array[TreeNodeFlag] = [],
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_collapsing_header(utf8(label), tree_node_flag_bits(flags)) {
    body(WindowUi::{  })
  }
}

///|
/// Runs `body` when a closeable collapsing header is open and returns open state.
pub fn WindowUi::collapsing_header_open(
  _self : WindowUi,
  label : String,
  open : Bool,
  flags? : Array[TreeNodeFlag] = [],
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let current = Ref(open)
  if @bindings.im_gui_collapsing_header_bool_ptr(
      utf8(label),
      Some(current),
      tree_node_flag_bits(flags),
    ) {
    body(WindowUi::{  })
  }
  current.val
}

///|
/// Runs `body` when a selectable item is activated.
pub fn WindowUi::selectable(
  _self : WindowUi,
  label : String,
  selected? : Bool = false,
  flags? : Array[SelectableFlag] = [],
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(selected)
  if @bindings.im_gui_selectable_bool_ptr(
      utf8(label),
      Some(current),
      selectable_flag_bits(flags),
    ) {
    body()
  }
}

///|
/// Opens a menu from a menu bar and closes it automatically.
pub fn MenuBarUi::menu(
  _self : MenuBarUi,
  label : String,
  enabled? : Bool = true,
  body : (MenuUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_menu_ex(utf8(label), enabled)
  if active {
    defer @bindings.im_gui_end_menu()
    body(MenuUi::{  })
  }
}

///|
/// Runs `body` when a menu item is activated.
pub fn MenuBarUi::menu_item(
  _self : MenuBarUi,
  label : String,
  selected? : Bool = false,
  enabled? : Bool = true,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_menu_item_ex(utf8(label), None, selected, enabled) {
    body()
  }
}

///|
/// Runs `body` when a menu item is activated.
pub fn MenuUi::menu_item(
  _self : MenuUi,
  label : String,
  selected? : Bool = false,
  enabled? : Bool = true,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_menu_item_ex(utf8(label), None, selected, enabled) {
    body()
  }
}

///|
/// Opens a tab item and closes it automatically.
pub fn TabBarUi::tab_item(
  _self : TabBarUi,
  label : String,
  flags? : Array[TabItemFlag] = [],
  body : (TabItemUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_tab_item(
    utf8(label),
    None,
    tab_item_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_tab_item()
    body(TabItemUi::{  })
  }
}

///|
/// Opens a closeable tab item and returns the updated open state.
pub fn TabBarUi::tab_item_open(
  _self : TabBarUi,
  label : String,
  open : Bool,
  flags? : Array[TabItemFlag] = [],
  body : (TabItemUi) -> Unit raise ImGuiError,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let current = Ref(open)
  let active = @bindings.im_gui_begin_tab_item(
    utf8(label),
    Some(current),
    tab_item_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_tab_item()
    body(TabItemUi::{  })
  }
  current.val
}

///|
/// Emits text inside a tab item.
pub fn TabItemUi::text(
  _self : TabItemUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
/// Adds a separator inside a tab item.
pub fn TabItemUi::separator(_self : TabItemUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_separator()
}

///|
/// Opens a table inside a tab item and closes it automatically.
pub fn TabItemUi::table(
  _self : TabItemUi,
  name : String,
  columns : Int,
  flags? : Array[TableFlag] = [],
  body : (TableUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_table(
    utf8(name),
    columns,
    table_flag_bits(flags),
  )
  if active {
    defer @bindings.im_gui_end_table()
    body(TableUi::{  })
  }
}

///|
/// Defines a table column.
pub fn TableUi::setup_column(
  _self : TableUi,
  label : String,
  flags? : Array[TableColumnFlag] = [],
  init_width_or_weight? : Float = 0.0,
  user_id? : UInt = 0U,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_setup_column_ex(
    utf8(label),
    table_column_flag_bits(flags),
    init_width_or_weight,
    user_id,
  )
}

///|
/// Freezes columns and rows when scrolling.
pub fn TableUi::setup_scroll_freeze(
  _self : TableUi,
  columns : Int,
  rows : Int,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_setup_scroll_freeze(columns, rows)
}

///|
/// Emits a table headers row.
pub fn TableUi::headers_row(_self : TableUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_headers_row()
}

///|
/// Emits an angled table headers row.
pub fn TableUi::angled_headers_row(_self : TableUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_angled_headers_row()
}

///|
/// Emits a table header cell.
pub fn TableUi::header(
  _self : TableUi,
  label : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_header(utf8(label))
}

///|
/// Starts a new table row.
pub fn TableUi::next_row(
  _self : TableUi,
  flags? : Array[TableRowFlag] = [],
  min_height? : Float = 0.0,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_next_row_ex(table_row_flag_bits(flags), min_height)
}

///|
/// Moves to the next table column.
pub fn TableUi::next_column(_self : TableUi) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_next_column()
}

///|
/// Sets the current table column.
pub fn TableUi::set_column_index(
  _self : TableUi,
  column : Int,
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_set_column_index(column)
}

///|
/// Enables or disables a table column.
pub fn TableUi::set_column_enabled(
  _self : TableUi,
  column : Int,
  enabled : Bool,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_set_column_enabled(column, enabled)
}

///|
/// Sets a table background color.
pub fn TableUi::set_bg_color(
  _self : TableUi,
  target : TableBgTarget,
  color : UInt,
  column? : Int = -1,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_set_bg_color(target.value(), color, column)
}

///|
pub fn TableUi::column_count(_self : TableUi) -> Int raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_get_column_count()
}

///|
pub fn TableUi::column_index(_self : TableUi) -> Int raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_get_column_index()
}

///|
pub fn TableUi::row_index(_self : TableUi) -> Int raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_get_row_index()
}

///|
pub fn TableUi::column_has_flag(
  _self : TableUi,
  column : Int,
  flag : TableColumnFlag,
) -> Bool raise ImGuiError {
  ensure_current_context()
  (@bindings.im_gui_table_get_column_flags(column) & flag.to_int()) != 0
}

///|
pub fn TableUi::hovered_column(_self : TableUi) -> Int raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_get_hovered_column()
}

///|
/// Emits text inside a table.
pub fn TableUi::text(_self : TableUi, value : String) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
/// Adds a selectable item inside a table.
pub fn TableUi::selectable(
  _self : TableUi,
  label : String,
  selected? : Bool = false,
  flags? : Array[SelectableFlag] = [],
) -> Bool raise ImGuiError {
  ensure_current_context()
  let current = Ref(selected)
  @bindings.im_gui_selectable_bool_ptr(
    utf8(label),
    Some(current),
    selectable_flag_bits(flags),
  )
}

///|
pub fn PopupUi::text(_self : PopupUi, value : String) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
pub fn PopupUi::button(
  _self : PopupUi,
  label : String,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_button(utf8(label)) {
    body()
  }
}

///|
pub fn PopupUi::separator(_self : PopupUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_separator()
}

///|
pub fn PopupUi::close(_self : PopupUi) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_close_current_popup()
}

///|
pub fn TooltipUi::text(
  _self : TooltipUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
pub fn ComboUi::selectable(
  _self : ComboUi,
  label : String,
  selected? : Bool = false,
  flags? : Array[SelectableFlag] = [],
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(selected)
  if @bindings.im_gui_selectable_bool_ptr(
      utf8(label),
      Some(current),
      selectable_flag_bits(flags),
    ) {
    body()
  }
}

///|
pub fn TreeNodeUi::text(
  _self : TreeNodeUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_text_unformatted(utf8(value))
}

///|
pub fn TreeNodeUi::bullet_text(
  _self : TreeNodeUi,
  value : String,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_bullet_text_unformatted(utf8(value))
}

///|
fn ensure_current_context() -> Unit raise ImGuiError {
  guard has_current_context() else { raise NoCurrentContext }
}

///|
fn utf8(value : String) -> Bytes {
  @encoding/utf8.encode(value)
}

///|
fn bytes_to_string(value : Bytes) -> String {
  let mut index = 0
  while index < value.length() && value[index] != b'\x00' {
    index = index + 1
  }
  @encoding/utf8.decode_lossy(value.view(end=index))
}
