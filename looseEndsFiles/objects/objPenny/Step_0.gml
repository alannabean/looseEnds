
//keyboard positions for player character
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);


xspd = (rightKey - leftKey) * movSpd;
yspd = (downKey - upKey) * movSpd;

//sprite declarations depending on movement
if yspd == 0
{
if xspd >0 {sprite_index = sprWalk; image_xscale = -1};
if xspd <0 {sprite_index = sprWalk; image_xscale = 1};
}

if xspd == 0
{
if yspd >0 {sprite_index = sprWalk; image_xscale = -1};
if yspd <0 {sprite_index = sprWalk; image_xscale = 1};
}


//collision detection 

if place_meeting(x + xspd, y, objWall)
{
xspd = 0;
}
if place_meeting (x, y + yspd, objWall)
{
yspd = 0;
}


if place_meeting(x + xspd, y, objDoor)
{
room_goto(targetRoom);

}
if place_meeting (x, y + yspd, objDoor)
{
room_goto(targetRoom);
}

if keyboard_check_pressed(vk_shift){
	room_goto(room_last);
}

x += xspd;
y += yspd;


if xspd == 0 && yspd == 0 
{sprite_index = sprIdle};


//pause character movement when textbox is scrolling
if instance_exists(objTextbox){
	movSpd = 0;
}else{
	movSpd = .5}

//special sprite interactions

if place_meeting(x + xspd, y, objCouch)
{
xspd = 0;
sprite_index = sprSitKnit;
}
if place_meeting (x, y + yspd, objCouch)
{
yspd = 0;
sprite_index = sprSitKnit;
}

//turn penny into cursor while on the computer
if instance_exists(objComputerManager){
	sprite_index = sprCursor;
	movSpd = 1.5;	
}



depth = -bbox_bottom;

