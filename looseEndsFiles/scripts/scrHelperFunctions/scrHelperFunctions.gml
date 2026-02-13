// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function wrap(_val, _min, _max){
	if _val > _max return _min;
	else if _val < _min return _max;
	else return _val;
}


function chatterbox_update() {
	node = ChatterboxGetCurrent(chatterbox);
	text = ChatterboxGetContent(chatterbox, 0);
	
}
	
	
	