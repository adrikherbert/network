/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_benji)) {
	audio_stop_all();
	obj_benji.movable = false;
	obj_bit_ow.dostuff = true;
	obj_camera_forest2.trigger++;
	instance_destroy();
}