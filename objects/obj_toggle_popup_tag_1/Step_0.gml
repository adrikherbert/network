/// @description Insert description here
// You can write your code in this editor

camex = camera_get_view_x(cam);
camey = camera_get_view_y(cam);

if (place_meeting(x, y, obj_benji) && notactivated) {
	audio_play_sound(s_popup_error, 20, false);	
	
	randex = irandom_range(camex, camex + cam_width);
	randey = irandom_range(camey, camey + cam_height);
	instance_create_depth(randex, randey, 0, obj_error_message);
	
	notactivated = false;
	dostop = true;
	docount = true;
}

if (dostop) {
	obj_benji.movable = false;
}

if (count == 5) {
	obj_benji.movable = true;
	instance_destroy();
}

if (docount) count++;
else count = 0;