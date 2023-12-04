if (other.atRest == true){
	foodCount += 1;
	instance_destroy(other);
}//end if 

//draw shadow
depth = -y

if invincible % 3 != 0 then exit;

draw_sprite(spr_shadow, 0, x, y)
//draw granny on top of shadow
draw_sprite(sprite_index, image_index, x, y)

if (other.atRest == true){
	foodCount += 1;
	instance_destroy(other);
}else{
  if (other.parent != id && invincible <= 0){
	life = life -+ other.damage
	instance_destroy(other);
	audio_play_sound(snd_hit, 8, false,1,0,1);
	invincible = 90;
  }//end if
}//end else if
