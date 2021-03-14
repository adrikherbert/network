/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_left)) {
	audio_play_sound(s_generic_voice, 0, false);
	first = true;
	selection = 1;
}
else if (keyboard_check_pressed(vk_right)) {
	audio_play_sound(s_generic_voice, 0, false);
	first = false;
	selection = 2;
}