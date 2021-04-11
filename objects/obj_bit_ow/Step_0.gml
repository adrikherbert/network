/// @description Insert description here
// You can write your code in this editor
if (dostuff) {
	
	switch (trigger) {
		case 0:
			docount = true;
			trigger++;
			break;
		case 2:
			image_speed = 0;
			image_index = 1;
			count = 0;
			trigger++;
			break;
		case 4:
			sprite_index = spr_bit_ow_2;
			count = 0;
			trigger++;
			break;
		case 6:
			count = 0;
			trigger++;
			break;
		case 8:
			sprite_index = spr_bit_ow_idle;
			image_speed = 1;
			
			txtbox1 = instance_create_depth(0, 0, 0, obj_textbox);
			txtbox1.voice = s_bit_ding;
			
			txtbox1.text[0] = "Hi!!! Omg!";
			txtbox1.text[1] = "I didn't think you'd come!";
			txtbox1.text[2] = "Well - none of us did. LOL.";
			txtbox1.text[3] = "So, uhh...";
			txtbox1.text[4] = "I would love to chat! But Sock told us to kill you.";
			txtbox1.text[5] = "So, uh...";
			txtbox1.text[6] = "I guess I have to kill you now!";
			
			docount = false;
			trigger++;
			break;
		case 10:
			instance_destroy(txtbox1);
			obj_benji.movable = true;
			docount = false;
			trigger++;
			
			fight = instance_create_depth(0, 0, 0, obj_fight_start);
			fight.cam = obj_camera_forest2;
		
			break;
	}
	
}

if (count == 160 && trigger == 1) trigger++;
if (count == 200 && trigger == 3) trigger++;

if (trigger == 5) {
	if (count % 20 == 0) {image_index++; audio_play_sound(s_bit_ding, 0, false);}
	if (image_index == 8) trigger++;
}

if (count == 120 && trigger == 7) trigger++;

if (trigger == 9 && keyboard_check_pressed(vk_space)) {
	if (txtbox1.next < 6) {
		txtbox1.next++;
		txtbox1.l = 0;	
	} else trigger++;
}

if (docount) count++;
else count = 0;