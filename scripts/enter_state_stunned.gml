/// enter_state_stunned(next_state)
/// Specify the state entry script for the state to enter after stun ends
/// Initialize vars for this state

if(argument_count != 0) {
    next_state = argument[0]
}
else {
    next_state = enter_state_idle
}

// Set state
char_state_current = char_states[? "stunned"]

// Stun start time
stun_start_time = current_time

// Max duration in mmilliseconds
max_stun_duration = 1000
