	

key_left       = keyboard_check(vk_left)  || keyboard_check(vk_a);
key_right      = keyboard_check(vk_right) || keyboard_check(vk_d);
key_down       = keyboard_check(vk_down)  || keyboard_check(vk_s);
			   
			   
key_jump       = keyboard_check_pressed(vk_z) || keyboard_check_pressed(vk_x) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) || keyboard_check(vk_w) || keyboard_check(vk_k);
key_jump_held  = keyboard_check(vk_z)         || keyboard_check(vk_x) || keyboard_check(vk_up) || keyboard_check(vk_space) || keyboard_check(vk_w) || keyboard_check(vk_k);

// <!----------------------->

move = -key_left + key_right;
xspeed = move * move_speed;

 // animation
//tilting
if (key_right) {
	_image_angle = lerp(_image_angle, -tilt_value, tilt_speed);
	//_image_angle = wave(-20, 20, wave_speed, 0);
	//_xscale = wave(1.1, 0.9, wave_speed, 0);
	//_yscale = wave(0.9, 1.1, wave_speed, 0);
} else {
	_image_angle = lerp(_image_angle, 0, tilt_default);
}

if (key_left) {
	_image_angle = lerp(_image_angle, tilt_value, tilt_speed);
	//_image_angle = wave(20, -20, wave_speed, 0);
	//_xscale = wave(1.1, 0.9, wave_speed, 0);
	//_yscale = wave(0.9, 1.1, wave_speed, 0);
} else {
	_image_angle = lerp(_image_angle, 0, tilt_default);
}

if (key_down && place_meeting(x, y+1, obj_collider)) {
	_xscale = lerp(_xscale, 1.5, crouch_squish);
	_yscale = lerp(_yscale, 0.5, crouch_squish);
}

 // gravity 
if (yspeed < terminal_velocity) {
	yspeed += gravity_value;
}

 // jumping
if (yspeed < 0 && !key_jump_held) {
	yspeed  = max(yspeed, 0);
}

if (key_jump || key_jump_held && !place_meeting(x, y+1, obj_collider)) {
	_yscale = 1.5;
	_xscale = 0.75;
}

if (place_meeting(x, y+1, obj_collider)) {
	yspeed = key_jump * -jump_speed;
}

 // collision 
if (place_meeting(x+xspeed,y,obj_collider)) {
	while (!place_meeting(x+sign(xspeed), y, obj_collider)) {
		x += sign(xspeed);
	}
	xspeed = 0;
}
	

if (place_meeting(x,y+yspeed,obj_collider)) {
	while (!place_meeting(x, y+sign(yspeed), obj_collider)) {
		y += sign(yspeed);
	}
	yspeed = 0;
}


 // assignment
x += xspeed;
y += yspeed;

 // check if landed
if (place_meeting(x, y+1, obj_collider) && yspeed > 0) {
	_yscale = 0.25;
	_xscale = 1.5;
	audio_play_sound(snd_land, 2, false);
}

 // standing
if (place_meeting(x, y+1, obj_collider) && !place_meeting(x, yprevious+1, obj_collider)) {
	standing = true;
} else {
	standing = false;
}

 // shader
if (flash_alpha > 0) {
	flash_alpha -= flash_decay;
}

 //squash and stretch
//if (key_left) {
//	_xscale = lerp(_xscale, -1, 0.1);
//} else {
//	_xscale = lerp(_xscale, 1, 0.1);
//}

_xscale = lerp(_xscale, 1, revert_speed);
_yscale = lerp(_yscale, 1, revert_speed);

text_xscale = lerp(text_xscale, 0.5, 0.1);
text_yscale = lerp(text_yscale, 0.5, 0.1);



 // debug keystroke
if (debug) {
	if (keyboard_check_pressed(vk_f)) {
		lose_health(1);
		//instance_create_layer(x,y,"Entities", obj_power_leaves);
		//instance_create_layer(22,40,"Entities", obj_ball);
		//instance_create_layer(22,40,"Entities", obj_powerup);
		//instance_create_layer(x,y,"FX", fx_twinkle);
		//instance_create_layer(23,18,"Entities", obj_powerup);
		//move_speed      /= 6;
		//obj_ball._speed /= 6;
		instance_create_layer(x,y, "Entities", obj_speedup);
	}
	
	if (keyboard_check_pressed(vk_r)) {
		room_restart();
	}
}