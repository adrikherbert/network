/// @description Insert description here
// You can write your code in this editor

check_x = obj_benji.x;

if (check_x < 1366) {
	cam.trigger = 0;
} else if (check_x < 2732) {
	cam.trigger = 2;	
} else if (check_x < 4098) {
	cam.trigger = 4;	
}