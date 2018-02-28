/// Enter this state when char dies (can only enter from stunned state and cannot exit to any other state)

// You're dead, you don't do anything.

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
