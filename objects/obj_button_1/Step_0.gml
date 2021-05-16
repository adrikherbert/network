/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_benji)) {
	image_index = pict + 1;
	dosound = true;
} else {
	image_index = pict;
	dosound = false;
	toggle = true;
}

if (dosound && toggle) {
	audio_play_sound(s_crunch, -5, false);
	
	obj_gc_forest_3.buttons[obj_gc_forest_3.pressed] = butt;
	obj_gc_forest_3.pressed++;
	
	toggle = false;
}