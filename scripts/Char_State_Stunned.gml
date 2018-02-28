/// Enter when char is stunned by damage or effect
/// Use this state for animations that don't fit in any other state
/// Also use when starting a new level

if(current_time - stun_start_time > max_stun_duration) {
    script_execute(next_state)
}


