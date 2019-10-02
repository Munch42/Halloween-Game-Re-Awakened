// draw_set_size(size)
var font = asset_get_index(global.currentFont + string(argument0));
if(font_exists(font)){
	draw_set_font(font);
	return true;
}