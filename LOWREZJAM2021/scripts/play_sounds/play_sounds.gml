function play_bounce_sound() {
	randomize();
	var sound_effect = choose(
		snd_ball_bounce_0,
		snd_ball_bounce_1,
		snd_ball_bounce_2,
		snd_ball_bounce_3,
		snd_ball_bounce_4
	);
	audio_play_sound(sound_effect, 1, false);
}

function play_step_sound() {
	randomize();
	var sound_effect = choose(
		snd_step_0,
		snd_step_1,
		snd_step_2
	);
	audio_play_sound(sound_effect, 1, false);
}