/// @description Insert description here
// You can write your code in this editor

image_xscale *= 0.98;
image_yscale = image_xscale;

if (image_xscale <= 0.001) {
	instance_destroy();	
}

if (spin == 0) {
	image_angle += 0.5;	
} else {
	image_angle -= 0.5;
}