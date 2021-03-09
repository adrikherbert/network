/// @description Insert description here
// You can write your code in this editor

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
	h_speed = lengthdir_x(input_magnitude * walk_speed, input_direction);
	v_speed = lengthdir_y(input_magnitude * walk_speed, input_direction);

	player_collision();

	if (input_magnitude != 0) {
		direction = input_direction;
	}

	benji_walk_animate();

	if (place_meeting(x, y, obj_teleport)) {
	
		warp(obj_teleport.dest, obj_teleport.dest_dir);
	}
} else {
	sprite_index = stop_sprite;
	image_index = stop_index;
	image_speed = 0;	
}