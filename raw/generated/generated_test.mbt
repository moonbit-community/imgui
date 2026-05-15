///|
test "generated constants and bridge helpers" {
  @debug.assert_eq(@generated.imgui_version_num(), 19281)
  @debug.assert_eq(@generated.im_gui_window_flags_menu_bar(), 1024)
  let version = @generated.im_gui_get_version()
  @debug.assert_eq(@generated.cstring_length(version), 6)
  @debug.assert_eq(@generated.cstring_to_string(version), "1.92.8")
  @debug.assert_eq(@generated.cstring_to_string(@generated.null_c_string()), "")
}

///|
test "generated allocation helpers" {
  let int_value = @generated.int_ptr_new(7)
  defer @generated.int_ptr_free(int_value)
  @generated.int_ptr_set(int_value, 9)
  @debug.assert_eq(@generated.int_ptr_get(int_value), 9)

  let uint_value = @generated.uint_ptr_new(11)
  defer @generated.uint_ptr_free(uint_value)
  @generated.uint_ptr_set(uint_value, 13)
  @debug.assert_eq(@generated.uint_ptr_get(uint_value), 13)

  let size_value = @generated.size_t_ptr_new(17)
  defer @generated.size_t_ptr_free(size_value)
  @generated.size_t_ptr_set(size_value, 19)
  @debug.assert_eq(@generated.size_t_ptr_get(size_value), 19)

  let float_value = @generated.float_ptr_new(1.25)
  defer @generated.float_ptr_free(float_value)
  @generated.float_ptr_set(float_value, 2.5)
  @debug.assert_eq(@generated.float_ptr_get(float_value), 2.5)

  let double_value = @generated.double_ptr_new(3.5)
  defer @generated.double_ptr_free(double_value)
  @generated.double_ptr_set(double_value, 4.5)
  @debug.assert_eq(@generated.double_ptr_get(double_value), 4.5)

  let vec = @generated.im_vec2_new(12.0, 34.0)
  defer @generated.im_vec2_free(vec)
  @debug.assert_eq(@generated.im_vec2_field_get_x(vec), 12.0)
  @debug.assert_eq(@generated.im_vec2_field_get_y(vec), 34.0)

  let mut ptr_len = 0
  @generated.with_cstring("ptr", fn(value) {
    let ptr = @generated.cstring_ptr_new(value)
    defer @generated.cstring_ptr_free(ptr)
    ptr_len = @generated.cstring_length(@generated.cstring_ptr_get(ptr))
  })
  @debug.assert_eq(ptr_len, 3)

  let mut utf8_len = 0
  @generated.with_cstring("你好", fn(value) {
    utf8_len = @generated.cstring_length(value)
  })
  @debug.assert_eq(utf8_len, 6)

  let owned = @generated.OwnedCString::new("owned")
  owned.free()
  owned.free()
  @debug.assert_eq(@generated.cstring_is_null(owned.raw()), true)

  let mut ptr_value_len = 0
  @generated.with_cstring_ptr("ptr-value", fn(ptr) {
    ptr_value_len = @generated.cstring_length(@generated.cstring_ptr_get(ptr))
  })
  @debug.assert_eq(ptr_value_len, 9)
}

///|
test "generated context and field accessors" {
  let context = @generated.im_gui_create_context(
    @generated.null_im_font_atlas(),
  )
  defer @generated.im_gui_destroy_context(context)
  @generated.im_gui_set_current_context(context)
  let io = @generated.im_gui_get_io()
  @generated.im_gui_io_field_set_ini_filename(io, @generated.null_c_string())
  @generated.im_gui_io_field_set_log_filename(io, @generated.null_c_string())
  ignore(@generated.im_gui_io_field_get_display_size(io))
  let display_size = @generated.im_vec2_new(640.0, 480.0)
  defer @generated.im_vec2_free(display_size)
  @generated.im_gui_io_field_set_display_size(io, display_size)
  @generated.im_gui_io_field_set_delta_time(io, 1.0 / 60.0)
  ignore(
    @generated.im_font_atlas_build(@generated.im_gui_io_field_get_fonts(io)),
  )

  let checked = @generated.bool_ptr_new(true)
  defer @generated.bool_ptr_free(checked)

  @generated.im_gui_new_frame()
  let mut struct_return_stable = false
  @generated.with_cstring("a", fn(short_text) {
    @generated.with_cstring("aaaaaaaaaaaaaaaa", fn(long_text) {
      let first = @generated.im_gui_calc_text_size(short_text)
      let first_x = @generated.im_vec2_field_get_x(first)
      let second = @generated.im_gui_calc_text_size(long_text)
      ignore(second)
      struct_return_stable = @generated.im_vec2_field_get_x(first) == first_x
    })
  })
  @debug.assert_eq(struct_return_stable, true)
  let mut text_len = 0
  @generated.with_cstring("Generated raw API", fn(value) {
    text_len = @generated.cstring_length(value)
    if @generated.im_gui_begin(value, @generated.null_bool_ptr(), 0) {
      @generated.with_cstring("Text from generated CString", fn(text) {
        @generated.im_gui_text_unformatted(text)
      })
      @generated.with_cstring("100% raw text", fn(text) {
        @generated.im_gui_text(text)
      })
      @generated.with_cstring("Generated checkbox", fn(label) {
        ignore(@generated.im_gui_checkbox(label, checked))
      })
    }
    @generated.im_gui_end()
  })
  @generated.im_gui_render()
  @debug.assert_eq(text_len, 17)
  @debug.assert_eq(@generated.bool_ptr_get(checked), true)

  let imstr_arg = @generated.OwnedCString::new("optional")
  defer imstr_arg.free()
  let unavailable : Result[@generated.ImStr, @generated.RawBindingError] = try? @generated.im_str_from_char_str(
    imstr_arg.raw(),
  )
  match unavailable {
    Err(@generated.RawBindingUnavailable(name)) =>
      @debug.assert_eq(name, "ImStr_FromCharStr")
    _ => abort("expected ImStr_FromCharStr to be unavailable")
  }
}
