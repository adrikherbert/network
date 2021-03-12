// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function warp_set_loc(place, dex, dey){
	room_goto(place);
	if (dex != -1) global.warpx = dex;
	if (dey != -1) global.warpy = dey;
}