
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_w);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_s);
key_enter = keyboard_check_pressed(vk_z) || keyboard_check_pressed(vk_x) || keyboard_check_pressed(vk_enter);

select = -key_up + key_down;

// -----------------------------------


 // selecting menu
if (key_down and should_fade_in) {
	if (current_selection >= 3) {
		current_selection = 0-1;
	}
	current_selection++;
	play_bounce_sound();
}

if (key_up and should_fade_in) {
	if (current_selection <= 0) {
		current_selection = 3+1;
	}
	current_selection--;
	play_bounce_sound();
}

c[0] = c_white;
c[1] = c_white;
c[2] = c_white;
c[3] = c_white;

c[current_selection] = c_yellow;

 // entering selection
if (key_enter and should_fade_in) {
	if (current_selection = 0) {         // PLAY
		
		room_goto_next();
		
	} else if (current_selection = 1) {  // INSTRUCTIONS
		
		should_draw_instructions = true;
		play_bounce_sound();
		
	} else if (current_selection = 2) {  // CREDITS
		
		should_draw_credits = true;
		play_bounce_sound();
		
	} else if (current_selection = 3) {  // QUIT
		
		game_end();
		play_bounce_sound();
		
	}
	
}

if (should_draw_instructions and keyboard_check_pressed(vk_escape)) {
	should_draw_instructions = false;
	
	popup_x = 48;
	popup_y = 80;
}

if (should_draw_credits and keyboard_check_pressed(vk_escape)) {
	should_draw_credits = false;
	
	popup_x = 48;
	popup_y = 80;
}

 // fading 
if (should_fade_in) {
	text_alpha = lerp(text_alpha, 1, fade_speed);
}