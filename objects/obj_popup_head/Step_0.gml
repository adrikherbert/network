/// @description Insert description here
// You can write your code in this editor

if (count == 120) {
	image_index = 1;
	
	box = instance_create_depth(0, 0, 0, obj_textbox);
	box.voice = s_popup_voice_evil;
	box.text[0] = "Gotcha!";
}

if (count == 240) {
	instance_destroy(box);
	instance_destroy();
}

if (docount) count++;
else count = 0;