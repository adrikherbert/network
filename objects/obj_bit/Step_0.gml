/// @description Insert description here
// You can write your code in this editor
vsp = vsp + grv;

y += vsp;
x += x_direction;

image_alpha -= 0.01;

if (image_alpha < 0) {
	instance_destroy();
}