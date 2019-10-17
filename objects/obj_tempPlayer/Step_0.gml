horizontalInput = keyboard_check(vk_right) - keyboard_check(vk_left); // gives you 0 or 1 or -1
verticalInput = keyboard_check(vk_down) - keyboard_check(vk_up); // gives you 0 or 1 or -1

if(horizontalInput != 0  || verticalInput !=0)  // if this wasn't here and no keys are pressed it would keep going at 0 degree angle(right)
{									
	directionToMove = point_direction(0,0, horizontalInput,verticalInput);  //angle

	moveX = lengthdir_x(spd, directionToMove); // movement on x axis
	moveY = lengthdir_y(spd, directionToMove); // movement on y axis


	// check to see if next move is not a collision.  If not move.
	if(!place_meeting(x+moveX, y, obj_house))
	{
		x += moveX;	
	}
	if(!place_meeting(x, y+moveY, obj_house))
	{
		y += moveY;
	}
	
	
}


if(place_meeting(x + sprite_width / 2, y + sprite_height / 2, obj_house))
{
	var house = instance_place(x + sprite_width / 2, y + sprite_height / 2, obj_house);
	instance_create_layer(house.x, house.y, "Person_Monster", obj_person);

}
if(place_meeting(x - sprite_width / 2, y - sprite_height / 2, obj_house))
{
	var house = instance_place(x - sprite_width / 2, y - sprite_height / 2, obj_house);
	instance_create_layer(house.x, house.y, "Person_Monster", obj_person);

}

if(place_meeting(x + sprite_width / 2, y + sprite_height / 2, obj_house2))
{
	var house = instance_place(x + sprite_width / 2, y + sprite_height / 2, obj_house2);
	instance_create_layer(house.x, house.y, "Person_Monster", obj_monster);

}
if(place_meeting(x - sprite_width / 2, y - sprite_height / 2, obj_house2))
{
	var house = instance_place(x - sprite_width / 2, y - sprite_height / 2, obj_house2);
	instance_create_layer(house.x, house.y, "Person_Monster", obj_monster);

}