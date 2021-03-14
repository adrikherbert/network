/// @description Insert description here
// You can write your code in this editor

if (count == 1) {
	if (!place_meeting(x+32, y, obj_coverbox)) instance_create_depth(x + 32, y, depth, obj_coverbox);
	if (!place_meeting(x, y+32, obj_coverbox)) instance_create_depth(x, y + 32, depth, obj_coverbox);
	
	image_index = 7;
}

if (docount) count++;
else count = 0;