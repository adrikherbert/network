/// @description Insert description here
// You can write your code in this editor
if (count % 10 == 0) {
	span_w = obj_camera_moving1.x;
	span_h = obj_camera_moving1.y;
	instance_create_depth(irandom_range(span_w, span_w+1366), irandom_range(span_h, span_h+768), 600, obj_forest_pulse);
}

count++;