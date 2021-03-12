/// @description Insert description here
// You can write your code in this editor
switch (trigger) {
	case 1:
		txtbox = instance_create_depth(0, 0, 1, obj_textbox);
		txtbox.origin = self;
		txtbox.voice = s_robin_voice;
		txtbox.text[0] = robin[0];
		
		trigger += 1;
		break;
	case 3:
		image_index = 0;
		docount = true;
		trigger += 1;
		break;
	case 5:
		txtbox2 = instance_create_depth(0, 0, 1, obj_textbox);
		txtbox2.origin = self;
		txtbox2.voice = s_robin_voice;
		docount = false;
		start2 = true;
		
		for (var i = 0; i < 9; i++)
		{
			txtbox2.text[i] = robin2[i];	
		}
		
		trigger += 1;
		break;
	case 7:
		walk_to_x = obj_benji.x;
		walk_to_y = obj_benji.y;
		dowalk = true;
		audio_play_sound(s_robin_swoop, 0, false);
		trigger += 1;
		break;
	case 9:
		docount = true;
		trigger += 1;
		break;
	case 11:
		instance_destroy(black);
		count = 0;
		trigger += 1;
		break;
	case 13:
		txtbox3 = instance_create_depth(0, 0, 1, obj_textbox);
		txtbox3.origin = self;
		txtbox3.voice = s_robin_voice_yell;
		docount = false;
		
		txtbox3.text[0] = robin3[0];
		
		trigger += 1;
		break;
	case 15:
		obj_gamecontroller_house.trigger += 1;
		trigger += 1;
		break;
}

if (keyboard_check_pressed(vk_space) && trigger == 2 && !start1) {
	instance_destroy(txtbox);
	start1 = true;
	obj_gamecontroller_house.trigger += 1;
} else if (keyboard_check_pressed(vk_space) && !destroyed && start2) {
	txtbox2.l = 0;
	txtbox2.next++;
	
	if (txtbox2.next == 9) {
		instance_destroy(txtbox2);
		trigger += 1;
		destroyed = true;
	}
} else if (keyboard_check_pressed(vk_space) && trigger == 14) {
	instance_destroy(txtbox3);
	trigger += 1;
}

if (docount) count += 1;
else count = 0;

if (count == room_speed && trigger == 4) trigger += 1;
else if (count == room_speed && trigger == 10) trigger += 1;
else if (count == room_speed / 2 && trigger == 12) trigger += 1;

if (dowalk) {
	if (x != walk_to_x) {
		x += (walk_to_x - x) / 10;
	}
	
	if (y != walk_to_y) {
		y += (walk_to_y - y) / 10;	
	}
	
	if (place_meeting(x, y, obj_benji)) {
		black = instance_create_depth(0, 0, 1, obj_blackout);
		audio_play_sound(s_robin_smack, 0, false);
		x = og_x;
		y = og_y;
		image_index = 1;
		trigger += 1;
		dowalk = false;
	}
}