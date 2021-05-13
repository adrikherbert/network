/// @description Insert description here
// You can write your code in this editor
if (check_h) hb.image_xscale = hp * 2;

if (fight) {
	if (start) {
		docount = true;
		go_x = irandom_range(4, 10);
		go_y = irandom_range(2, 4);
		
		start = false;
		
		if (obj_gc_fight_bit.rounds % 2 == 0) spin = true;
		else spin = false;
	}
	
	if (x > 1166) {
		if (spin) {
			obj_camera_fight_bit.shake = true;
			audio_play_sound(s_bit_bounce, -5, false);
		} else audio_play_sound(s_bit_bounce_weak, -5, false);
		min_x = 1;
	}
	else if (x < 200) {
		if (spin) {
			obj_camera_fight_bit.shake = true;
			audio_play_sound(s_bit_bounce, -5, false);
		} else audio_play_sound(s_bit_bounce_weak, -5, false);
		min_x = 0;
	}
	
	if (y > 300) {
		if (spin) {
			obj_camera_fight_bit.shake = true;
			audio_play_sound(s_bit_bounce, -5, false);
		} else audio_play_sound(s_bit_bounce_weak, -5, false);
		min_y = 1;
	}
	else if (y < 100) {
		if (spin) {
			obj_camera_fight_bit.shake = true;
			audio_play_sound(s_bit_bounce, -5, false);
		} else audio_play_sound(s_bit_bounce_weak, -5, false);
		min_y = 0;
	}
	
	switch (min_x) {
		case 0:
			x += go_x;
			break;
		case 1:
			x -= go_x;
			break;
	}
	
	switch (min_y) {
		case 0:
			y += go_y;
			break;
		case 1:
			y -= go_y;
			break;
	}
	
	if (place_meeting(x, y, obj_fight_bullet_benji)) {
		audio_play_sound(s_generic_enemy_hit, 0, false);
		instance_destroy(instance_place(x, y, obj_fight_bullet_benji));
		hp -= 0.8;
	}
	
	if (count % 30 == 0) instance_create_depth(x, y, 300, obj_fight_bullet_bit);
	
	if (spin) image_angle += 4;
	
} else {
	if (!start) start = true;
	x = stay_x;
	y = stay_y;
	
	image_angle = 0;
}

if (spinoff) {
	image_xscale -= 0.1;
	image_yscale -= 0.1;
	
	if (image_yscale < 0 && image_xscale < 0) instance_destroy();
}

if (fade) {
	image_alpha -= 0.01;
	if (image_alpha <= 0) instance_destroy();
}

if (docount) count++;
else count = 0;