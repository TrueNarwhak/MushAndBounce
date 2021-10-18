draw_sprite_ext(
	sprite_index, 
	0, 
	x, 
	y, 
	_xscale, 
	_yscale, 
	_image_angle, 
	c_white, 
	_alpha
);

draw_hitbox();

if (flash_alpha > 0) {
	shader_set(shd_flash);
	
	draw_sprite_ext(
		sprite_index, 
		0, 
		x, 
		y, 
		_xscale, 
		_yscale, 
		_image_angle, 
		flash_color, 
		flash_alpha
	);

	shader_reset();
}