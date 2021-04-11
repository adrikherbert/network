/// @description Insert description here
// You can write your code in this editor
kr = keyboard_check_pressed(vk_right);
kl = keyboard_check_pressed(vk_left);
kd =  keyboard_check_pressed(vk_down);
ku = keyboard_check_pressed(vk_up);
ent = keyboard_check_pressed(vk_enter);
back = keyboard_check_pressed(vk_backspace);

if (home) {
	switch (select) {
		case 0:
			sel1.image_index = 1;
			sel2.image_index = 0;
			sel3.image_index = 0;
			sel4.image_index = 0;
			break;
		case 1:
			sel1.image_index = 0;
			sel2.image_index = 1;
			sel3.image_index = 0;
			sel4.image_index = 0;
			break;
		case 2:
			sel1.image_index = 0;
			sel2.image_index = 0;
			sel3.image_index = 1;
			sel4.image_index = 0;
			break;
		case 3:
			sel1.image_index = 0;
			sel2.image_index = 0;
			sel3.image_index = 0;
			sel4.image_index = 1;
			break;
	}
	
	if (kr) {audio_play_sound(s_generic_voice, 0, false); select += 1;}
	else if (kl) {audio_play_sound(s_generic_voice, 0, false); select -= 1;}
	
	select = clamp(select, 0, 3);
} else {
	sel1.image_index = 0;
	sel2.image_index = 0;
	sel3.image_index = 0;
	sel4.image_index = 0;
}

if (ent) {
	audio_play_sound(s_generic_voice, 0, false);
	if (select == 0) {
		menu_b = instance_create_depth(163, 343, 100, obj_fight_char_menu);
		
		home = false;
		menu = true;
	}
}

if (back && menu) {
	menu = false;
	instance_destroy(menu_b);
	home = true;
}

if (menu) {
	if (kd) {audio_play_sound(s_generic_voice, 0, false); m_select += 1;}
	else if (ku) {audio_play_sound(s_generic_voice, 0, false); m_select -= 1;}
	
	m_select = clamp(m_select, 0, 1);
}