/// @description Insert description here
// You can write your code in this editor

if (godown) {
	long_change += 0.2;
	if (long_change > 3) {
		godown = false;
		goup = true;
	}
} else if (goup) {
	long_change -= 0.2;
	if (long_change < -3) {
		godown = true;
		goup = false;
	}
}
	
y += long_change;
	
if (goright) {
	lat_change += 0.2;
	if (lat_change > 3) {
		goright = false;
		goleft = true;
	}
} else if (goleft) {
	lat_change -= 0.2;
	if (lat_change < -3) {
		goright = true;
		goleft = false;
	}
}
	
x += lat_change;
