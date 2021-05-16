/// @description Insert description here
// You can write your code in this editor

if (pressed == 4 && wall_up) {
	if (buttons[0] == 1 && 	buttons[1] == 2 && buttons[2] == 4 && buttons[3] == 3) {
		layer_tilemap_destroy(wall);
		wall_up = false;
		obj_benji.movable = false;
		docount = true;
		trigger = 1;
	} else {
		pressed = 0;
		buttons[0] = 0;
		buttons[1] = 0;
		buttons[2] = 0;
		buttons[3] = 0;
		docount = true;
		trigger = -1;
	}
}

if (trigger == -1 && count == 30) {
	audio_play_sound(s_fail, 0, false);
	docount = false;
	trigger++;
}

if (trigger == 1 && count == 45) {
	audio_play_sound(s_success, 0, false);
} else if (trigger == 1 && count == 60) {
	obj_benji.movable = true;
	docount = false;
	trigger++;
}



if (docount) count++;
else count = 0;