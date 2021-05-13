/// @description Insert description here
// You can write your code in this editor

camera = view_camera[0];
cam_width = camera_get_view_width(camera);
cam_height = camera_get_view_height(camera);

target_x = 0;
target_y = 0;

x = obj_benji.x - (cam_width / 2);
y = obj_benji.y - (cam_height / 2) - 16;

if (global.warpx != -1 && global.warpy != -1) {
	x = global.warpx - (cam_width / 2);
	y = global.warpy - (cam_height / 2) - 16;
}

trigger = 0;