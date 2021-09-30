 // movement
gravity_value = 0.09;

yspeed = 0;

jump_speed = 1.4;

move_speed = 0;
move_speed = 0.6;
terminal_velocity = 10;

bounce = 1.4;
bounce_decay = 0.35;

text_xscale = 1/4;
text_yscale = 1/4;

flag_has_lost_once = true;

 // highscore
if (_score > _highscore) {
	_highscore = _score;
	
	highscore_save();
}