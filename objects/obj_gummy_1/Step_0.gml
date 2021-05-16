/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_benji) && keyboard_check_pressed(ord("E")) && nottalk) {
	obj_benji.movable = false;
	
	txtbox = instance_create_depth(0, 0, 0, obj_textbox);
	
	for (var i = 0; i < 20; i++) txtbox.text[i] = txt[i];
	
	txtbox.voice = s_gummy_bear_voice;
	
	nottalk = false;
}

if (!nottalk && !finished && keyboard_check_pressed(vk_space)) {
	if (txtbox.next == 19) {
		instance_destroy(txtbox);
		obj_benji.movable = true;
		finished = true;
	} else {
		txtbox.next++;
		txtbox.l = 0;
	}
}