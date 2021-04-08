/// @description Insert description here
// You can write your code in this editor
if (count % 5 == 0) {
	make = instance_create_depth(x, y, depth, obj_forest_pulse_static);	
	make.image_index = image_index;
}

if (count == 200) instance_destroy();

if (dir == 1) x += sp;
else if (dir == 2) y += sp;

count++;