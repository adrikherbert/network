/// @description Insert description here
// You can write your code in this editor
switch (trigger) {
	case 1:
		txtbox = instance_create_depth(0, 0, 1, obj_textbox);
		txtbox.origin = self;
		txtbox.voice = s_robin_voice;
		txtbox.text[0] = robin[0];
		
		trigger += 1;
		break;
}

if (keyboard_check_pressed(vk_space) && trigger == 2) {
	instance_destroy(txtbox);
	obj_gamecontroller_house.trigger += 1;
}