/// @description Insert description here
// You can write your code in this editor

if (global.bit_complete) {
	instance_destroy(obj_warp_forest1);
	instance_destroy(obj_toggle_forest_bit);
	obj_benji.x = 1154;
	obj_benji.y = 450;
	
	obj_camera_forest2.x = obj_benji.x - (obj_camera_forest2.cam_width / 2);
	obj_camera_forest2.y = obj_benji.y - (obj_camera_forest2.cam_height / 2);

	obj_camera_forest2.x = clamp(obj_camera_forest2.x, 0, room_width - obj_camera_forest2.cam_width);
	obj_camera_forest2.y = clamp(obj_camera_forest2.y, 0, room_height - obj_camera_forest2.cam_height);
	
	obj_camera_forest2.trigger = 2;
}