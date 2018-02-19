/// Character enters this state when attack begins and attack ends when character exits this state

if(current_time - attack_start_time >= atk_anim_duration) {
    enter_state_idle()
}
