/// @description Button Pressed
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		if(global.money >= global.costumePrices[global.costumeNum]){
			global.costumesOwned[global.costumeNum] = true;
			show_debug_message(global.money)
			global.money -= global.costumePrices[global.costumeNum]
			show_debug_message(global.money)
			
			instance_destroy(obj_equipButton)
			instance_destroy(obj_equippedLabel)
			instance_destroy(obj_buyButton)
			instance_create_layer(obj_labelOrigin.x, obj_labelOrigin.y, "GUI", obj_equipButton)
		}
	}
}