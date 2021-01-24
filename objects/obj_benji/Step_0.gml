/// @description Insert description here
// You can write your code in this editor
move_right = keyboard_check(vk_right);
move_left = keyboard_check(vk_left);
move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);

image_xscale = 3;

if (move_right && !move_left)
{
	x += walk_speed;
	sprite_index = spr_benji_sidewalk;
	image_xscale = 3;
	image_speed = 1;
} 
else if (move_left && !move_right)
{
	x -= walk_speed;
	sprite_index = spr_benji_sidewalk;
	image_xscale = -3;
	image_speed = 1;
}

if (move_up && !move_down)
{
	sprite_index = spr_benji_upwalk;
	y -= walk_speed;
	image_speed = 1;
} 
else if (move_down && !move_up)
{
	sprite_index = spr_benji_downwalk;
	y += walk_speed;
	image_speed = 1;
}

if (keyboard_check_released(vk_up))
{
	sprite_index = spr_benji;
	image_index = 2;
	image_speed = 0;
}
else if (keyboard_check_released(vk_down))
{
	sprite_index = spr_benji;
	image_index = 0;
	image_speed = 0;
}
else if (keyboard_check_released(vk_right))
{
	sprite_index = spr_benji;
	image_index = 1;
	image_speed = 0;
}
else if (keyboard_check_released(vk_left))
{
	sprite_index = spr_benji;
	image_index = 3;
	image_speed = 0;
}