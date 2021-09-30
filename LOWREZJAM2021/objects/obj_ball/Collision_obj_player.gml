
if (obj_player.can_electrocute and can_create_zap) {
	instance_create_layer(obj_player.x, obj_player.y, "Entities", obj_zap);
}