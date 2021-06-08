/// @description Insert description here
// You can write your code in this editor

if (count == 120) {
	image_index = 1;
	
	box = instance_create_depth(0, 0, 0, obj_textbox);
	box.voice = s_popup_voice_evil;
	box.text[0] = "Gotcha!";
}

if (count == 200) {
	instance_destroy(box);
	fight = instance_create_depth(0, 0, 0, obj_fight_start_popup_1);
	fight.music = s_popup_fight_1;
	fight.cam = obj_camera_forest_pop;
	fight.music_wait = 120;
	fight.leave_wait = 190;
	fight.fight_place = R_Fight_Popup_1;
	fight.no_text = true;
}

if (count == 220) {
	instance_destroy();
}

if (docount) count++;
else count = 0;