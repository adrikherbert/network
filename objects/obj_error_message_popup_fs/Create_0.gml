/// @description Insert description here
// You can write your code in this editor

image_index = irandom_range(0, 10);

spin = choose(0, 1);

switch (image_index) {
	case 0:
	image_xscale = 1;
	break;
	case 1:
	image_xscale = 0.5;
	break;
	case 2:
	image_xscale = 0.5;
	break;
	case 3:
	image_xscale = 0.4;
	break;
	case 4:
	image_xscale = 1;
	break;
	case 5:
	image_xscale = 0.5;
	break;
	case 6:
	image_xscale = 0.5;
	break;
	case 7:
	image_xscale = 0.25;
	break;
	case 8:
	image_xscale = 0.25;
	break;
	case 9:
	image_xscale = 1;
	break;
	case 10:
	image_xscale = 0.25;
	break;
	case 11:
	image_xscale = 2;
	break;
}

image_yscale = image_xscale;