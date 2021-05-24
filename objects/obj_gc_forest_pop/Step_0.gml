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
	case 7:
		trigger++;
		docount = true;
		obj_devin_forest_pop.image_index = 2;
		layer_tilemap_destroy(wall);
		break;
	case 9:
		instance_destroy(box2);
		obj_benji.movable = true;
		trigger++;
		docount = false;
		break;
}

if (trigger == 2 && count == 60) {
	obj_devin_forest_pop.trigger++;
	trigger++;
}

if (trigger == 8 && count == 60) {
	box1 = instance_create_depth(0, 0, 0, obj_textbox);
	box1.text[0] = "We're screwed.";
	box1.voice = s_devin_voice;
}

if (trigger == 8 && count == 150) {
	instance_destroy(box1);
	box2 = instance_create_depth(0, 0, 0, obj_textbox);
	box2.text[0] = "Aren't you guys gonna run!?";
	box2.voice = s_popup_voice;
}

if (trigger == 8 && count = 250) {
	trigger++;	
}



if (docount) count++;
else count = 0;