/// @description Insert description here
// You can write your code in this editor
if (count % 10 == 0) {
	span_w = cam.x;
	span_h = cam.y;
	instance_create_depth(irandom_range(span_w, span_w+1366), irandom_range(span_h, span_h+768), 800, obj_forest_pulse);
}

count++;