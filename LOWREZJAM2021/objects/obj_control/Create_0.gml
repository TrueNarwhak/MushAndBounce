globalvar ball_count;
globalvar beam_count;
globalvar powerup_count;

globalvar lines_cleared;

globalvar debug;

globalvar flag_has_lost_once;

globalvar current_speed;

globalvar paused;
	
ball_count = instance_number(obj_ball);
beam_count = instance_number(obj_beam);

powerup_count = instance_number(obj_powerup);

lines_cleared = 0;

flag_has_lost_once = false;

debug = should_debug_notification;
can_create = true;
can_speed_up = true;

player_speed_up = 1.6;
ball_speed_up   = 1.25;
current_speed   = 0; // visual not mechanical 

paused = false;
pause_text_location_x = 22;
pause_text_location_y = 18;