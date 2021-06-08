/// @description Insert description here
// You can write your code in this editor

if (doup) {
	angle_change += 0.05;
	if (angle_change == 1) {
		doup = false;
		dodown = true;
	}
} else if (dodown) {
	angle_change -= 0.05;
	if (angle_change == -1) {
		doup = true;
		dodown = false;
	}
}

image_angle += angle_change;