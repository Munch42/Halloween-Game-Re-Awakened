/// @description Setup and Spawn Instances
global.costumeNum = 0
instance_create_layer(x,y,"GUI", obj_costume1)
if(global.currentCostume == 0){
	instance_create_layer(obj_labelOrigin.x, obj_labelOrigin.y, "GUI", obj_equippedLabel)		
} else {
	instance_create_layer(obj_labelOrigin.x, obj_labelOrigin.y, "GUI", obj_equipButton)
}

