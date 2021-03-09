/// @description Insert description here
// You can write your code in this editor

if (obj_benji.y <= 1000) {
	lr = false;
	target_x = 510;
	target_y = obj_benji.y - (cam_height / 2) - 16;
} else {
	lr = true;
	target_x = 70;
	target_y = 947;
}


if (x != target_x) {
	x += (target_x - x) / 45;	
}

if (y != target_y) {
	y += (target_y - y) / 45;
}

y = clamp(y, 0, room_height - cam_height);

camera_set_view_pos(camera, x, y);