//Move Granny
var pushedLeft  = keyboard_check(ord("A"));
var pushedRight = keyboard_check(ord("D"));

var pushedUp = keyboard_check(ord("W"));
var pushedDown= keyboard_check(ord("S"));

var throwFood = keyboard_check_pressed(ord("C"));

var xSpeed = (pushedRight - pushedLeft) * moveSpeed;
var ySpeed = (pushedDown - pushedUp)    * moveSpeed;


var moving = (xSpeed != 0 || ySpeed != 0)

if (invincible > 0){
invincible -= 1;
}//end if

if(canPoop == false) {
	//Recording Last Moved DIrection's Speed So Food Is Always Thrown
	if (xSpeed != 0 || ySpeed != 0) {

		lastXspeed = xSpeed;
		lastYspeed = ySpeed;

	}//end if

}else {

	lastXspeed = xSpeed;
	lastYspeed = ySpeed;

}//end if

if(throwFood == true && foodCount > 0){
 var foodId = instance_create_depth(x, y, depth, obj_food)
  
  var gruntchance =  irandom(100);
  
  if(gruntchance < 50){
  audio_play_sound(snd_grunt, 8, false, 1, 0, random_range(3,6));
  foodId.parent = id;
  
  }//end if
  
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
      sprite_index = spr_granny_red_right;
     }else if (xSpeed < 0){
      sprite_index = spr_granny_red_left;
     }//end if
   
     if (ySpeed > 0){
      sprite_index = spr_granny_red_down;
     }else if (ySpeed < 0){
      sprite_index = spr_granny_red_up;
     }//end if
 
}else {
	
   image_speed = 0; //stop animated walking
   
}//end if


	
	