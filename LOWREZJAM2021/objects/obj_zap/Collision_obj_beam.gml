
instance_destroy();

with(other) {
	instance_destroy();
}

if (sound_player) {
	audio_play_sound(snd_thunder_hit, 3, false);
}