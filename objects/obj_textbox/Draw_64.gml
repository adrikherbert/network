/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(draw_alpha);

//draw textbox
draw_sprite(spr_textbox, 0, x, y);

//draw text
draw_set_font(Textbox);
draw_set_halign(fa_left);

if (l < string_length(text[next])) {
	l++;
	
	if ((l % 4 == 0) && (voice != noone)) {
		audio_play_sound(voice, 0, false);
		
		
	} else if (l == 1 && string_length(text[next]) < 4 && string_length(text[next]) > 0) {
			audio_play_sound(voice, 0, false);
	}
}

print = string_copy(text[next], 0, l);

draw_text_ext(x + 30, y + 25, print, text_height, box_width);

draw_set_alpha(1);