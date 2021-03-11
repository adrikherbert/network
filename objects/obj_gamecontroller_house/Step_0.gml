/// @description Insert description here
// You can write your code in this editor
if (obj_benji.y > 1000 && notactivated) {
	trigger += 1;
	notactivated = false;
}

if (count == room_speed * 3 && trigger == 2) trigger += 1;	

if (count == room_speed * 1 && trigger == 8) trigger += 1;

switch (trigger) {
	case 1:
		obj_benji.stop_index = 3;
		obj_benji.movable = false;
		docount = true;
		trigger += 1;
		break;
	case 3:
		obj_robin.trigger += 1;
		trigger += 1;
		docount = false;
		break;
	case 5:
		obj_benji.movable = true;
		trigger += 1;
		break;
	case 7:
		obj_benji.stop_index = 0;
		obj_benji.stop_sprite = spr_benji;
		obj_benji.movable = false;
		docount = true;
		trigger += 1;
		break;
	case 9:
		obj_robin.trigger += 1;
		docount = false;
		trigger += 1;
		break;
	case 11:
		obj_benji.movable = true;
		trigger += 1;
		break;
}


if (docount) count += 1;
else count = 0;