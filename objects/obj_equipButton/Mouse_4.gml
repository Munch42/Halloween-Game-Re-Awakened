/// @description Button Pressed
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		global.currentCostume = global.costumeNum
		instance_create_layer(x, y, "Instances", obj_equippedLabel)
		instance_destroy()
	}
}