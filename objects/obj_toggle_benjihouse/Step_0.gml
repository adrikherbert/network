/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_benji)) {
	obj_gamecontroller_house.trigger += 1;
	instance_destroy();
}