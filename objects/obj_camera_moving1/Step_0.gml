/// @description Insert description here
// You can write your code in this editor

switch (trigger) {
	case 0:
		trigger++;
		break;
	case 2:
		trigger++;
		break;
}

if (trigger == 3) {
	target_x = obj_benji.x - (cam_width / 2);
	target_y = obj_benji.y - (cam_height / 2) - 16;
}


if (x != target_x) {
	x += (target_x - x) / 45;	
}

if (y != target_y) {
	y += (target_y - y) / 45;
}

y = clamp(y, 0, room_height - cam_height);

camera_set_view_pos(camera, x, y);