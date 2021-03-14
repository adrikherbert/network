/// @description Insert description here
// You can write your code in this editor
switch (trigger) {
	case 1:
		txtbox = instance_create_depth(0, 0, 0, obj_textbox);
		txtbox.voice = s_dynamo_1;
		txtbox.origin = self;
		
		for (var i = 0; i < 21; i++) txtbox.text[i] = dynamo1[i];
		
		trigger += 1;
		break;
	case 3:
		select = instance_create_depth(0, 0, 0, obj_selectbox);
		if (glitch < 5) {
			select.option1 = "Sure!";
			select.option2 = "Uh, no.";
		} else {
			select.option1 = "Sure!";
			select.option2 = "Sure!";
		}
		
		trigger += 1;
		break;
	case 5:
		if (path == 1) trigger = 7;
		else trigger = 101;
		break;
	case 7:
		txtbox2 = instance_create_depth(0, 0, 0, obj_textbox);
		txtbox2.voice = s_dynamo_1;
		txtbox2.origin = self;
		
		for (var i = 0; i < 5; i++) txtbox2.text[i] = dynamo2[i];
		
		trigger += 1;
		break;
	case 9:
		instance_create_depth(0, 768, -500, obj_coverbox);
		
		trigger += 1;
		obj_gc_bedroom.trigger += 1;
		break;
	case 101:
		audio_stop_all();
		
		switch (glitch) {
			case 0: 
				sprite_index = spr_dynamo_glitch0;
				break;
			case 1:
				sprite_index = spr_dynamo_glitch1;
				break;
			case 2:
				sprite_index = spr_dynamo_glitch2;
				break;
			case 3:
				sprite_index = spr_dynamo_glitch3;
				break;
			case 4:
				sprite_index = spr_dynamo_glitch;
				glitch_sound = s_dynamo_glitch;
				break;
			default:
				sprite_index = spr_dynamo_glitch0;
		}
		
		docount = true;
		trigger += 1;
		break;
	case 103:
		docount = true;
		trigger += 1;
		break;
}

// ADVANCE DYNAMO1
if (keyboard_check_pressed(vk_space) && trigger == 2) {
	if (instance_exists(obj_textbox)) {
		if (txtbox.next == 20) {
			instance_destroy(txtbox);
			trigger += 1;
		}
		else {
			txtbox.l = 0;
			txtbox.next++;
		}
	}
}

// DESTROY SELECTBOX AND EVALUATE SELECTION
if (keyboard_check_pressed(vk_enter) && trigger == 4) {
	if (instance_exists(obj_selectbox)) {
		if (glitch > 4) {
			path = 1;	
		} else path = select.selection
		instance_destroy(select)
		trigger += 1;
	}
}

if (keyboard_check_pressed(vk_space) && trigger == 8) {
	if (instance_exists(obj_textbox)) {
		if (txtbox2.next == 4) {
			instance_destroy(txtbox2);
			trigger += 1;
		} else {
			txtbox2.l = 0;
			txtbox2.next++;
		}
	}
}

if (count == room_speed * 2 && trigger == 102) {
	blackout = instance_create_depth(0, 0, 0, obj_blackout);
	audio_stop_all();
	audio_play_sound(s_crunch, 0, false);
	docount = false;
	trigger += 1;
}

if (trigger == 102 && count % 5 == 0 && glitch > 2) audio_play_sound(glitch_sound, 0, false);

if (trigger == 104 && count % 5 == 0 && glitch == 4) audio_play_sound(s_dynamo_glitch2, 0, false); 

if (count == room_speed / 2 && trigger == 104) {
	sprite_index = spr_dynamo_idle;
	audio_play_sound(s_crunch, 0, false);
	instance_destroy(blackout);
	
	glitch++;
	docount = false;
	trigger = 1;
}

if (docount) count++;
else count = 0;