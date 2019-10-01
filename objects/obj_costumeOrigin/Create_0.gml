/// @description Setup and Spawn Instances
global.costumeNum = 0
instance_create_layer(x,y,"Instances", obj_costume1)
if(global.currentCostume == 0){
	instance_create_layer(obj_labelOrigin.x, obj_labelOrigin.y, "Instances", obj_equippedLabel)		
} else {
	instance_create_layer(obj_labelOrigin.x, obj_labelOrigin.y, "Instances", obj_equipButton)
}

