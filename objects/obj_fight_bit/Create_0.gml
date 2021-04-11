/// @description Insert description here
// You can write your code in this editor
hp = 20;
hb_w = 40;

fight = false;
start = true;
spinoff = false;
check_h = true;
fade = false;

go_x = 0;
go_y = 0;

stay_x = x;
stay_y = y;

min_x = 0;
min_y = 0;

hb = instance_create_depth(590, 16, 200, obj_fight_healthbar);
hb.image_index = 1;

docount = false;
count = 0;