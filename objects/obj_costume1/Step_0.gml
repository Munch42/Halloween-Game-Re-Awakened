

horizontalInput = keyboard_check(vk_right) - keyboard_check(vk_left); // gives you 0 or 1 or -1
verticalInput = keyboard_check(vk_down) - keyboard_check(vk_up); // gives you 0 or 1 or -1

if(horizontalInput == 0 && global.currentCostume == 0)
{
	sprite_index = spr_costume1_standing;
}
else if(horizontalInput != 0 && global.currentCostume == 0)
{
	sprite_index = spr_costume1_walking;
}
else if(horizontalInput == 0 && global.currentCostume == 1)
{
	sprite_index = spr_costume2_standing;
}
else if(horizontalInput != 0 && global.currentCostume == 1)
{
	sprite_index = spr_costume2_walking;
}
else if(horizontalInput == 0 && global.currentCostume == 2)
{
	sprite_index = spr_costume3_standing;
}
else if(horizontalInput != 0 && global.currentCostume == 2)
{
	sprite_index = spr_costume3_walking;
}
else if(horizontalInput != 0 || horizontalInput == 0 && global.currentCostume == 3)
{
	sprite_index = spr_ultimate_costume;
}


if(horizontalInput != 0  || verticalInput !=0)  // if this wasn't here and no keys are pressed it would keep going at 0 degree angle(right)
{	
	
	directionToMove = point_direction(0,0, horizontalInput,verticalInput);  //angle

	moveX = lengthdir_x(spd, directionToMove); // movement on x axis
	moveY = lengthdir_y(spd, directionToMove); // movement on y axis


	// check to see if next move is not a collision.  If not move.
	if(!place_meeting(x+moveX, y, obj_houses))
	{
		x += moveX;	
	}
	if(!place_meeting(x, y+moveY, obj_houses))
	{
		y += moveY;
	}
}


if(place_meeting(x, y + sprite_height / 2, obj_houses))
{
	var house = instance_place(x, y + sprite_height / 2, obj_houses);
	for(i = 0; i < array_length_1d(global.houses); i++)
	{
		if(global.houses[i] != house)
		{
			break;
		}
		else
		{
			instance_create_layer(house.x, house.y, "Person_Monster", choose(obj_person, obj_monster));
		}
	}

}
if(place_meeting(x, y - sprite_height / 2, obj_houses))
{
	var house = instance_place(x, y - sprite_height / 2, obj_houses);
	instance_create_layer(house.x, house.y, "Person_Monster", choose(obj_person, obj_monster));
	
}

