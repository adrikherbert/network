/// @description Insert description here
// You can write your code in this editor
collision_map = layer_tilemap_get_id(layer_get_id("CollisionMap"));
walk_speed = 4;
movable = true;
stop_sprite = spr_benji;
stop_index = 0;

global.stopdex = -1;

warpx = -1;
warpy = -1;

image_speed = 0;

image_xscale = 3;
image_yscale = 3;