/// ai_consider(target_player)
/// This is the basic behavior code for fighter in arena levels
/// Behavior is based upon difficulty level and is defined in ai_controller

min_range = 30

if(instance_number(obj_player_1) > 0) {
// Fail gracefully if called without a target
if(argument_count <= 0) {
    show_debug_message("ai_consider called by " + string(object_get_name(self.object_index)) + " : " + string(self.id) + " but no target specified")
}
else {
    target_player = argument[0]
    tgt_range = distance_to_object(target_player)
    if(target_player.x < x) {
        tgt_direction = -1
        walk_image = spr_walk_left
        stand_image = spr_left
    }
    else {
        tgt_direction = 1
        walk_image = spr_walk_right
        stand_image = spr_right
    }
}

if(char_state_current == char_states[? "idle"]) {
    // If player is too far away, just ignore, otherwise pursue
    if(tgt_range <= max_detect_range and tgt_range >= min_range) {
        sprite_index = walk_image
        moveChar(point_direction(x, y, obj_player_1.x, obj_player_1.y), base_speed)
    }
    else if(tgt_range <= min_range) {
        
        
        
        Enter_State_Attacking()
    }
    else {
        sprite_index = stand_image
    }
}
}
