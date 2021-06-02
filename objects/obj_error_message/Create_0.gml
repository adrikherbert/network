/// @description Insert description here
// You can write your code in this editor

if (global.error_depth == 160) {
	image_index = 2;
	image_xscale = 2;
	image_yscale = 2;
	
	// change the shit under this comment to be more better :)
	x = obj_camera_forest_pop.x + (obj_camera_forest_pop.cam_width / 2);
	y = obj_camera_forest_pop.y + (obj_camera_forest_pop.cam_height / 2);
} else {
	image_xscale = 1;
	image_yscale = 1;
	image_index = irandom_range(0, 1);
}

shatter = false;
dir = choose(0, 1);
vsp = random_range(4, 6);