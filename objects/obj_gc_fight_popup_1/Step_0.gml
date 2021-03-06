/// @description Insert description here
// You can write your code in this editor

if (activate) {

	kr = keyboard_check_pressed(vk_right);
	kl = keyboard_check_pressed(vk_left);
	kd =  keyboard_check_pressed(vk_down);
	ku = keyboard_check_pressed(vk_up);
	ent = keyboard_check_pressed(vk_enter);
	back = keyboard_check_pressed(vk_backspace);

	if (home) {
		switch (select) {
			case 0:
				sel1.image_index = 1;
				sel2.image_index = 0;
				sel3.image_index = 0;
				sel4.image_index = 0;
				break;
			case 1:
				sel1.image_index = 0;
				sel2.image_index = 1;
				sel3.image_index = 0;
				sel4.image_index = 0;
				break;
			case 2:
				sel1.image_index = 0;
				sel2.image_index = 0;
				sel3.image_index = 1;
				sel4.image_index = 0;
				break;
			case 3:
				sel1.image_index = 0;
				sel2.image_index = 0;
				sel3.image_index = 0;
				sel4.image_index = 1;
				break;
		}
	
		if (kr) {audio_play_sound(s_generic_voice, 0, false); select += 1;}
		else if (kl) {audio_play_sound(s_generic_voice, 0, false); select -= 1;}
	
		select = clamp(select, 0, 3);
	} else {
		sel1.image_index = 0;
		sel2.image_index = 0;
		sel3.image_index = 0;
		sel4.image_index = 0;
	}

	if (ent && !menu && !fight && !over) {
		audio_play_sound(s_generic_voice, 0, false);
		if (select == 0) {
			menu_b = instance_create_depth(163, 343, 100, obj_fight_char_menu);
		
			home = false;
			menu = true;
		}
	} else if (ent && menu) {
		if (m_select == 0) fight = true;
		
		instance_destroy(menu_b);
		menu = false;
	}

	if (back && menu) {
		menu = false;
		instance_destroy(menu_b);
		home = true;
	}

	if (menu) {
		if (kd) {audio_play_sound(s_generic_voice, 0, false); m_select += 1;}
		else if (ku) {audio_play_sound(s_generic_voice, 0, false); m_select -= 1;}
	
		m_select = clamp(m_select, 0, 1);
	}
	
	if (fight) {
		if (start) {
			draw = false;
			layer_set_visible(ui, false);
		
			// Use this to select the fighter
			switch (select) {
				case 0:
					fighter = obj_benji_fight;
					break;
			}
			
			rounds++;
			trigger = 0;
			start = false;
			docount = true;
		}
		
		
		switch (trigger) {
			case 0:
				targ_x = 683;
				targ_y = 700;
				if (instance_exists(fighter)) fighter.autoplace = false;
				trigger++;
				count = 0;
				break;
			case 2:
				fighter.fight = true;
				enemy.fight = true;
				
				tb = instance_create_depth(1100, 16, 200, obj_fight_timebar);
				tb.image_index = 2;
				time = true;
				
				count = 0;
				trigger++;
				break;
			case 4:
				enemy.fight = false;
				fighter.fight = false;
				
				targ_x = fighter.permanex;
				targ_y = fighter.permaney;
				
				trigger++;
				count = 0;
				break;
			case 6:
				fight = false;
				cleanup = true;
				break;
		}
		
		if ((trigger == 1 || trigger == 5) && fighter.x != targ_x) fighter.x += (targ_x - fighter.x) / 15;
		if ((trigger == 1 || trigger == 5) && fighter.y != targ_y) fighter.y += (targ_y - fighter.y) / 15;
		if ((trigger == 1 || trigger == 5) && count == 60) trigger++;
		
		if (trigger == 3 && count == 400) trigger++;
		
		if (fighter.hp <= 0) {
			fight = false; 
			over = true; 
			lost = true; 
			
			obj_camera_fight_bit.shake = false;
			instance_destroy(tb);
		}
		
		if (enemy.hp <= 0) {
			fight = false; 
			over = true; 
			won = true; 
			
			obj_camera_fight_bit.shake = false;
			instance_destroy(tb);
		}
		
		if (time && tb.image_xscale > 0) tb.image_xscale = ((400 - count) / time_max_w) * 3;
		else if (time) {
			instance_destroy(tb);
			time = false;
		}
		
	} else if (!start) start = true;
	
	if (cleanup) {
		home = true;
		fighter.autoplace = true;
		
		layer_set_visible(ui, true);
		draw = true;
		trigger = 0;
		docount = false;
		
		cleanup = false;
	}
	
	if (over) {
		if (over_start) {
			audio_stop_all();
			instance_destroy(obj_forest_pulse_spawn_room);
			instance_destroy(obj_fight_healthbar);
			instance_destroy(obj_forest_pulse);
			instance_destroy(obj_forest_pulse_static);
		
			fighter.check_h = false;
			enemy.check_h = false;
			
			enemy.fight = false;
			fighter.fight = false;
			
			fighter.stay_x = fighter.x;
			fighter.stay_y = fighter.y;
			
			enemy.stay_x = enemy.x;
			enemy.stay_y = enemy.y;
			
			trigger = 0;
			over_start = false;
		}
		
		if (won) {
			switch (trigger) {
				case 0:
					audio_play_sound(s_generic_enemy_hit, 0, false);
					global.bit_complete = true;
					trigger++;
					count = 0;
					break;
				case 2:
					audio_play_sound(s_enemy_death, 0, false);
					obj_fight_bit.spinoff = true;
					trigger++;
					count = 0;
					break;
				case 4:
					audio_play_sound(s_victory, 0, false);
					fighter.fade = true;
					trigger++;
					count = 0;
					break;
				case 6:
					txt = instance_create_depth(0, 0, 0, obj_drawtext);
					txt.text = "Victory!";
					trigger++;
					count = 0;
					break;
				case 8:
					instance_destroy(txt);
					room_goto(R_Forest_2);
					trigger++;
					count = 0;
					break;
			}
		}
		else if (lost) {
			switch (trigger) {
				case 0:
					audio_play_sound(s_player_hit, 0, false);
					instance_destroy(enemy);
					trigger++;
					count = 0;
					break;
				case 2:
					audio_play_sound(s_game_over, 0, false);
					fighter.fade = true;
					trigger++;
					count = 0;
					break;
				case 4:
					txt = instance_create_depth(0, 0, 0, obj_drawtext);
					txt.text = "Game Over";
					trigger++;
					count = 0;
					break;
			}
		}
	}
	
	if (won && trigger == 1 && count == 110) trigger++;
	if (won && trigger == 3 && count == 60) trigger++;
	if (won && trigger == 5 && count == 132) trigger++;
	if (won && trigger == 7 && count == 260) trigger++;
	
	if (lost && trigger == 1 && count == 120) trigger++;
	if (lost && trigger == 3 && count == 132) trigger++;
}

if (dotalk) {
	switch (dialogue) {
		case 0:
			box1 = instance_create_depth(0, 0, 0, obj_textbox);
			box1.voice = s_popup_voice;
			box1.text[0] = "You're it!";
			
			dialogue++;
			break;
	}
	
	if (dialogue == 1 && keyboard_check_pressed(vk_space)) {
		if (box1.next < 0) {
			box1.next++;
			box1.l = 0;
		} else {
			instance_destroy(box1);
			dotalk = false;
			activate = true;
			draw = true;
		}
	}
}

switch (trigger0) {
	case 0:
		trigger0++;
		break;
	case 2:
		dotalk = true;
		docount = false;
		trigger0++;
		break;
}

if (trigger0 == 1 && count == 60) trigger0++;

if (docount) count++;
else count = 0;