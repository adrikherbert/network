/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_benji) && !act) {
	obj_benji.movable = false;
	obj_benji.stop_index = 3;
	obj_benji_bedroom_exp.sprite_index = spr_benji_bedroom_dark;
	obj_bedroom_blanket.sprite_index = spr_bedroom_blanket_dark;
	audio_play_sound(s_light_switch, 0, false);
	
	obj_gc_bedroom.trigger += 1;
	
	instance_destroy();
}