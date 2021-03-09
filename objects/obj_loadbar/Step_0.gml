/// @description Insert description here
// You can write your code in this editor
if (image_alpha < 1) {
	image_alpha += 0.10;
}

if (image_xscale > 1) {
	image_xscale -= 0.10;
}

if (image_yscale > 1) {
	image_yscale -= 0.10;
}

if (image_angle > 0) {
	image_angle -= 5;
}

if (image_alpha == 1 && bits) {
	audio_play_sound(s_loadbar_thock, -1, false);
	
	for (i = 0; i < 20; i += 1) {
		instance_create_depth(x, y, 10, obj_bit);
	}
	
	bits = false;
}



x = irandom_range(x_center - 1, x_center + 1);
y = irandom_range(y_center - 1, y_center + 1);