/// @description Spawn Player
if(room != ChangeRoom){
	instance_create_layer(obj_spawnPoint.x, obj_spawnPoint.y, "Instances", global.costumes[global.currentCostume])	
}