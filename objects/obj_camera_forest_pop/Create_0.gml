/// @description Insert description here
// You can write your code in this editor

camera = view_camera[0];

cam_width = camera_get_view_width(camera);
cam_height = camera_get_view_height(camera);

camera_set_view_pos(camera, 0, 0);

target_x = 0;
target_y = 0;
trigger = 0;