/// @description Insert description here
// You can write your code in this editor
switch (trigger) {
	case 0:
		audio_play_sound(s_fight_start, 0, false);
		docount = true;
		
		circ0 = instance_create_depth(cam.x + 683, cam.y + 384, -100, obj_circles);
		circ0.image_index = 0;
		trigger++;
		count = 0;
		
		break;
	case 2:
		circ1 = instance_create_depth(cam.x + 683, cam.y + 384, -101, obj_circles);
		circ1.image_index = 1;
		trigger++;
		count = 0;
		
		break;
	case 4:
		circ2 = instance_create_depth(cam.x + 683, cam.y + 384, -102, obj_circles);
		circ2.image_index = 0;
		trigger++;
		count = 0;
		break;
	case 6:
		circ3 = instance_create_depth(cam.x + 683, cam.y + 384, -103, obj_circles);
		circ3.image_index = 1;
		trigger++;
		
		
		text = instance_create_depth(0, 0, -200, obj_drawtext);
		text.text = "Fight!";
		text.font = Bold;
		
		count = 0;
		break;
	case 8:
		audio_play_sound(music, -10, true);
		
		trigger++;
		count = 0;
		break;
	case 10:
		room_goto(fight_place);
		break;
}

if (trigger == 1 && count == 10) trigger++;
if (trigger == 3 && count == 10) trigger++;
if (trigger == 5 && count == 10) trigger++;
if (trigger == 7 && count == music_wait) trigger++;
if (trigger == 9 && count == leave_wait) trigger++;

if (docount) count++;
else count = 0;