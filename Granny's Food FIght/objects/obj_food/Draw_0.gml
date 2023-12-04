depth = -y;
//Draw Shadow
draw_sprite(spr_shadow_small, 0, x, y);

//Draw Food On Top Of The Shadow
draw_sprite(sprite_index, image_index, x, y - height + 4); 

depth = -y;


