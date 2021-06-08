/// @description Insert description here
// You can write your code in this editor

image_xscale = 20;
image_yscale = 20;
image_angle = -10;

angle_change = 0;
doup = true;
dodown = false;

left_outer_eye = instance_create_depth(x - 100, y - 10, 150, obj_fp1pop_eye_outer);
left_outer_eye.spin_left = true;
right_outer_eye = instance_create_depth(x + 100, y - 10, 150, obj_fp1pop_eye_outer);
right_outer_eye.spin_right = true;
right_outer_eye.image_yscale *= -1;

left_inner_eye = instance_create_depth(x - 100, y - 10, 125, obj_fp1pop_eye_inner);
left_inner_eye.spin_left = true;
right_inner_eye = instance_create_depth(x + 100, y - 10, 125, obj_fp1pop_eye_inner);
right_inner_eye.spin_right = true;
right_inner_eye.image_yscale *= -1;

mouth = instance_create_depth(x, y + 140, 115, obj_fp1pop_mouth);

left_hand = instance_create_depth(x - 220, y + 100, 105, obj_fp1pop_hand);
right_hand = instance_create_depth(x + 220, y + 100, 105, obj_fp1pop_hand);
right_hand.image_xscale *= -1;
right_hand.goright = false;
right_hand.goleft = true;