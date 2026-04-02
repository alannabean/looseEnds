if objPenny.pennyKnitting == true {
	draw_sprite_part(sprKnits, spriteKnit, knitPartX, knitPartY, knitPartWidth, (knitPartHeight*knitProgress), knitX, knitY);
}

if objPenny.pennyKnitting == false {

	draw_sprite_part(sprKnits, spriteKnit, knitPartX, knitPartY, knitPartWidth, (knitPartHeight*knitProgress), 12, 32);

}
