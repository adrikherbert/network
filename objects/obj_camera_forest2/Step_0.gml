/// @description Insert description here
// You can write your code in this editor

switch (trigger) {
	case 0:
		target_x = 0;
		target_y = 0;
		break;
	case 1:
		target_x = 910;
		break;
	case 2:
		target_x = obj_benji.x - (cam_width / 2);
		target_y = obj_benji.y - (cam_height / 2) - 16;
		break;
}

if (x != target_x) {
	x += (target_x - x) / 45;	
}

if (y != target_y) {
	y += (target_y - y) / 45;
}

x = clamp(x, 0, room_width - cam_width);
y = clamp(y, 0, room_height - cam_height);

camera_set_view_pos(camera, x, y);