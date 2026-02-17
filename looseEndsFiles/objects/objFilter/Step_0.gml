if (fadeCheck == false){
	image_alpha += alphaChange;
	
	if (image_alpha >= 1){
		image_alpha = 1;
		pauseTimer++;
	} if (pauseTimer == pauseDuration){
		fadeCheck = true;
	}
}

if (fadeCheck == true){
	image_alpha -= alphaChange;
	if (image_alpha <= 0){
		image_alpha = 0; 
		instance_destroy();
		 
	}
} 