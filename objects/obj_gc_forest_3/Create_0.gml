/// @description Insert description here
// You can write your code in this editor

buttons[0] = 0;
buttons[1] = 0;
buttons[2] = 0;
buttons[3] = 0;

wall = layer_tilemap_get_id(layer_get_id("CollisionDisappear"));
wall_up = true;

pressed = 0;

unlocked = false;

docount = false;
count = 0;
trigger = 0;