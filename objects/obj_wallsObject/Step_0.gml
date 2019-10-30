/// @description Insert description here
if(global.costumes[global.costumeNum].x >= 1023){
	room_goto(0);
} 
if (global.costumes[global.costumeNum].x <= 0){
	global.costumes[global.costumeNum].x = global.costumes[global.costumeNum].x + 5;	
}