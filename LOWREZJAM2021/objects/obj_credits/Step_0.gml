
if (should_fade_in) {
	text_alpha   = lerp(text_alpha, text_alpha_faded, fade_speed);
	header_alpha = lerp(header_alpha, header_alpha_faded, fade_speed);
}

if (should_fade_out) {
	text_alpha   = lerp(text_alpha, 0, fade_out_speed);
	header_alpha = lerp(header_alpha, 0, fade_speed);
}