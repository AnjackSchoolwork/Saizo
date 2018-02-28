/// Character enters this state when attack begins and attack ends when character exits this state

if(!self.object_index == obj_player_1) {
    if(current_time - attack_start_time <= choose(1, 2)) {
        
        obj_player_1.obj_health -= 10 + irandom_range(0, 10)
    }
}
else if(current_time - attack_start_time >= atk_anim_duration) {
    // Check for hit
    with(obj_enemy_base) {
        hit = collision_circle(other.x + (other.char_horiz_direction * other.atk_range), other.y, other.atk_radius, self, false, false)
        if(hit) {
            // Apply damage
            char_health -= other.atk_dmg
        }
    }
    
    with(obj_breakable) {
        hit = collision_circle(other.x + (other.char_horiz_direction * other.atk_range), other.y, other.atk_radius, self, false, false)
        
        if(hit) {
            obj_health -= other.atk_dmg
        }
    }

    image_speed = 0
    enter_state_idle()
    exit
}

// Check for combos while anim is playing

