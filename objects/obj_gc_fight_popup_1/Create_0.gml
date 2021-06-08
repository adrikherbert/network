/// @description Insert description here
// You can write your code in this editor
select = 0;
rounds = 0;

dialogue = 0;
dotalk = false;

home = true;
menu = false;
activate = false;
fight = false;
draw = false;
start = true;
cleanup = false;
over = false;
won = false;
lost = false;
time = false;

targ_x = 0;
targ_y = 0;

over_start = true;

ui = layer_get_id("Instances_UI");

fighter = noone;
enemy = obj_fight_popup_1;

sel1 = obj_fight_char_select1;
sel2 = obj_fight_char_select2;
sel3 = obj_fight_char_select3;
sel4 = obj_fight_char_select4;

m_select = 0;

instance_create_depth(room_width / 2, room_height / 2, 0, obj_fight_incircle);

trigger0 = 0;
trigger = 0;
docount = true;
count = 0;

time_max_w = 40;