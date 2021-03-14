/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(draw_alpha);

//draw textbox
draw_sprite(spr_textbox, 0, x, y);

//draw text
draw_set_font(Textbox);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (l < string_length(text[next])) {
	l += 0.5;
	
	if ((l % 3 == 0) && (voice != noone)) {

		if (voice == s_dynamo_1) {
			var num = irandom_range(1, 5);
			
			switch (num) {
				case 1:
					audio_play_sound(s_dynamo_1, 0, false);
					break;
				case 2:
					audio_play_sound(s_dynamo_2, 0, false);
					break;
				case 3:
					audio_play_sound(s_dynamo_3, 0, false);
					break;
				case 4:
					audio_play_sound(s_dynamo_4, 0, false);
					break;
				case 5:
					audio_play_sound(s_dynamo_5, 0, false);
					break;
			}
		} else audio_play_sound(voice, 0, false);
		
		
	} else if (l == 1 && string_length(text[next]) < 4 && string_length(text[next]) > 0) {
			audio_play_sound(voice, 0, false);
	}
}

print = string_copy(text[next], 0, l);

draw_text_ext(x + 30, y + 30, print, text_height, box_width);

draw_set_alpha(1);