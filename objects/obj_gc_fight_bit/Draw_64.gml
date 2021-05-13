/// @description Insert description here
// You can write your code in this editor

if (draw) {
	draw_set_color(c_white);
	draw_set_font(Pixel_Fight);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);

	draw_text(238, 655, "Benji");
	draw_text(535, 655, "???");
	draw_text(830, 655, "???");
	draw_text(1125, 655, "???");

	if (menu) {
		draw_set_font(Pixel_Fight_Menu);
	
		if (select == 0) {
			if (m_select == 0) draw_set_color(c_yellow);
			else draw_set_color(c_white);
		
			draw_text(240, 400, "Fight");
		
			if (m_select == 1) draw_set_color(c_yellow);
			else draw_set_color(c_white);
		
			draw_text(240, 500, "Item");
		}
	}
}