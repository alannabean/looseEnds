draw_self();

draw_text(143, 55, "JUNE 2009");

dateNumber = 1; 


for (rows = 0; rows < 5; rows++){
	for (columns = 0; columns < 7; columns++){
			dateX = x + 4 + (columns * 15);
			dateY = y + 21 +(rows * 12.75);
			
			
			//ternerary operation — if the number is less than 10, the offset is 3
			digitOffset = (dateNumber < 10) ? 3 : 0;
			
			if(global.todayDate == dateNumber) && global.todayDate >= 11 && global.todayDate < 17{
				draw_set_color(#b63b2e)}
			else if (global.todayDate == dateNumber){
				draw_set_color(#e4da6c);
			}
			else{
				draw_set_color(c_white);}
				
			draw_text(dateX + digitOffset, dateY, string(dateNumber));
			dateNumber++;
			
			if (dateNumber > 30) break;
		}
		if (dateNumber > 30) break;
	}
