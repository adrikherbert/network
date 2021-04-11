/// @description Insert description here
// You can write your code in this editor
if (check_h) hb.image_xscale = hp;

if (fight) {
	if (keyboard_check(vk_left)) x -= 6;	
	else if (keyboard_check(vk_right)) x += 6;
	
	x = clamp (x, 200, 1166);
	
	if (keyboard_check_pressed(vk_space)) instance_create_depth(x, y, 300, obj_fight_bullet_benji);
	
	if (place_meeting(x, y, obj_fight_bullet_bit)) {
		audio_play_sound(s_player_hit, 0, false);
		instance_destroy(instance_place(x, y, obj_fight_bullet_bit));
		hp -= 5;
	}
} else {
	if (x != stay_x) x = stay_x;
	if (y != stay_y) y = stay_y;
}

if (fade) {
	image_alpha -= 0.01;
	if (image_alpha <= 0) instance_destroy();
}