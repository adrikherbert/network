/// @description Insert description here
// You can write your code in this editor


tcl += 0.12;
step += 1;

if (draw_alpha <= 1.00 && draw_alpha > 0.00) {
	draw_alpha += change_alpha;
}

if (string_length(print) < string_length(text[0])) {
	print = string_copy(text[0], 0, tcl);
}

switch (step) {
	case 20:
		audio_play_sound(s_loading, 0, false);
		break;
	case 200:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 210:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 220:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 230:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 240:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 250:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 260:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 270:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 280:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 290:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 300:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 310:
		instance_create_depth(load_block_x, 500, 0, obj_loadbar);
		load_block_x += 74;
		break;
	case 400:
		instance_activate_layer(layer_get_id("Instances"));
		obj_camera.trigger += 1;
		change_alpha = -0.2;
		obj_benji_bedroom_exp.sprite_index = spr_benji_bedroom_dark;
		obj_bedroom_blanket.sprite_index = spr_bedroom_blanket_dark;
		obj_benji.movable = false;
		obj_benji.stop_sprite = spr_benji;
		obj_benji.stop_index = 3;
		docount = true;
		break;
}

if (docount) count += 1;
else count = 0;

if (count == room_speed * 3 && !act1) {
	chatbox = instance_create_depth(0, 0, 0, obj_chatbox);
	chatbox.x = 270;
	chatbox.y = 300;
	chatbox.text[0] = "Benji...";
	chatbox.text[1] = "Benji!!!!";
	chatbox.voice = s_robin_voice;
	count = 0;
	act1 = true;
}

if (count == room_speed * 5) {
	chatbox.l = 0;
	chatbox.next++;
	chatbox.voice = s_robin_voice_yell;
	count = 0;
	act2 = true;
}

if (count == room_speed * 2 && act2) {
	instance_destroy(chatbox);
	docount = false;
	obj_benji.movable = true;
	obj_benji_bedroom_exp.sprite_index = spr_benji_bedroom;
	obj_bedroom_blanket.sprite_index = spr_bedroom_blanket;
	obj_benji.sprite_index = spr_benji;
	obj_benji.image_index = 3;
	audio_play_sound(s_light_switch, 0, false);
	act2 = false;
}