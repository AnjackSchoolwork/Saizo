/// Initialize variables for this state

// Prioritize attacks in case multiple buttons pressed simultaneously
if(h_atk_pressed) {
    atk_anim_duration = h_atk_duration
    atk_range = h_atk_range
    atk_radius = h_atk_radius
    atk_dmg = h_atk_dmg
}
else if (m_atk_pressed) {
    atk_anim_duration = m_atk_duration
    atk_range = m_atk_range
    atk_radius = m_atk_radius
    atk_dmg = m_atk_dmg
}
else if (l_atk_pressed) {
    atk_anim_duration = l_atk_duration
    atk_range = l_atk_range
    atk_radius =l_atk_radius
    atk_dmg = l_atk_dmg
}

attack_start_time = current_time

char_state_current = char_states[? "attacking"]

// Check for hit
with(obj_enemy_base) {
    hit = collision_circle(other.x + (other.char_horiz_direction * other.atk_range), other.y, other.atk_radius, self, false, false)
    if(hit) {
        char_health -= other.atk_dmg
    }
}

// Apply damage

