/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x, y, obj_benji)) activate = true;

if (activate) {
	if (place_meeting(x, y, obj_benji) && !act) {
		obj_benji.movable = false;
		txtbox = instance_create_depth(0, 0, 1, obj_textbox);
		txtbox.voice = s_generic_voice;
		txtbox.text[0] = "Probably shouldn't go into mom's room before talking to her.";
		
		if (global.convo_completed) {
			if (!beensaid) {
				obj_benji.movable = true;
				instance_destroy(txtbox);
				instance_destroy();
			}
			
			txtbox.text[1] = "Oh... I already said that? Oops."
			txtbox.text[2] = "Carry on."
		}
		
		beensaid = true;
		act = true;
	}
	
	if (keyboard_check_pressed(vk_space) && act) {
		if (global.convo_completed && act && txtbox.next < 3) {
			txtbox.l = 0;
			txtbox.next++;
		} else {
			instance_destroy(txtbox);
			obj_benji.x = 1094;
			obj_benji.movable = true;
			activate = false;
			act = false;
		}
		
		if (txtbox.next == 3) {
			instance_destroy(txtbox);
			obj_benji.movable = true;
			obj_gamecontroller_house.trigger += 1;
		}
	}
}
