
last_health         = current_health;
image_index         = _health;


if(last_health != _health) {
	print("true");
}

 // reduce flash
if (flash_alpha > 0) {
	flash_alpha -= flash_decay;
}

image_angle = lerp(image_angle, 0, 0.1);