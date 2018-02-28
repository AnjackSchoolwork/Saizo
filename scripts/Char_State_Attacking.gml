/// Character enters this state when attack begins and attack ends when character exits this state

if(object_index != obj_player_1) {
    if(current_time - attack_start_time >= choose(1000, 2000)) {
        
        obj_player_1.char_health -= 5
        sound_play(snd_hit)
        
        sprite_index = spr_left
        enter_state_idle()
    }
}
else if(current_time - attack_start_time >= atk_anim_duration) {
    // Check for hit
    with(obj_enemy_base) {
        hit = collision_circle(other.x + (other.char_horiz_direction * other.atk_range), other.y, other.atk_radius, self, false, false)
        if(hit) {
            // Apply damage
            char_health -= other.atk_dmg
            sound_play(snd_hit)
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

