if objPenny.pennyKnitting == true {
	draw_sprite_part(sprKnitsLong, spriteKnit, knitPartX, knitPartY, knitPartWidth, (knitPartHeight*knitProgress), knitX, knitY);
}

if objPenny.pennyKnitting == false {

	draw_sprite_part(sprKnitsLong, spriteKnit, knitPartX, knitPartY, knitPartWidth, (knitPartHeight*knitProgress), 12, 32);

}
