/// @description Insert description here
if(global.costumes[global.costumeNum].x <= 0){
	room_goto(2);
} 
if (global.costumes[global.costumeNum].x >= 1023){
	global.costumes[global.costumeNum].x = global.costumes[global.costumeNum].x - 5;	
}