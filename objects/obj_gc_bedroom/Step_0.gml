/// @description Insert description here
// You can write your code in this editor
switch (trigger) {
	case 1:
		docount = true;
		trigger += 1;
		break;
	case 3:
		docount = true;
		trigger += 1;
		break;
	case 5:
		docount = true;
		trigger += 1;
		break;
	case 7:
		docount = true;
		trigger += 1;
		break;
	case 9:
		obj_dynamo.sprite_index = spr_dynamo_idle;
		obj_dynamo.x -= 2;
		obj_dynamo.y -= 2;
		
		obj_dynamo.trigger += 1;
		
		trigger += 1;
		break;
	case 11:
		audio_play_sound(s_network_start, 100, false);
		docount = true;
		trigger += 1;
		break;
}

// DYNAMO APPEAR
if (count > 359 && count % room_speed == 0 && trigger == 2) {
	obj_dynamo.image_index += 1;
	audio_play_sound(s_dynamo_bloop, 0, false);
	
	if (obj_dynamo.image_index == 5) {
		docount = false;
		trigger += 1;
	}
} else if (count == 180 && trigger == 2) {
	obj_benji_bedroom_exp.sprite_index = spr_benji_bedroom_dark_dynamo_toggle;
	instance_activate_layer(layer_get_id("Dynamo"));
	instance_create_depth(obj_dynamo.x, obj_dynamo.y, -300, obj_dynamo_white);
	audio_play_sound(s_power_on, 0, false);
}


// DYNAMO OPEN EYES
if (count > 59 && count % 5 == 0 && trigger == 4) {
	obj_dynamo.image_index += 1;
	
	if (obj_dynamo.image_index == 9) {
		docount = false; 
		trigger += 1;
	}
}

// DYNAMO TRANSFORM
if (count > 59 && count % 5 == 0 && trigger == 6) {
	if (!light) {
		obj_benji_bedroom_exp.sprite_index = spr_benji_bedroom_dynamo_toggle;
		obj_bedroom_blanket.sprite_index = spr_bedroom_blanket;
		audio_play_sound(s_light_switch, 1, false);
		
		//audio_play_sound(s_dynamo_transform, 0,  false);
		light = true;
	}
	
	obj_dynamo.image_index += 1;
	audio_play_sound(s_dynamo_build, 2, false);
	
	if (obj_dynamo.image_index == 26) {
		docount = false; 
		trigger += 1;
	}
}

// WAIT TO IDLE
if (count > room_speed && trigger == 8) {
	docount = false; 
	trigger += 1;
}

if (count == 233 && trigger == 12) {
	blackout0 = instance_create_depth(0, 0, 10, obj_blackout);
	drawtext = instance_create_depth(0, 0, 0, obj_drawtext);
	drawtext.text = "NETWORK";
	drawtext.col = c_white;
}

if (count == 466 && trigger == 12) {
	instance_destroy(drawtext);
	instance_destroy(obj_coverbox);
	instance_destroy(blackout0);
	blackout = instance_create_depth(0, 0, 0, obj_blackout);
	docount = false;
}

if (docount) count++;
else count = 0;