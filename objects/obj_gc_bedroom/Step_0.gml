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
}

if (count > 359 && count % room_speed == 0 && trigger == 2) {
	obj_dynamo.image_index += 1;
	audio_play_sound(s_dynamo_bloop, 0, false);
	
	if (obj_dynamo.image_index == 5) {
		docount = false;
		trigger += 1;
	}
} else if (count == 180 && trigger == 2) {
	instance_activate_layer(layer_get_id("Dynamo"));
	audio_play_sound(s_power_on, 0, false);
}

if (count > 59 && count % 5 == 0 && trigger == 4) {
	obj_dynamo.image_index += 1;
	
	if (obj_dynamo.image_index == 9) {
		docount = false; 
		trigger += 1;
	}
}

if (docount) count++;
else count = 0;