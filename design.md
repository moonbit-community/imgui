# API Design for high-level imgui

- Do not write any FFI in moonbit-community/imgui

# Scoped UI

# Enum as Composable Flags

Do not use:

```
pub(all) struct PopupFlags {
  bits : Int
} derive(Eq, @debug.Debug)
pub fn PopupFlags::any_popup() -> Self
pub fn PopupFlags::any_popup_id() -> Self
pub fn PopupFlags::any_popup_level() -> Self
pub fn PopupFlags::combine(Self, Self) -> Self
pub fn PopupFlags::mouse_button_left() -> Self
pub fn PopupFlags::mouse_button_middle() -> Self
pub fn PopupFlags::mouse_button_right() -> Self
pub fn PopupFlags::no_open_over_existing_popup() -> Self
pub fn PopupFlags::no_open_over_items() -> Self
pub fn PopupFlags::no_reopen() -> Self
pub fn PopupFlags::none() -> Self
pub fn PopupFlags::value(Self) -> Int
pub fn WindowUi::popup(Self, String, flags? : PopupFlags, (PopupUi) -> Unit raise ImGuiError) -> Unit raise ImGuiError
```

Use:

```
pub(all) enum PopupFlag {
  AnyPopup
  AnyPopId
  AnyPopupLevel
  MouseButtonLeft
  MouseButtonRight
  NoOpenOverExistingPopup
  NoOpenOverItems
  NoReopen
}
pub fn WindowUi::popup(Self, String, flags? : Array[PopupFlag], (PopupUi) -> Unit raise ImGuiError) -> Unit raise ImGuiError

// private
fn PopupFlag::to_int() -> Int
```

Do not expose flags/flag as UInt/Int.