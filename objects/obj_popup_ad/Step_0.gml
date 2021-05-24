/// @description Insert description here
// You can write your code in this editor

if (go_up) {
	image_xscale += (target_up - image_xscale) / 20;
	image_yscale += (target_up - image_yscale) / 20;
	
	if (image_xscale >= 4.9 && image_yscale >= 4.9) {
		go_up = false;
		go_down = true;
	}
} else if (go_down) {
	image_xscale += (target_down - image_xscale) / 20;
	image_yscale += (target_down - image_yscale) / 20;
	
	if (image_xscale <= 3.1 && image_yscale <= 3.1) {
		go_down = false;
		go_up = true;
	}
}

if (count % 20 == 0 && sprinkles) {
	sp = instance_create_depth(x, y, 100, obj_sprinkles);
	sp.turn = turn;
	turn++;
}

if (trigger == 0 && count == 60) {
	trigger++;	
}

if (trigger == 2 && keyboard_check_pressed(vk_space)) {
	if (box.next == 4) {
		instance_destroy(box);
		trigger++;
	} else {
		box.next++;
		box.l = 0;
	}
}

if (trigger == 4 && count == 120) {
	audio_play_sound(s_popup_laugh, 10, false);
	sprite_index = spr_popup_ad_giggle;
	dofade = true;
}

if (dofade) {
	image_alpha -= 0.02;
	if (image_alpha <= 0) instance_destroy();
}

switch (trigger) {
	case 1:
		box = instance_create_depth(0, 0, 0, obj_textbox);
		box.text[0] = "OMG!! Devin!! You found us more friends!";
		box.text[1] = "I'm SO excited to have more join in the fun!";
		box.text[2] = "Oooh! I have an idea!";
		box.text[3] = "We should play tag! I'll be it first! Haha!";
		box.text[4] = "This will be fun!";
		box.voice = s_popup_voice;
		trigger++;
		break;
	case 3:
		obj_benji.depth = 150;
		obj_devin_forest_pop.depth = 150;
		sprite_index = spr_popup_ad_arms_out;
		depth = 150;
		instance_create_depth(x, y, 170, obj_blackout_circle);
		sprinkles = false;
		
		trigger++;
		docount = true;
		count = 0;
		break;
}

if (docount) count++;
else count = 0;