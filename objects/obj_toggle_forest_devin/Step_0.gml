/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_benji)) {
	audio_stop_all();
	obj_gc_forest_pop.trigger++;
	obj_benji.movable = false;
	instance_destroy();
}