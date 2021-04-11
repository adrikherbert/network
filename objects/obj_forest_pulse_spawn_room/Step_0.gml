/// @description Insert description here
// You can write your code in this editor
if (count % 10 == 0) {
	instance_create_depth(irandom_range(0, 1366), irandom_range(0, 768), 600, obj_forest_pulse);
}

count++;