
_score += 100*beam_layer
obj_player.text_xscale = 0.75;
obj_player.text_yscale = 0.25;


randomize();
if (chance(0.05) && powerup_count = 0 && !obj_player.powered) {
	instance_create_layer(x, y, "Entities", obj_powerup);
}