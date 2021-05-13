/// @description Insert description here
// You can write your code in this editor

if (global.warpx != -1 && global.warpy != -1) {
		x = global.warpx;
		y = global.warpy;
		global.warpx = -1;
		global.warpy = -1;
		
		if (instance_exists(obj_camera_moving)) {
			obj_camera_moving.doset = true;
			obj_camera_moving.sety = y;
		}
}

if (movable) {

	// Collect input from player
	move_right = keyboard_check(vk_right);
	move_left = keyboard_check(vk_left);
	move_up = keyboard_check(vk_up);
	move_down = keyboard_check(vk_down);

	// Figure direction and magnitude that player input signals
	input_direction = point_direction(0, 0, move_right - move_left, move_down - move_up);
	input_magnitude = (move_right - move_left != 0) || (move_down - move_up != 0);

	// Calculate horizontal and vertical speed based on player input
	if (keyboard_check(vk_shift)) speedup = 4;
	else speedup = 1;
	
	h_speed = speedup * lengthdir_x(input_magnitude * walk_speed, input_direction);
	v_speed = speedup * lengthdir_y(input_magnitude * walk_speed, input_direction);

	player_collision();

	if (input_magnitude != 0) {
		direction = input_direction;
	}

	benji_walk_animate();
	
	if (place_meeting(x, y, obj_warp)) warp_set_loc(obj_warp.place, obj_warp.dex, obj_warp.dey);
} else {
	sprite_index = stop_sprite;
	image_index = stop_index;
	if (global.stopdex != -1) {image_index = global.stopdex; global.stopdex = -1;}
	image_speed = 0;	
}