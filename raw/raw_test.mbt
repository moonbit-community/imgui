///|
test "bridge reports Dear ImGui mode" {
  @debug.assert_eq(@raw.bridge_mode(), NativeCocoa)
  @debug.assert_eq(@raw.bridge_version(), 3)
  @debug.assert_eq(@raw.dear_imgui_version_number(), 19281)
}

///|
test "context lifecycle exposes io style and draw data handles" {
  let ctx = @raw.create_context()
  @raw.set_current_context(ctx)
  @debug.assert_eq(@raw.has_current_context(), true)
  ignore(@raw.get_io())
  ignore(@raw.get_style())
  ignore(@raw.get_font_atlas())
  @raw.new_frame()
  @debug.assert_eq(@raw.frame_count(), 1)
  @raw.render()
  ignore(@raw.get_draw_data())
  @raw.destroy_context(ctx)
  @raw.destroy_context(ctx)
  @debug.assert_eq(@raw.has_current_context(), false)
}

///|
test "widgets are callable inside a Dear ImGui frame" {
  let ctx = @raw.create_context()
  @raw.new_frame()
  @debug.assert_eq(@raw.begin_window("Raw test"), true)
  @raw.text("hello")
  @debug.assert_eq(@raw.button("Run"), false)
  @debug.assert_eq(@raw.checkbox("Check", true), {
    changed: false,
    checked: true,
  })
  @debug.assert_eq(@raw.slider_float("Value", 2.0, 0.0, 1.0), {
    changed: true,
    value: 1.0,
  })
  @debug.assert_eq(@raw.input_text("Name", "moonbit 你好"), {
    changed: false,
    truncated: false,
    value: "moonbit 你好",
  })
  ignore(
    @raw.collapsing_header("Details", flags=@raw.TreeNodeFlags::default_open()),
  )
  if @raw.tree_node("Tree") {
    @raw.tree_pop()
  }
  if @raw.begin_table("Table", 2, flags=@raw.TableFlags::borders()) {
    @raw.table_next_row()
    @debug.assert_eq(@raw.table_next_column(), true)
    @raw.end_table()
  }
  if @raw.begin_tab_bar("Tabs") {
    if @raw.begin_tab_item("One") {
      @raw.end_tab_item()
    }
    @raw.end_tab_bar()
  }
  @raw.end_window()
  @raw.render()
  @raw.destroy_context(ctx)
}

///|
test "flag wrappers combine bitsets" {
  @debug.assert_eq(
    @raw.WindowFlags::no_resize().combine(@raw.WindowFlags::menu_bar()).value(),
    1026,
  )
  @debug.assert_eq(
    @raw.TableFlags::resizable().combine(@raw.TableFlags::row_bg()).value(),
    65,
  )
}
