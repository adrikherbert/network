/// @description Insert description here
// You can write your code in this editor

switch (trigger) {
	case 1:
		sprite_index = spr_devin_sidewalk;
		image_xscale = -3;
		image_speed = 3;
		move = true;
		trigger++;
		docount = true;
		break;
	case 3:
		box = instance_create_depth(0, 0, 0, obj_textbox);
		box.text[0] = d1[0];
		box.text[1] = d1[1];
		box.voice = s_devin_voice;
		docount = false;
		trigger++;
		break;
	case 5:
		trigger++;
		break;
}

if (move) {
	x -= 5;
	if (x < 1728) {
		move = false;	
		
		image_xscale = 3;
		sprite_index = spr_devin;
		image_index = 0;
	}
}

if (trigger == 2 && count == 45) trigger++;

if (trigger == 4 && keyboard_check_pressed(vk_space)) {
	if (box.next == 1) {
		instance_destroy(box);
		trigger++;
		obj_gc_forest_pop.trigger++;
	} else {
		box.next++;
		box.l = 0;
	}
}

if (docount) count++;
else count = 0;