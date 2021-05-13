/// @description Insert description here
// You can write your code in this editor
camera = view_camera[0];
cam_width = camera_get_view_width(camera);
cam_height = camera_get_view_height(camera);

x = 0;
y = 0;

shake_x = 5;

shake_valx = shake_x;
shake_switch = 1;

shake = false;
evolve = true;

docount = false;
count = 0;