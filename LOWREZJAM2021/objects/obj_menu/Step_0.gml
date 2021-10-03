
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_w);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_s);
key_enter = keyboard_check_pressed(vk_z) || keyboard_check_pressed(vk_x) || keyboard_check_pressed(vk_enter);

select = -key_up + key_down;

// -----------------------------------


 // selecting menu
if (key_down) {
	if (current_selection >= 3) {
		current_selection = 0-1;
	}
	current_selection++;
}

if (key_up) {
	if (current_selection <= 0) {
		current_selection = 3+1;
	}
	current_selection--;
}

c[0] = c_white;
c[1] = c_white;
c[2] = c_white;
c[3] = c_white;

c[current_selection] = c_yellow;

 // entering selection

print(current_selection);