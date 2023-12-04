//Left Side Hud

draw_text_color(24,24, "Food Bank: " + string(obj_granny_red.foodCount), c_black, c_black, c_black,c_black, 1);
draw_text_color(24,24, "Food Bank: " + string(obj_granny_red.foodCount), c_blue, c_blue,c_yellow,c_purple,1);


draw_text_color(24,80, "Life: " + string(obj_granny_red.life), c_black, c_black, c_black,c_black, 1);
draw_text_color(24,80, "Life: " + string(obj_granny_red.life), c_gray, c_navy,c_blue,c_aqua,1);

var rightx = 800;

//Right SIde Hud

draw_text_color(rightx + 4, 24 + 4, "Food Bank: " + string(obj_granny_blue.foodCount), c_black,c_black,c_black,c_black,1);
draw_text_color(rightx,24,"Food Bank: " +string( obj_granny_blue.foodCount), c_blue,c_blue,c_yellow,c_yellow, 1);
 			
draw_text_color(rightx + 4, 80 + 4,"Life:" +string(obj_granny_blue.life), c_black,c_black,c_black,c_black, 1);
draw_text_color(rightx, 80, "Life:" +string(obj_granny_blue.life), c_blue,c_green,c_blue,c_green, 1);