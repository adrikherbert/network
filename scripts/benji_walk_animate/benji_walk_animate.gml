// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function benji_walk_animate(){
	image_xscale = 3;
	
	var ord_direction = round(direction/90);
	
	if (input_magnitude > 0) {
		switch (ord_direction) {
			case 0:
				sprite_index = spr_benji_sidewalk;
				image_xscale = 3;
				break;
			case 1:
				sprite_index = spr_benji_upwalk;
				image_xscale = 3;
				break;
			case 2:
				sprite_index = spr_benji_sidewalk;
				image_xscale = -3;
				break;
			case 3:
				sprite_index = spr_benji_downwalk;
				image_xscale = 3;
				break;
			case 4:
				sprite_index = spr_benji_sidewalk;
				image_xscale = 3;
				break;
		}
		
		image_speed = 1;
	} else {
		sprite_index = spr_benji;
		image_speed = 0;
		image_index = ord_direction;
	}			
}