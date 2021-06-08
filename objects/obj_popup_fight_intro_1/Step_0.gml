/// @description Insert description here
// You can write your code in this editor

if (doup) {
	float_change += 0.2;
	if (changing && float_change > 5) {
		doup = false;
		dodown = true;
	}
} else if (dodown) {
	float_change -= 0.2;
	if (changing && float_change < -5) {
		doup = true;
		dodown = false;
	}
}

y += float_change;

if (fade_in) {
	if (image_alpha <= 1) image_alpha += 0.2;
	else fade_in = false;
}

if (fade_out) {
	if (image_xscale > 0 && image_yscale > 0) {
		image_xscale -= 0.05;
		image_yscale -= 0.05;
	} else fade_out = false;
}

if (count == 90) {
	sprite_index = spr_popup_ad_giggle;
	fade_out = true;
	changing = false;
}

if (count % 6 == 0) {
	ex = irandom_range(cam.x, cam.x + cam_width);
	ey = irandom_range(cam.y, cam.y + cam_height);
	instance_create_depth(ex, ey, start_depth, obj_error_message_popup_fs);
	start_depth -= 1;
}

if (count == 165) instance_create_depth(cam.x + cam_width / 2, cam.y + cam_height / 2, -400, obj_popup_head_expand);

count++;