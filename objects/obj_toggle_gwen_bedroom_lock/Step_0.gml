/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_benji) && !activated) {
	if (!global.key) {
		obj_benji.movable = false;
		obj_benji.stop_index = 0;
	
		txtbox = instance_create_depth(0, 0, 1, obj_textbox);
		txtbox.voice = s_generic_voice;
		txtbox.text[0] = "It's locked.";
		activated = true;
	} else {
		if (!global.unlocked) {
			obj_benji.movable = false;
			obj_benji.stop_index = 0;
	
			txtbox = instance_create_depth(0, 0, 1, obj_textbox);
			txtbox.voice = s_generic_voice;
			txtbox.text[0] = "The key fits.";
			dounlock = true;
			activated = true;
		} else {
			room_goto(R_Gwen_Bedroom);
		}
	}
}

if (keyboard_check_pressed(vk_space) && activated) {
	instance_destroy(txtbox);
	obj_benji.x = 1280;
	obj_benji.movable = true;
	activated = false;
	if (dounlock) global.unlocked = true;
}