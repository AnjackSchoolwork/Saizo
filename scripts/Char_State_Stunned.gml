/// Enter when char is stunned by damage or effect
/// Use this state for animations that don't fit in any other state
/// Also use when starting a new level

if(current_time - stun_start_time > max_stun_duration) {
    script_execute(next_state)
}

if(keyboard_check(ord('P'))) {
    if(room_previous(room) != undefined) {
        room = room_previous(room)
    }
}
else if(keyboard_check(ord('N'))) {
    if(room_next(room) != undefined) {
        room = room_next(room)
    }
}
if (keyboard_check(vk_escape)) {
    room = rm_menu_main
}
