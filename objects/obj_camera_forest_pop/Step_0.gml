/// @description Insert description here
// You can write your code in this editor

switch (trigger) {
	case 0:
		target_x = 0;
		target_y = 0;
		trigger++;
		break;
	case 2:
		target_x = 1366;
		target_y = 0;
		trigger++;
		break;
	case 4:
		target_x = 2732;
		target_y = 0;
		trigger++;
		break;
}

if (x != target_x) {
	x += (target_x - x) / 65;	
}

if (y != target_y) {
	y += (target_y - y) / 65;
}

x = clamp(x, 0, room_width - cam_width);
y = clamp(y, 0, room_height - cam_height);

camera_set_view_pos(camera, x, y);