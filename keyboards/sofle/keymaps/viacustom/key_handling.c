bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
  case KC_LCTL:
  case KC_RCTL:
    if (record->event.pressed) {
      isSneaking = true;
    } else {
      isSneaking = false;
    }
    break;
  case KC_SPC:
    if (record->event.pressed) {
      isJumping  = true;
      showedJump = false;
    } else {
      isJumping = false;
    }
    break;
    
  }
  return true;
}