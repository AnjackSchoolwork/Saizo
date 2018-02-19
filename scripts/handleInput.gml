/// Check inputs for key/button presses and do relevant actions

// Actions mapped to keys, not dependant upon states

if(controller == "keyboard") {
    // Handle keyboard input here
    
    //##########MOVEMENT BEGIN##########
    
    // Horizontal movement for arena and intermediate levels
    if(keyboard_check(keyboard_controls[? "left"])) {
        keyboard_left = -1
    }
    else {
        keyboard_left = 0
    }
    
    if(keyboard_check(keyboard_controls[? "right"])) {
        keyboard_right = 1
    }
    else {
        keyboard_right = 0
    }
    
    horiz_move = keyboard_right + keyboard_left
    
    // Vertical movement only in intermediate levels
    if(game_controller.level_state_current == game_controller.level_states[? "intermediate"]) {
    
        if(keyboard_check(keyboard_controls[? "up"])) {
            keyboard_up = 1
        }
        else {
            keyboard_up = 0
        }
        
        if(keyboard_check(keyboard_controls[? "down"])) {
            keyboard_down = -1
        }
        else {
            keyboard_down = 0
        }
        
        vert_move = keyboard_up + keyboard_down
        
        if(vert_move != 0) {
            if(vert_move > 0) {
                new_direction = 90
            }
            else {
                new_direction = 270
            }
            
            moveChar(new_direction, default_move_speed) // Tween?
        }
    
    }
    // Horizontal movement in either arena or intermediate levels
    if(horiz_move != 0)
    {
        if(horiz_move > 0) {
            new_direction = 0
            char_horiz_direction = 1
        }
        else {
            new_direction = 180
            char_horiz_direction = -1
        }
        
        moveChar(new_direction, default_move_speed) // Need tweening/interpolation?
    }
    //##########MOVEMENT END##########
    
    //##########ATTACKS BEGIN##########
    
    // Prioritize attacks in case multiple
    h_atk_pressed = keyboard_check_pressed(keyboard_controls[? "h_atk"])
    
    m_atk_pressed = keyboard_check_pressed(keyboard_controls[? "m_atk"])
    
    l_atk_pressed = keyboard_check_pressed(keyboard_controls[? "l_atk"])
    
    if(h_atk_pressed or m_atk_pressed or l_atk_pressed) {
        Enter_State_Attacking()
    }
    
    //##########ATTACKS END##########
}
else {
    // Handle gamepad input here

}