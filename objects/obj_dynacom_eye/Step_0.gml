/// @description Insert description here
// You can write your code in this editor
image_alpha = random_range(0.4, 0.6);
x = irandom_range(permanex - 2, permanex + 2);
y = irandom_range(permaney - 2, permaney + 2);


if (count >= 160) {
	if (count % 3 == 0) {
		if (down) {
			image_index += 1;
			
			if (image_index == 11) {
				down = false;
				up = true;
				
				if (done_two == 3) {
					sprite_index = spr_forest_dynacom_eye_bloodshot;
					done_two = 0;
				} else {
					sprite_index = spr_forest_dynacom_eye;
				}
			}
		} else if (up) {
			image_index -= 1;
			
			if (image_index == 0) {
				down = true;
				up = false;
				
				count = 0;
				done_two++;
			}
		}
	}
}


if (docount) {
	count++;	
} else {
	count = 0;	
}