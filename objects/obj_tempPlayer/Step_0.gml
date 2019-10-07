horizontalInput = keyboard_check(vk_right) - keyboard_check(vk_left); // gives you 0 or 1 or -1
verticalInput = keyboard_check(vk_down) - keyboard_check(vk_up); // gives you 0 or 1 or -1

if(horizontalInput != 0  || verticalInput !=0)  // if this wasn't here and no keys are pressed it would keep going at 0 degree angle(right)
{									
	directionToMove = point_direction(0,0, horizontalInput,verticalInput);  //angle

	moveX = lengthdir_x(spd, directionToMove); // movement on x axis
	moveY = lengthdir_y(spd, directionToMove); // movement on y axis

	x += moveX;
	y += moveY;
}

if(place_meeting(x,y, obj_house))
{
	x = x + 100;
}
