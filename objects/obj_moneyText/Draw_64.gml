/// @description Insert description here
draw_set_colour(c_black)
draw_set_font_ext("opensans", 15)
draw_text(x, y, "Candy: " + string(global.candy))
draw_text(x + 140, y, "Money: " + string(global.money))