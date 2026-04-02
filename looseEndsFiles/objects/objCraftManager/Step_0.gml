if (objPenny.image_xscale == -1){

knitX = objPenny.x - 7;
knitY = objPenny.y - 11;

}else{
knitX = objPenny.x - 12;
knitY = objPenny.y - 11;
}

if (knitProgress >= knitInterval){
	projectFinished = true;
	knitProgress = knitInterval;
	}

if (knitProgress < knitInterval) && objPenny.pennyKnitting == true{
	projectFinished = false;
	knitProgress++;
	}
	

if room == computerRoom {
	
visible = false}
else {visible = true}