/// @description Insert description here
// You can write your code in this editor

check_x = obj_benji.x;

if (check_x < 1366) {
	cam.trigger = 0;
} else if (check_x < 2732) {
	cam.trigger = 2;	
} else if (check_x < 4098) {
	cam.trigger = 4;	
}

switch (trigger) {
	case 1:
		docount = true;
		trigger++;
		break;
	case 3:
		docount = false;
		trigger++;
		break;
	case 5:
		instance_create_depth(0, 0, 0, obj_popup_appear);
		trigger++;
		break;
}

if (trigger == 2 && count == 60) {
	obj_devin_forest_pop.trigger++;
	trigger++;
}

if (docount) count++;
else count = 0;