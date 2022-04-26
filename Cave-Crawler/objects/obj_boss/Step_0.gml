/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player2))
{
	var ex,ey;
	ex = instance_nearest(x,y,obj_player2).x
	ey = instance_nearest(x,y,obj_player2).y
	direction = point_direction(x,y,ex,ey)
	speed = 3
}

if (direction > 90) && (direction < 270)
{
	image_xscale = 1
}
else
{
	image_xscale = -1
}
if (canShoot == true)
{
	//Bullet creation
	instance_create_layer(x,y,"Instances", obj_bossFireBall)
	//Timing
	canShoot = false
	alarm_set(1,shotTime)
}