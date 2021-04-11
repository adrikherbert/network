/// @description Insert description here
// You can write your code in this editor
select = 0;

home = true;
menu = false;
activate = true;
fight = false;
draw = true;
start = true;
cleanup = false;
over = false;
won = false;
lost = false;

over_start = true;

ui = layer_get_id("Instances_UI");

fighter = noone;
enemy = obj_fight_bit;

sel1 = obj_fight_char_select1;
sel2 = obj_fight_char_select2;
sel3 = obj_fight_char_select3;
sel4 = obj_fight_char_select4;

m_select = 0;

instance_create_depth(room_width / 2, room_height / 2, 0, obj_fight_incircle);

trigger = 0;
docount = false;
count = 0;