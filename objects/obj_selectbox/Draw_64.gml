/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_textbox, 0, x, y);

draw_set_font(Textbox);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (first) draw_set_color(c_lime);
else draw_set_color(c_white);

draw_text(x + 200, y + 150, option1);

if (first) draw_set_color(c_white);
else draw_set_color(c_lime);

draw_text(x + 600, y + 150, option2);