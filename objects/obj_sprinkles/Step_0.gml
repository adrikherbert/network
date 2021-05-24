/// @description Insert description here
// You can write your code in this editor

if (turn % 2 == 0) image_angle += 1.5;
else image_angle -= 1.5;

image_xscale += 0.4;
image_yscale += 0.4;

image_alpha -= 0.008;

if (image_alpha <= 0) instance_destroy();
