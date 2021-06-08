/// @description Insert description here
// You can write your code in this editor

if (global.error_depth == 160) {
	image_index = 11;
	
	// change the shit under this comment to be more better :)
	x = obj_camera_forest_pop.x + (obj_camera_forest_pop.cam_width / 2);
	y = obj_camera_forest_pop.y + (obj_camera_forest_pop.cam_height / 2);
} else image_index = irandom_range(0, 10);

switch (image_index) {
	case 0:
	image_xscale = 1;
	break;
	case 1:
	image_xscale = 0.5;
	break;
	case 2:
	image_xscale = 0.5;
	break;
	case 3:
	image_xscale = 0.4;
	break;
	case 4:
	image_xscale = 1;
	break;
	case 5:
	image_xscale = 0.5;
	break;
	case 6:
	image_xscale = 0.5;
	break;
	case 7:
	image_xscale = 0.25;
	break;
	case 8:
	image_xscale = 0.25;
	break;
	case 9:
	image_xscale = 1;
	break;
	case 10:
	image_xscale = 0.25;
	break;
	case 11:
	image_xscale = 2;
	break;
}

image_yscale = image_xscale;

shatter = false;
dir = choose(0, 1);
vsp = random_range(4, 6);