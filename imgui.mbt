///|
/// Errors raised by the user-facing Dear ImGui wrapper.
pub(all) suberror ImGuiError {
  /// The operation requires a current context.
  NoCurrentContext
} derive(Eq, Debug)

///|
/// Owned Dear ImGui context.
pub(all) struct Context {
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
/// ImGui window flags bitset.
pub(all) struct WindowFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui selectable flags bitset.
pub(all) struct SelectableFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui table flags bitset.
pub(all) struct TableFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui tab bar flags bitset.
pub(all) struct TabBarFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui tab item flags bitset.
pub(all) struct TabItemFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui popup flags bitset.
pub(all) struct PopupFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui tree node flags bitset.
pub(all) struct TreeNodeFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui combo flags bitset.
pub(all) struct ComboFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui input text flags bitset.
pub(all) struct InputTextFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui slider and drag flags bitset.
pub(all) struct SliderFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui color edit flags bitset.
pub(all) struct ColorEditFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui table column flags bitset.
pub(all) struct TableColumnFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui table row flags bitset.
pub(all) struct TableRowFlags {
  bits : Int
} derive(Eq, Debug)

///|
/// ImGui table background target.
pub(all) struct TableBgTarget {
  value : Int
} derive(Eq, Debug)

///|
/// ImGui style variable identifier.
pub(all) struct StyleVar {
  value : Int
} derive(Eq, Debug)

///|
/// ImGui style color identifier.
pub(all) struct ColorId {
  value : Int
} derive(Eq, Debug)

///|
/// ImGui condition value.
pub(all) struct Cond {
  value : Int
} derive(Eq, Debug)

///|
pub fn WindowFlags::none() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_none() }
}

///|
pub fn WindowFlags::no_title_bar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_title_bar() }
}

///|
pub fn WindowFlags::no_resize() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_resize() }
}

///|
pub fn WindowFlags::no_move() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_move() }
}

///|
pub fn WindowFlags::no_scrollbar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_scrollbar() }
}

///|
pub fn WindowFlags::menu_bar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_menu_bar() }
}

///|
pub fn WindowFlags::always_auto_resize() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_always_auto_resize() }
}

///|
pub fn WindowFlags::no_scroll_with_mouse() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_scroll_with_mouse() }
}

///|
pub fn WindowFlags::no_collapse() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_collapse() }
}

///|
pub fn WindowFlags::no_background() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_background() }
}

///|
pub fn WindowFlags::no_saved_settings() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_saved_settings() }
}

///|
pub fn WindowFlags::no_mouse_inputs() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_mouse_inputs() }
}

///|
pub fn WindowFlags::horizontal_scrollbar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_horizontal_scrollbar() }
}

///|
pub fn WindowFlags::no_focus_on_appearing() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_focus_on_appearing() }
}

///|
pub fn WindowFlags::no_bring_to_front_on_focus() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_bring_to_front_on_focus() }
}

///|
pub fn WindowFlags::always_vertical_scrollbar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_always_vertical_scrollbar() }
}

///|
pub fn WindowFlags::always_horizontal_scrollbar() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_always_horizontal_scrollbar() }
}

///|
pub fn WindowFlags::no_nav_inputs() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_nav_inputs() }
}

///|
pub fn WindowFlags::no_nav_focus() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_nav_focus() }
}

///|
pub fn WindowFlags::unsaved_document() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_unsaved_document() }
}

///|
pub fn WindowFlags::no_nav() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_nav() }
}

///|
pub fn WindowFlags::no_decoration() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_decoration() }
}

///|
pub fn WindowFlags::no_inputs() -> WindowFlags {
  { bits: @bindings.im_gui_window_flags_no_inputs() }
}

///|
pub fn WindowFlags::value(self : WindowFlags) -> Int {
  self.bits
}

///|
pub fn WindowFlags::combine(
  self : WindowFlags,
  other : WindowFlags,
) -> WindowFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn SelectableFlags::none() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_none() }
}

///|
pub fn SelectableFlags::no_auto_close_popups() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_no_auto_close_popups() }
}

///|
pub fn SelectableFlags::span_all_columns() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_span_all_columns() }
}

///|
pub fn SelectableFlags::allow_double_click() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_allow_double_click() }
}

///|
pub fn SelectableFlags::disabled() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_disabled() }
}

///|
pub fn SelectableFlags::allow_overlap() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_allow_overlap() }
}

///|
pub fn SelectableFlags::highlight() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_highlight() }
}

///|
pub fn SelectableFlags::select_on_nav() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_select_on_nav() }
}

///|
pub fn SelectableFlags::dont_close_popups() -> SelectableFlags {
  { bits: @bindings.im_gui_selectable_flags_dont_close_popups() }
}

///|
pub fn SelectableFlags::value(self : SelectableFlags) -> Int {
  self.bits
}

///|
pub fn SelectableFlags::combine(
  self : SelectableFlags,
  other : SelectableFlags,
) -> SelectableFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn TableFlags::none() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_none() }
}

///|
pub fn TableFlags::resizable() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_resizable() }
}

///|
pub fn TableFlags::reorderable() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_reorderable() }
}

///|
pub fn TableFlags::hideable() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_hideable() }
}

///|
pub fn TableFlags::sortable() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_sortable() }
}

///|
pub fn TableFlags::no_saved_settings() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_saved_settings() }
}

///|
pub fn TableFlags::context_menu_in_body() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_context_menu_in_body() }
}

///|
pub fn TableFlags::borders() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders() }
}

///|
pub fn TableFlags::row_bg() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_row_bg() }
}

///|
pub fn TableFlags::borders_inner_h() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders_inner_h() }
}

///|
pub fn TableFlags::borders_outer_h() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders_outer_h() }
}

///|
pub fn TableFlags::borders_inner_v() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders_inner_v() }
}

///|
pub fn TableFlags::borders_outer_v() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders_outer_v() }
}

///|
pub fn TableFlags::borders_h() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders_h() }
}

///|
pub fn TableFlags::borders_v() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders_v() }
}

///|
pub fn TableFlags::borders_inner() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders_inner() }
}

///|
pub fn TableFlags::borders_outer() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_borders_outer() }
}

///|
pub fn TableFlags::no_borders_in_body() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_borders_in_body() }
}

///|
pub fn TableFlags::no_borders_in_body_until_resize() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_borders_in_body_until_resize() }
}

///|
pub fn TableFlags::sizing_fixed_fit() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_sizing_fixed_fit() }
}

///|
pub fn TableFlags::sizing_fixed_same() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_sizing_fixed_same() }
}

///|
pub fn TableFlags::sizing_stretch_prop() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_sizing_stretch_prop() }
}

///|
pub fn TableFlags::sizing_stretch_same() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_sizing_stretch_same() }
}

///|
pub fn TableFlags::no_host_extend_x() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_host_extend_x() }
}

///|
pub fn TableFlags::no_host_extend_y() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_host_extend_y() }
}

///|
pub fn TableFlags::no_keep_columns_visible() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_keep_columns_visible() }
}

///|
pub fn TableFlags::precise_widths() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_precise_widths() }
}

///|
pub fn TableFlags::no_clip() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_clip() }
}

///|
pub fn TableFlags::pad_outer_x() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_pad_outer_x() }
}

///|
pub fn TableFlags::no_pad_outer_x() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_pad_outer_x() }
}

///|
pub fn TableFlags::no_pad_inner_x() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_no_pad_inner_x() }
}

///|
pub fn TableFlags::scroll_x() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_scroll_x() }
}

///|
pub fn TableFlags::scroll_y() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_scroll_y() }
}

///|
pub fn TableFlags::sort_multi() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_sort_multi() }
}

///|
pub fn TableFlags::sort_tristate() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_sort_tristate() }
}

///|
pub fn TableFlags::highlight_hovered_column() -> TableFlags {
  { bits: @bindings.im_gui_table_flags_highlight_hovered_column() }
}

///|
pub fn TableFlags::value(self : TableFlags) -> Int {
  self.bits
}

///|
pub fn TableFlags::combine(self : TableFlags, other : TableFlags) -> TableFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn TabBarFlags::none() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_none() }
}

///|
pub fn TabBarFlags::reorderable() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_reorderable() }
}

///|
pub fn TabBarFlags::auto_select_new_tabs() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_auto_select_new_tabs() }
}

///|
pub fn TabBarFlags::tab_list_popup_button() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_tab_list_popup_button() }
}

///|
pub fn TabBarFlags::no_close_with_middle_mouse_button() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_no_close_with_middle_mouse_button() }
}

///|
pub fn TabBarFlags::no_tab_list_scrolling_buttons() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_no_tab_list_scrolling_buttons() }
}

///|
pub fn TabBarFlags::no_tooltip() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_no_tooltip() }
}

///|
pub fn TabBarFlags::draw_selected_overline() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_draw_selected_overline() }
}

///|
pub fn TabBarFlags::fitting_policy_mixed() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_fitting_policy_mixed() }
}

///|
pub fn TabBarFlags::fitting_policy_shrink() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_fitting_policy_shrink() }
}

///|
pub fn TabBarFlags::fitting_policy_scroll() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_fitting_policy_scroll() }
}

///|
pub fn TabBarFlags::fitting_policy_resize_down() -> TabBarFlags {
  { bits: @bindings.im_gui_tab_bar_flags_fitting_policy_resize_down() }
}

///|
pub fn TabBarFlags::value(self : TabBarFlags) -> Int {
  self.bits
}

///|
pub fn TabBarFlags::combine(
  self : TabBarFlags,
  other : TabBarFlags,
) -> TabBarFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn TabItemFlags::none() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_none() }
}

///|
pub fn TabItemFlags::unsaved_document() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_unsaved_document() }
}

///|
pub fn TabItemFlags::set_selected() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_set_selected() }
}

///|
pub fn TabItemFlags::no_close_with_middle_mouse_button() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_no_close_with_middle_mouse_button() }
}

///|
pub fn TabItemFlags::no_push_id() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_no_push_id() }
}

///|
pub fn TabItemFlags::no_tooltip() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_no_tooltip() }
}

///|
pub fn TabItemFlags::no_reorder() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_no_reorder() }
}

///|
pub fn TabItemFlags::leading() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_leading() }
}

///|
pub fn TabItemFlags::trailing() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_trailing() }
}

///|
pub fn TabItemFlags::no_assumed_closure() -> TabItemFlags {
  { bits: @bindings.im_gui_tab_item_flags_no_assumed_closure() }
}

///|
pub fn TabItemFlags::value(self : TabItemFlags) -> Int {
  self.bits
}

///|
pub fn TabItemFlags::combine(
  self : TabItemFlags,
  other : TabItemFlags,
) -> TabItemFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn PopupFlags::none() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_none() }
}

///|
pub fn PopupFlags::mouse_button_left() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_mouse_button_left() }
}

///|
pub fn PopupFlags::mouse_button_right() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_mouse_button_right() }
}

///|
pub fn PopupFlags::mouse_button_middle() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_mouse_button_middle() }
}

///|
pub fn PopupFlags::no_reopen() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_no_reopen() }
}

///|
pub fn PopupFlags::no_open_over_existing_popup() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_no_open_over_existing_popup() }
}

///|
pub fn PopupFlags::no_open_over_items() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_no_open_over_items() }
}

///|
pub fn PopupFlags::any_popup_id() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_any_popup_id() }
}

///|
pub fn PopupFlags::any_popup_level() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_any_popup_level() }
}

///|
pub fn PopupFlags::any_popup() -> PopupFlags {
  { bits: @bindings.im_gui_popup_flags_any_popup() }
}

///|
pub fn PopupFlags::value(self : PopupFlags) -> Int {
  self.bits
}

///|
pub fn PopupFlags::combine(self : PopupFlags, other : PopupFlags) -> PopupFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn TreeNodeFlags::none() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_none() }
}

///|
pub fn TreeNodeFlags::selected() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_selected() }
}

///|
pub fn TreeNodeFlags::framed() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_framed() }
}

///|
pub fn TreeNodeFlags::allow_overlap() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_allow_overlap() }
}

///|
pub fn TreeNodeFlags::no_tree_push_on_open() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_no_tree_push_on_open() }
}

///|
pub fn TreeNodeFlags::no_auto_open_on_log() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_no_auto_open_on_log() }
}

///|
pub fn TreeNodeFlags::default_open() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_default_open() }
}

///|
pub fn TreeNodeFlags::open_on_double_click() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_open_on_double_click() }
}

///|
pub fn TreeNodeFlags::open_on_arrow() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_open_on_arrow() }
}

///|
pub fn TreeNodeFlags::leaf() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_leaf() }
}

///|
pub fn TreeNodeFlags::bullet() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_bullet() }
}

///|
pub fn TreeNodeFlags::frame_padding() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_frame_padding() }
}

///|
pub fn TreeNodeFlags::span_avail_width() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_span_avail_width() }
}

///|
pub fn TreeNodeFlags::span_full_width() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_span_full_width() }
}

///|
pub fn TreeNodeFlags::span_label_width() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_span_label_width() }
}

///|
pub fn TreeNodeFlags::span_all_columns() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_span_all_columns() }
}

///|
pub fn TreeNodeFlags::label_span_all_columns() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_label_span_all_columns() }
}

///|
pub fn TreeNodeFlags::nav_left_jumps_to_parent() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_nav_left_jumps_to_parent() }
}

///|
pub fn TreeNodeFlags::collapsing_header() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_collapsing_header() }
}

///|
pub fn TreeNodeFlags::draw_lines_none() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_draw_lines_none() }
}

///|
pub fn TreeNodeFlags::draw_lines_full() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_draw_lines_full() }
}

///|
pub fn TreeNodeFlags::draw_lines_to_nodes() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_draw_lines_to_nodes() }
}

///|
pub fn TreeNodeFlags::nav_left_jumps_back_here() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_nav_left_jumps_back_here() }
}

///|
pub fn TreeNodeFlags::span_text_width() -> TreeNodeFlags {
  { bits: @bindings.im_gui_tree_node_flags_span_text_width() }
}

///|
pub fn TreeNodeFlags::value(self : TreeNodeFlags) -> Int {
  self.bits
}

///|
pub fn TreeNodeFlags::combine(
  self : TreeNodeFlags,
  other : TreeNodeFlags,
) -> TreeNodeFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn ComboFlags::none() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_none() }
}

///|
pub fn ComboFlags::popup_align_left() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_popup_align_left() }
}

///|
pub fn ComboFlags::height_small() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_height_small() }
}

///|
pub fn ComboFlags::height_regular() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_height_regular() }
}

///|
pub fn ComboFlags::height_large() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_height_large() }
}

///|
pub fn ComboFlags::height_largest() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_height_largest() }
}

///|
pub fn ComboFlags::no_arrow_button() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_no_arrow_button() }
}

///|
pub fn ComboFlags::no_preview() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_no_preview() }
}

///|
pub fn ComboFlags::width_fit_preview() -> ComboFlags {
  { bits: @bindings.im_gui_combo_flags_width_fit_preview() }
}

///|
pub fn ComboFlags::value(self : ComboFlags) -> Int {
  self.bits
}

///|
pub fn ComboFlags::combine(self : ComboFlags, other : ComboFlags) -> ComboFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn InputTextFlags::none() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_none() }
}

///|
pub fn InputTextFlags::chars_decimal() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_chars_decimal() }
}

///|
pub fn InputTextFlags::chars_hexadecimal() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_chars_hexadecimal() }
}

///|
pub fn InputTextFlags::chars_uppercase() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_chars_uppercase() }
}

///|
pub fn InputTextFlags::chars_no_blank() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_chars_no_blank() }
}

///|
pub fn InputTextFlags::auto_select_all() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_auto_select_all() }
}

///|
pub fn InputTextFlags::enter_returns_true() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_enter_returns_true() }
}

///|
pub fn InputTextFlags::callback_completion() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_callback_completion() }
}

///|
pub fn InputTextFlags::callback_history() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_callback_history() }
}

///|
pub fn InputTextFlags::callback_always() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_callback_always() }
}

///|
pub fn InputTextFlags::callback_char_filter() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_callback_char_filter() }
}

///|
pub fn InputTextFlags::allow_tab_input() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_allow_tab_input() }
}

///|
pub fn InputTextFlags::ctrl_enter_for_new_line() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_ctrl_enter_for_new_line() }
}

///|
pub fn InputTextFlags::no_horizontal_scroll() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_no_horizontal_scroll() }
}

///|
pub fn InputTextFlags::always_overwrite() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_always_overwrite() }
}

///|
pub fn InputTextFlags::read_only() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_read_only() }
}

///|
pub fn InputTextFlags::password() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_password() }
}

///|
pub fn InputTextFlags::no_undo_redo() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_no_undo_redo() }
}

///|
pub fn InputTextFlags::chars_scientific() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_chars_scientific() }
}

///|
pub fn InputTextFlags::callback_resize() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_callback_resize() }
}

///|
pub fn InputTextFlags::callback_edit() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_callback_edit() }
}

///|
pub fn InputTextFlags::escape_clears_all() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_escape_clears_all() }
}

///|
pub fn InputTextFlags::display_empty_ref_val() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_display_empty_ref_val() }
}

///|
pub fn InputTextFlags::parse_empty_ref_val() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_parse_empty_ref_val() }
}

///|
pub fn InputTextFlags::elide_left() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_elide_left() }
}

///|
pub fn InputTextFlags::word_wrap() -> InputTextFlags {
  { bits: @bindings.im_gui_input_text_flags_word_wrap() }
}

///|
pub fn InputTextFlags::value(self : InputTextFlags) -> Int {
  self.bits
}

///|
pub fn InputTextFlags::combine(
  self : InputTextFlags,
  other : InputTextFlags,
) -> InputTextFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn SliderFlags::none() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_none() }
}

///|
pub fn SliderFlags::logarithmic() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_logarithmic() }
}

///|
pub fn SliderFlags::no_round_to_format() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_no_round_to_format() }
}

///|
pub fn SliderFlags::no_input() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_no_input() }
}

///|
pub fn SliderFlags::wrap_around() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_wrap_around() }
}

///|
pub fn SliderFlags::clamp_on_input() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_clamp_on_input() }
}

///|
pub fn SliderFlags::clamp_zero_range() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_clamp_zero_range() }
}

///|
pub fn SliderFlags::no_speed_tweaks() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_no_speed_tweaks() }
}

///|
pub fn SliderFlags::color_markers() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_color_markers() }
}

///|
pub fn SliderFlags::always_clamp() -> SliderFlags {
  { bits: @bindings.im_gui_slider_flags_always_clamp() }
}

///|
pub fn SliderFlags::value(self : SliderFlags) -> Int {
  self.bits
}

///|
pub fn SliderFlags::combine(
  self : SliderFlags,
  other : SliderFlags,
) -> SliderFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn ColorEditFlags::none() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_none() }
}

///|
pub fn ColorEditFlags::no_alpha() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_alpha() }
}

///|
pub fn ColorEditFlags::no_picker() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_picker() }
}

///|
pub fn ColorEditFlags::no_options() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_options() }
}

///|
pub fn ColorEditFlags::no_small_preview() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_small_preview() }
}

///|
pub fn ColorEditFlags::no_inputs() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_inputs() }
}

///|
pub fn ColorEditFlags::no_tooltip() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_tooltip() }
}

///|
pub fn ColorEditFlags::no_label() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_label() }
}

///|
pub fn ColorEditFlags::no_side_preview() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_side_preview() }
}

///|
pub fn ColorEditFlags::no_drag_drop() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_drag_drop() }
}

///|
pub fn ColorEditFlags::no_border() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_border() }
}

///|
pub fn ColorEditFlags::no_color_markers() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_no_color_markers() }
}

///|
pub fn ColorEditFlags::alpha_opaque() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_alpha_opaque() }
}

///|
pub fn ColorEditFlags::alpha_no_bg() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_alpha_no_bg() }
}

///|
pub fn ColorEditFlags::alpha_preview_half() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_alpha_preview_half() }
}

///|
pub fn ColorEditFlags::alpha_bar() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_alpha_bar() }
}

///|
pub fn ColorEditFlags::hdr() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_hdr() }
}

///|
pub fn ColorEditFlags::display_rgb() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_display_rgb() }
}

///|
pub fn ColorEditFlags::display_hsv() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_display_hsv() }
}

///|
pub fn ColorEditFlags::display_hex() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_display_hex() }
}

///|
pub fn ColorEditFlags::uint8() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_uint8() }
}

///|
pub fn ColorEditFlags::float() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_float() }
}

///|
pub fn ColorEditFlags::picker_hue_bar() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_picker_hue_bar() }
}

///|
pub fn ColorEditFlags::picker_hue_wheel() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_picker_hue_wheel() }
}

///|
pub fn ColorEditFlags::input_rgb() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_input_rgb() }
}

///|
pub fn ColorEditFlags::input_hsv() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_input_hsv() }
}

///|
pub fn ColorEditFlags::alpha_preview() -> ColorEditFlags {
  { bits: @bindings.im_gui_color_edit_flags_alpha_preview() }
}

///|
pub fn ColorEditFlags::value(self : ColorEditFlags) -> Int {
  self.bits
}

///|
pub fn ColorEditFlags::combine(
  self : ColorEditFlags,
  other : ColorEditFlags,
) -> ColorEditFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn TableColumnFlags::none() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_none() }
}

///|
pub fn TableColumnFlags::disabled() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_disabled() }
}

///|
pub fn TableColumnFlags::default_hide() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_default_hide() }
}

///|
pub fn TableColumnFlags::default_sort() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_default_sort() }
}

///|
pub fn TableColumnFlags::width_stretch() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_width_stretch() }
}

///|
pub fn TableColumnFlags::width_fixed() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_width_fixed() }
}

///|
pub fn TableColumnFlags::no_resize() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_resize() }
}

///|
pub fn TableColumnFlags::no_reorder() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_reorder() }
}

///|
pub fn TableColumnFlags::no_hide() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_hide() }
}

///|
pub fn TableColumnFlags::no_clip() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_clip() }
}

///|
pub fn TableColumnFlags::no_sort() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_sort() }
}

///|
pub fn TableColumnFlags::no_sort_ascending() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_sort_ascending() }
}

///|
pub fn TableColumnFlags::no_sort_descending() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_sort_descending() }
}

///|
pub fn TableColumnFlags::no_header_label() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_header_label() }
}

///|
pub fn TableColumnFlags::no_header_width() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_no_header_width() }
}

///|
pub fn TableColumnFlags::prefer_sort_ascending() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_prefer_sort_ascending() }
}

///|
pub fn TableColumnFlags::prefer_sort_descending() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_prefer_sort_descending() }
}

///|
pub fn TableColumnFlags::indent_enable() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_indent_enable() }
}

///|
pub fn TableColumnFlags::indent_disable() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_indent_disable() }
}

///|
pub fn TableColumnFlags::angled_header() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_angled_header() }
}

///|
pub fn TableColumnFlags::is_enabled() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_is_enabled() }
}

///|
pub fn TableColumnFlags::is_visible() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_is_visible() }
}

///|
pub fn TableColumnFlags::is_sorted() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_is_sorted() }
}

///|
pub fn TableColumnFlags::is_hovered() -> TableColumnFlags {
  { bits: @bindings.im_gui_table_column_flags_is_hovered() }
}

///|
pub fn TableColumnFlags::value(self : TableColumnFlags) -> Int {
  self.bits
}

///|
pub fn TableColumnFlags::combine(
  self : TableColumnFlags,
  other : TableColumnFlags,
) -> TableColumnFlags {
  { bits: self.value() | other.value() }
}

///|
pub fn TableRowFlags::none() -> TableRowFlags {
  { bits: @bindings.im_gui_table_row_flags_none() }
}

///|
pub fn TableRowFlags::headers() -> TableRowFlags {
  { bits: @bindings.im_gui_table_row_flags_headers() }
}

///|
pub fn TableRowFlags::value(self : TableRowFlags) -> Int {
  self.bits
}

///|
pub fn TableRowFlags::combine(
  self : TableRowFlags,
  other : TableRowFlags,
) -> TableRowFlags {
  { bits: self.value() | other.value() }
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
/// Returns the raw context handle.
pub fn Context::raw(self : Context) -> @bindings.ImGuiContext {
  self.raw
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
pub fn dear_imgui_version_number() -> Int {
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
/// Opens a window, runs `body` when visible, and always closes the ImGui scope.
pub fn Ui::window(
  _self : Ui,
  title : String,
  flags? : WindowFlags = WindowFlags::none(),
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin(utf8(title), None, flags.value())
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
  flags? : SliderFlags = SliderFlags::none(),
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
      flags.value(),
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
  flags? : SliderFlags = SliderFlags::none(),
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
      flags.value(),
    ) {
    body(current.val)
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
  flags? : SliderFlags = SliderFlags::none(),
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
      flags.value(),
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
  flags? : SliderFlags = SliderFlags::none(),
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
      flags.value(),
    ) {
    body(current.val)
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
  flags? : InputTextFlags = InputTextFlags::none(),
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
      flags.value(),
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
  flags? : InputTextFlags = InputTextFlags::none(),
  body : (Int) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(value)
  if @bindings.im_gui_input_int_ex(
      utf8(label),
      Some(current),
      step,
      step_fast,
      flags.value(),
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
  flags? : InputTextFlags = InputTextFlags::none(),
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
      flags.value(),
    ) {
    body(current.val)
  }
}

///|
/// Runs `body` with the updated UTF-8 text when the input changes.
pub fn WindowUi::input_text(
  _self : WindowUi,
  label : String,
  buffer : Bytes,
  flags? : InputTextFlags = InputTextFlags::none(),
  body : (String) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_input_text(
      utf8(label),
      buffer,
      buffer.length(),
      flags.value(),
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
  flags? : InputTextFlags = InputTextFlags::none(),
  body : (String) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_input_text_with_hint(
      utf8(label),
      utf8(hint),
      buffer,
      buffer.length(),
      flags.value(),
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
  flags? : ColorEditFlags = ColorEditFlags::none(),
  body : (Vec4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = FixedArray::from_array([color.x, color.y, color.z])
  if @bindings.im_gui_color_edit3(utf8(label), value, flags.value()) {
    body(Vec4::rgba(value[0], value[1], value[2], color.w))
  }
}

///|
/// Runs `body` with the updated RGBA color.
pub fn WindowUi::color_edit4(
  _self : WindowUi,
  label : String,
  color : Vec4,
  flags? : ColorEditFlags = ColorEditFlags::none(),
  body : (Vec4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = vec4(color)
  if @bindings.im_gui_color_edit4(utf8(label), value, flags.value()) {
    body(Vec4::rgba(value[0], value[1], value[2], value[3]))
  }
}

///|
/// Runs `body` with the updated RGB color from a color picker.
pub fn WindowUi::color_picker3(
  _self : WindowUi,
  label : String,
  color : Vec4,
  flags? : ColorEditFlags = ColorEditFlags::none(),
  body : (Vec4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = FixedArray::from_array([color.x, color.y, color.z])
  if @bindings.im_gui_color_picker3(utf8(label), value, flags.value()) {
    body(Vec4::rgba(value[0], value[1], value[2], color.w))
  }
}

///|
/// Runs `body` with the updated RGBA color from a color picker.
pub fn WindowUi::color_picker4(
  _self : WindowUi,
  label : String,
  color : Vec4,
  flags? : ColorEditFlags = ColorEditFlags::none(),
  body : (Vec4) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let value = vec4(color)
  if @bindings.im_gui_color_picker4(utf8(label), value, flags.value(), None) {
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
  flags : ColorEditFlags,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_set_color_edit_options(flags.value())
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
  flags? : TabBarFlags = TabBarFlags::none(),
  body : (TabBarUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_tab_bar(utf8(name), flags.value())
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
  flags? : TableFlags = TableFlags::none(),
  body : (TableUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_table(utf8(name), columns, flags.value())
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
/// Opens a popup by name.
pub fn WindowUi::open_popup(
  _self : WindowUi,
  name : String,
  flags? : PopupFlags = PopupFlags::none(),
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_open_popup(utf8(name), flags.value())
}

///|
/// Returns whether a named popup is open.
pub fn WindowUi::is_popup_open(
  _self : WindowUi,
  name : String,
  flags? : PopupFlags = PopupFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_is_popup_open(utf8(name), flags.value())
}

///|
/// Opens and closes a popup scope automatically when active.
pub fn WindowUi::popup(
  _self : WindowUi,
  name : String,
  flags? : PopupFlags = PopupFlags::none(),
  body : (PopupUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_popup(utf8(name), flags.value())
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
  flags? : WindowFlags = WindowFlags::none(),
  body : (PopupUi) -> Unit raise ImGuiError,
) -> Bool raise ImGuiError {
  ensure_current_context()
  let current = Ref(open)
  let active = @bindings.im_gui_begin_popup_modal(
    utf8(name),
    Some(current),
    flags.value(),
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
/// Returns whether the last item is hovered.
pub fn WindowUi::is_item_hovered(_self : WindowUi) -> Bool raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_is_item_hovered(0)
}

///|
/// Opens and closes a combo popup automatically when active.
pub fn WindowUi::combo(
  _self : WindowUi,
  label : String,
  preview : String,
  flags? : ComboFlags = ComboFlags::none(),
  body : (ComboUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_combo(
    utf8(label),
    utf8(preview),
    flags.value(),
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
  flags? : TreeNodeFlags = TreeNodeFlags::none(),
  body : (TreeNodeUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_tree_node_ex(utf8(label), flags.value())
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
  flags? : TreeNodeFlags = TreeNodeFlags::none(),
  body : (WindowUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_collapsing_header(utf8(label), flags.value()) {
    body(WindowUi::{  })
  }
}

///|
/// Runs `body` when a selectable item is activated.
pub fn WindowUi::selectable(
  _self : WindowUi,
  label : String,
  selected? : Bool = false,
  flags? : SelectableFlags = SelectableFlags::none(),
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(selected)
  if @bindings.im_gui_selectable_bool_ptr(
      utf8(label),
      Some(current),
      flags.value(),
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
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_menu_item_ex(utf8(label), None, selected, true) {
    body()
  }
}

///|
/// Runs `body` when a menu item is activated.
pub fn MenuUi::menu_item(
  _self : MenuUi,
  label : String,
  selected? : Bool = false,
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  if @bindings.im_gui_menu_item_ex(utf8(label), None, selected, true) {
    body()
  }
}

///|
/// Opens a tab item and closes it automatically.
pub fn TabBarUi::tab_item(
  _self : TabBarUi,
  label : String,
  flags? : TabItemFlags = TabItemFlags::none(),
  body : (TabItemUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_tab_item(utf8(label), None, flags.value())
  if active {
    defer @bindings.im_gui_end_tab_item()
    body(TabItemUi::{  })
  }
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
  flags? : TableFlags = TableFlags::none(),
  body : (TableUi) -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let active = @bindings.im_gui_begin_table(utf8(name), columns, flags.value())
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
  flags? : TableColumnFlags = TableColumnFlags::none(),
  init_width_or_weight? : Float = 0.0,
  user_id? : UInt = 0U,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_setup_column_ex(
    utf8(label),
    flags.value(),
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
  flags? : TableRowFlags = TableRowFlags::none(),
  min_height? : Float = 0.0,
) -> Unit raise ImGuiError {
  ensure_current_context()
  @bindings.im_gui_table_next_row_ex(flags.value(), min_height)
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
pub fn TableUi::column_flags(
  _self : TableUi,
  column : Int,
) -> TableColumnFlags raise ImGuiError {
  ensure_current_context()
  { bits: @bindings.im_gui_table_get_column_flags(column) }
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
  flags? : SelectableFlags = SelectableFlags::none(),
) -> Bool raise ImGuiError {
  ensure_current_context()
  let current = Ref(selected)
  @bindings.im_gui_selectable_bool_ptr(
    utf8(label),
    Some(current),
    flags.value(),
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
  flags? : SelectableFlags = SelectableFlags::none(),
  body : () -> Unit raise ImGuiError,
) -> Unit raise ImGuiError {
  ensure_current_context()
  let current = Ref(selected)
  if @bindings.im_gui_selectable_bool_ptr(
      utf8(label),
      Some(current),
      flags.value(),
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
fn vec4(value : Vec4) -> FixedArray[Float] {
  FixedArray::from_array([value.x, value.y, value.z, value.w])
}

///|
fn bytes_to_string(value : Bytes) -> String {
  let mut index = 0
  while index < value.length() && value[index] != b'\x00' {
    index = index + 1
  }
  @encoding/utf8.decode_lossy(value.view(end=index))
}
