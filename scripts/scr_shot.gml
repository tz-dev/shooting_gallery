///scr_shot()
if (mouse_check_button_pressed(mb_left)) {
    if (global.bullets > 0) {
        rnd_sound = choose(1,2,3)
        if (rnd_sound = 1) {audio_play_sound(snd_hitmetal01, 10, false);}
        if (rnd_sound = 2) {audio_play_sound(snd_hitmetal02, 10, false);}
        if (rnd_sound = 3) {audio_play_sound(snd_hitmetal03, 10, false);}
        instance_create(mouse_x, mouse_y, obj_hit);
        global.hits += 1;
        missed = false;
    }
}
