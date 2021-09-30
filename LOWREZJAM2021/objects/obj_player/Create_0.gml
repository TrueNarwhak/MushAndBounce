
mask_index = spr_player;

 // movement
gravity_value = 0.09;

xspeed = 0;
yspeed = 0;

jump_speed = 1.4;

move_speed = 0;
move_speed = 0.6;
terminal_velocity = 10;

standing = true;

 // technical 
globalvar _score;
globalvar _health;
globalvar _highscore;
_score    = 0;
_health   = 3;
highscore = 0;

highscore_load();

 // visual 
_image_angle  = 0; // to aviod rotating sprite mask
_xscale       = 1;
_yscale       = 1;

text_image_angle  = 0; 
text_xscale       = 0.5;
text_yscale       = 0.5;
			  
tilt_value    = 34;
tilt_speed    = 0.1;
tilt_default  = 0.2;

wave_speed    = 0.7;
revert_speed  = 0.1;


crouch_squish = 0.5;

squish_x      = 1.5;
squish_y      = 0.25;
squish_speed  = 0.1;

flash_alpha = 0;
flash_color = c_white;

flash_decay = 0.05;


 // powerups
alarm[1] = room_speed-40;

powered = false;

enum power_states {
	water,
	thunder,
	leaf,
	fire,
	health_pickup
}

powerup_decay_speed = room_speed*5;

can_create_water = false;

can_ignite_ball = false;

can_electrocute = false;
