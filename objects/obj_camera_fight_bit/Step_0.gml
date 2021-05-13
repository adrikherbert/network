/// @description Insert description here
// You can write your code in this editor

if (shake) {
	if (evolve) {
		evolve = false;
		
		count = 0;
		docount = true;
	}
	
	shake_valx = abs(shake_x) - 0.2;
	
	shake_x = shake_valx * shake_switch;
	
	x = shake_x;
	
	shake_switch = shake_switch * -1;
	
	if (count == 25) {
		shake_x = 5;
		x = 0;
		
		shake = false;
		evolve = true;
		docount = false;
	}
}

camera_set_view_pos(camera, x, y);

if (docount) count++;