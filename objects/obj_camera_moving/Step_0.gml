/// @description Insert description here
// You can write your code in this editor

x = 0
y = obj_benji.y - (cam_height / 2) - 16;

clamp(y, 0, room_height - cam_height);

camera_set_view_pos(camera, x, y);