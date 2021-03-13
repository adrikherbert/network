/// @description Insert description here
// You can write your code in this editor
if (global.key) instance_destroy();

if (place_meeting(x, y, obj_benji) && keyboard_check_pressed(ord("E")) && !activated) {
	obj_benji.movable = false;
	obj_benji.stop_index = 1;
	txtbox = instance_create_depth(0, 0, 1, obj_textbox);
	txtbox.voice = s_generic_voice;
	txtbox.text[0] = "You found a key.";
	txtbox.text[1] = "...";
	txtbox.text[2] = "I won't tell if you take it.";
	activated = true;
}

if (keyboard_check_pressed(vk_space) && activated && txtbox.next < 3) {
	txtbox.l = 0;
	txtbox.next++;
	
	if (txtbox.next == 3) {
		obj_benji.movable = true;
		instance_destroy(txtbox);
		global.key = true;
	}
}