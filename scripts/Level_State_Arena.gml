/// Holds all information about arena-type levels

// Check for dead people
if(fighter_right.char_state_current == fighter_right.char_states[? "dead"]) {
    // Check win condition
    
    if(current_time - fighter_right.time_of_death >= fighter_right.dead_delay) {
        // Delay action for short pause
        
        if(score_left == max_wins) {
            room_goto_next()
        }
        else {
            room_restart()
        }
    }
}
