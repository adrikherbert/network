/// @description Insert description here
// You can write your code in this editor

if (obj_gc_fight_bit.over) instance_destroy();
if (instance_exists(obj_fight_bit) && obj_fight_bit.fight == false) fade = true;

x += chex;
y += chey;
image_angle += changle;
image_xscale = chex_scale;
image_yscale = chey_scale;

if (y > 768 || image_alpha <= 0) instance_destroy();

if (fade) image_alpha -= 0.05;