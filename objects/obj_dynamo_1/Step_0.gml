/// @description Insert description here
// You can write your code in this editor

switch (trigger) {
	case 0:
		if (count == 50) {
			txtbox1 = instance_create_depth(0, 0, 0, obj_textbox);
			txtbox1.voice = s_dynamo_1;
		
			obj_benji.movable = false;
		
			for (var i = 0; i < 13; i++) txtbox1.text[i] = dynamo1[i];
		
			trigger++;
			docount = false;
		}
		break;
	case 2:
		trigger++;
		docount = true;
		
		sprite_index = spr_dynamo_transform;
		image_index = 18;
		
		break;
	case 4:
		trigger++;
		count = 0;
		
		break;
	case 6:
		trigger++;
		count = 0;
	
		obj_benji.movable = true;
	
		instance_create_depth(x, y, depth-1, obj_dynamo_white);
		image_alpha = 0;
		audio_play_sound(s_power_on, 0, false);
		
		break;
	case 8:
		audio_play_sound(s_forest, 0, true);
		obj_camera_forest1.trigger++;
		instance_destroy();
		break;
}

if (trigger == 1 && keyboard_check_pressed(vk_space)) {
	txtbox1.l = 0;
	txtbox1.next++;
	
	if (txtbox1.next == 13) {
		instance_destroy(txtbox1);
		trigger++;
	}
}

if (trigger == 3) {
	if (count % 5 == 0) {
		image_index -= 1;
		audio_play_sound(s_dynamo_build, 0, false);
	}
	
	if (image_index == 0) trigger++;
}

if (trigger == 5 && count == 50) trigger++;

if (trigger == 7 && count = 100) trigger++;

if (docount) count++;
else count = 0;

if (docount) count++;
else count = 0;