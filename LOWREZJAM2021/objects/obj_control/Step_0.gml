
 // setting the counters
ball_count = instance_number(obj_ball);
beam_count = instance_number(obj_beam);

powerup_count = instance_number(obj_powerup);

 // preparing ball creation
if (beam_count > 0) {
	can_create = true;
}

 // creating beams
if (beam_count <= 0) {
	for (var i = 0; i < 4; i++) {
		var xx_shift = 8*i;
		var xx = 11;
		
		instance_create_layer(xx+xx_shift, 5,  "Beams", obj_beam);
		instance_create_layer(xx+xx_shift, 12, "Beams", obj_beam);
		instance_create_layer(xx+xx_shift, 19, "Beams", obj_beam);
		instance_create_layer(xx+xx_shift, 26, "Beams", obj_beam);
		
		lines_cleared += 1/4;
	}
}

 // score card
if (_health <= 0 && instance_number(obj_score_card) == 0) {
	instance_create_layer(22,9, "Entities", obj_score_card);
}

 // creating balls
if (beam_count <= 0 and can_create == true and lines_cleared%3 == 0) {
	instance_create_layer(22, 43, "Entities", obj_ball);
	can_create = false;
}

 // speed up
if (beam_count <= 0 and can_speed_up == true and lines_cleared%7 == 0) {
	instance_create_layer(room_width/2,room_height/2,"GUI_Instances", obj_speedup);
	
	obj_ball._speed *= ball_speed_up;
	
	obj_player.move_speed *= player_speed_up;
	obj_player.revert_speed *= player_speed_up;
	//obj_player.jump_speed *= player_speed_up;
	//obj_player.gravity_value *= player_speed_up;
	
	can_speed_up = false;
	current_speed += 1;
	
} else {
	can_speed_up = true;
}


 
//print(lines_cleared%5);