/// @description Spawn Player
if(room != ChangeRoom){
	instance_create_layer(obj_spawnPoint.x, obj_spawnPoint.y, "Person_Monster", obj_costume1 /*global.costumes[global.currentCostume]*/)	
}