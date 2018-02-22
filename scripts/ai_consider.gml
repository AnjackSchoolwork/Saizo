/// ai_consider(target_player)
/// This is the basic behavior code for fighter in arena levels
/// Behavior is based upon difficulty level and is defined in ai_controller

// Fail gracefully if called without a target
if(argument_count <= 0) {
    show_debug_message("ai_consider called by " + string(object_get_name(self.object_index)) + " : " + string(self.id) + " but no target specified")
}
else {
    target_player = argument[0]
    tgt_range = distance_to_object(target_player)
    if(target_player.x < x) {
        tgt_direction = -1
    }
    else {
        tgt_direction = 1
    }
}

// If player is too far away, just ignore
if(tgt_range >= max_detect_range) {
    exit
}

// Agression always moves toward 0
if(base_aggression != 0) {
    base_aggression -= (base_aggression / abs(base_aggression)) * 0.01
}

// Calculate aggression
aggression = base_aggression

speed = aggression * base_speed * tgt_direction

if((aggression >= 0 and tgt_range > min_range) 
    or (aggression < 0 and tgt_range < max_range)) {
    
    speed = 0
    
}
