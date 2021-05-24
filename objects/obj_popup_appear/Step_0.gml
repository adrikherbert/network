/// @description Insert description here
// You can write your code in this editor

if (go_up) {
	fade_alpha += 0.1;	
	
	if (fade_alpha >= 1.00) {
		instance_create_depth(2420, 340, 0, obj_popup_ad);
		audio_play_sound(s_popup_appear, 0, false);
		go_up = false;
		go_down = true;
	}
} else if (go_down) {
	fade_alpha -= 0.1;
	
	if (fade_alpha <= 0) {
		instance_destroy();
	}
}