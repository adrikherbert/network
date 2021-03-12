/// @description Insert description here
// You can write your code in this editor
text[0] = "LOADING...";
print = "";
camera = view_camera[0];
tcl = 0;
load_block_x = 250;
draw_alpha = 1.00;
change_alpha = 0;
step = -1;
docount = false;
count = 0;
act1 = false;
act2 = false;
global.intro = true;
global.convo_completed = false;
global.warpx = -1;
global.warpy = -1;

instance_deactivate_layer("Instances");