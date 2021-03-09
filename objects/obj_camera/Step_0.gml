/// @description Insert description here
// You can write your code in this editor
target_x = 0;
target_y = 0;

switch (trigger) {
	case 1:
		target_x = 0;
		target_y = 768;
		break;
}

if (x != target_x) {
	x += (target_x - x) / 35;	
}

if (y != target_y) {
	y += (target_y - y) / 35;
}

camera_set_view_pos(camera, x, y);