with (other) {
	instance_destroy();
}

if (!invincible) {
	invincible = true;
	lose_health(1);
	alarm[0] = time;
}