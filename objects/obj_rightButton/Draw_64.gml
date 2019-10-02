/// @description Draw GUI Elements
if(global.costumesOwned[global.costumeNum] == false){
	draw_set_colour(c_black)
	draw_set_font_ext("opensans", 25)
	draw_text(obj_priceText.x, obj_priceText.y, "Price: " + string(global.costumePrices[global.costumeNum]))
}