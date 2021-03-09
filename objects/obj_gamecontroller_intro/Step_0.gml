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
		instance_activate_layer("Instances");
		obj_camera.trigger += 1;
		change_alpha = -0.2;
		break;
}