/// @description Insert description here
// You can write your code in this editor
if (image_alpha < 1.00 && goup) image_alpha += 0.2;
else if (image_alpha >= 1.00 && goup) goup = false; godown = true;

if (image_alpha >= 0 && godown) image_alpha -= 0.1;
else if (image_alpha <= 0 && godown) instance_destroy();
