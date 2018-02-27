/// Initialize variables for this state

combo = false
combo_num = 0 // default to weak combo
image_speed = 0.25

// Prioritize attacks in case multiple buttons pressed simultaneously
if(h_atk_pressed) {
    atk_anim_duration = h_atk_duration
    atk_range = h_atk_range
    atk_radius = h_atk_radius
    atk_dmg = h_atk_dmg
    sprite_index = spr_atk_high
}
else if (m_atk_pressed) {
    atk_anim_duration = m_atk_duration
    atk_range = m_atk_range
    atk_radius = m_atk_radius
    atk_dmg = m_atk_dmg
    sprite_index = spr_atk_mid
}
else if (l_atk_pressed) {
    atk_anim_duration = l_atk_duration
    atk_range = l_atk_range
    atk_radius =l_atk_radius
    atk_dmg = l_atk_dmg
    sprite_index = spr_atk_low
}
// Else check for easy combo button

attack_start_time = current_time

// Check for weak combo (move plus light attack)
if(l_atk_pressed) {
    if(keyboard_check(obj_player.keyboard_controls[? "left"]) 
    or keyboard_check(obj_player.keyboard_controls[? "right"])) { // Also need to check for gamepad movement
        // Enter combo instead
        combo = true
        atk_anim_duration = l_atk_duration
        atk_range = l_atk_range * 2
        atk_radius = l_atk_radius
        atk_dmg = l_atk_dmg * 2
    }
}

char_state_current = char_states[? "attacking"]



