/// @description Button Press
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		if(global.costumeNum <= 0){
			instance_destroy(global.costumes[global.costumeNum])
			global.costumeNum = array_length_1d(global.costumes) - 1
		} else {
			instance_destroy(global.costumes[global.costumeNum])
			global.costumeNum -= 1
		}
		show_debug_message(global.costumeNum)
		
		if(global.currentCostume == global.costumeNum){
			instance_destroy(obj_equipButton)
			instance_destroy(obj_equippedLabel)
			instance_destroy(obj_buyButton)
			instance_create_layer(obj_labelOrigin.x, obj_labelOrigin.y, "GUI", obj_equippedLabel)
		} else {
			instance_destroy(obj_equipButton)
			instance_destroy(obj_equippedLabel)
			instance_destroy(obj_buyButton)
			if(global.costumesOwned[global.costumeNum] == true){
				instance_create_layer(obj_labelOrigin.x, obj_labelOrigin.y, "GUI", obj_equipButton)
			} else {
				instance_create_layer(obj_labelOrigin.x, obj_labelOrigin.y, "GUI", obj_buyButton)
			}
		}
		
		instance_create_layer(obj_costumeOrigin.x, obj_costumeOrigin.y, "GUI", global.costumes[global.costumeNum])
	}
}
