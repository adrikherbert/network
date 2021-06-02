/// @description Insert description here
// You can write your code in this editor

if (turn % 2 == 0) image_angle += 1.5;
else image_angle -= 1.5;

image_xscale += scale_up;
image_yscale += scale_up;

image_alpha -= alpha_down;

if (image_alpha <= 0) instance_destroy();
