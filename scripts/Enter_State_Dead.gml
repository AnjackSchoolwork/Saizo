/// Initialize variables for this state

char_state_current = char_states[? "dead"]

// Set dead_delay timer and time_of_death
time_of_death = current_time
dead_delay = 2000

sprite_index = spr_death
image_speed = 0.25

// Award points to opponent
if(game_controller.level_state_current == game_controller.level_states[? "arena"]) {
    if(self.object_index == obj_player_1) {
        game_controller.score_right++
    }
    else {
        game_controller.score_left++
    }
}
else if (game_controller.level_state_current == game_controller.level_states[? "intermediate"]) {
    if(object_get_parent(self.object_index) == obj_enemy_base) {
        // Award points?
    }
}

