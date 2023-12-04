var collisionId = collision_point(x, y, obj_collide, false, false)

//If Overlapping
if (collisionId != noone && height < 8) {
	
	//Backup So It Won't Get Stuck
     x = xprevious;
	 y = yprevious;
	 
	 //Reverse Direction 
	 hspeed = choose(-1, 0, 1) *.5;
	 vspeed = choose(-1, 1)   * .5;
	 lift   = -lift          * 1.5;
	 
	 //instance_destroy(id);  //destroy the item
}//end if

//When The Food Hit The Ground
if (height <= 0) {

//instance_destroy(id);
height = 0;
speed = 0;
grav = 0;
lift = 0;
atRest = true;

}//end if

//Fall Code
height += lift;

lift -= grav;

//Wrap

if (x < 0){
x = room_width;
}//end if 

if (x > room_width){
x = 0;
}//end if

if (y < 0){
y = room_height;
}//end if 

if (y > room_height){
y = 0;
}//end if 


