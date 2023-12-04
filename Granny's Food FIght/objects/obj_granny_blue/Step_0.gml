//Move Granny
var pushedLeft  = keyboard_check(vk_left);
var pushedRight = keyboard_check(vk_right);

var pushedUp = keyboard_check(vk_up);
var pushedDown= keyboard_check(vk_down);

var throwFood = keyboard_check_pressed(vk_space);

//Speed 
var xSpeed = (pushedRight - pushedLeft) * moveSpeed;
var ySpeed = (pushedDown - pushedUp)    * moveSpeed;

//Collision
move_and_collide(xSpeed, ySpeed, obj_collide);
var moving = (xSpeed != 0 || ySpeed != 0);

if(invincible > 0){
invincible -= 1;
}//end if

//Poop
if(canPoop == false){
	//Recording Last Moved DIrection's Speed So Food Is Always Thrown
	if (xSpeed != 0 || ySpeed != 0) {

		lastXspeed = xSpeed;
		lastYspeed = ySpeed;

	}//end if

}else{

	lastXspeed = xSpeed;
	lastYspeed = ySpeed;

}//end if

image_speed = 0;

if(throwFood == true && foodCount > 0){
  var foodId = instance_create_depth(x,y, depth, obj_food)
  
  var gruntchance = irandom(100);
  
  if(gruntchance < 50){
  audio_play_sound(snd_grunt, 8, false, 1, .26, 1);
  }//end if
  
  audio_play_sound(snd_throw, 8, false, 1, 0, random_range (3,6));
  foodId.parent = id;  
  foodId.hspeed = lastXspeed * 1.5;
  foodId.vspeed = lastYspeed * 1.5;
  
  if(foodId.hspeed == 0 && foodId.vspeed == 0){
  
  foodId.image_index = 6;
   
  }//end if 
  
  foodCount -= 1;
  
}//end if

move_and_collide(xSpeed, ySpeed, obj_collide);

image_speed = .125;

//Be Able To Tell If Granny Is Moving

var moving = xSpeed != 0 || ySpeed != 0;

if (moving) {
	
   image_speed = .25; //animated walking
   
     if (xSpeed > 0){
      sprite_index = spr_granny_blue_right;
     }else if (xSpeed < 0){
      sprite_index = spr_granny_blue_left;
     }//end if
   
     if (ySpeed > 0){
      sprite_index = spr_granny_blue_down;
     }else if (ySpeed < 0){
      sprite_index = spr_granny_blue_up;
     }//end if
 
}else {
	
   image_speed = 0; //stop animated walking
   
}//end if


	
	