function lose_health(ammount){
	_health -= ammount;
		
	 // set rotation
	obj_heart.image_angle = 40;
	
	 // flash
	obj_heart.flash_alpha = 1;
}