/// @description Insert description here
// You can write your code in this editor
camera = view_camera[0];
cam_width = camera_get_view_width(camera);
cam_height = camera_get_view_height(camera);
x = 510;
lr = false;

doset = false;
setx = -1;
sety = -1;


/*
x = obj_benji.x - (cam_width / 2);
y = obj_benji.y - (cam_height / 2) - 16;


y = clamp(y, 0, room_height - cam_height);

if (obj_benji.y <= 880) {
	x = 510;
} else {
	x = clamp(x, 0, room_width - cam_width);	
}

camera_set_view_pos(camera, x, y);
*/