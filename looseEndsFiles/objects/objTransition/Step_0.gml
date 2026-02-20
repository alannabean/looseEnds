image_alpha -= alphaChange;
	
	if (image_alpha <= 0){
		image_alpha = 0; 
		instance_destroy(); 
	}