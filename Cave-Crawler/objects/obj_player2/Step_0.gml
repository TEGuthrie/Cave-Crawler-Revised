/// @description Insert description here
// You can write your code in this editor
if (pHealth <= 0)
{
	instance_destroy()
	game_end()
}
image_angle = point_direction(x,y,mouse_x, mouse_y);
if (keyboard_check(ord("A")))
{
	x -= 5 + boost
}
if (keyboard_check(ord("D")))
{
	x += 5 + boost
}
if (keyboard_check(ord("W")))
{
	y -= 5 + boost
}
if (keyboard_check(ord("S")))
{
	y += 5 + boost
}
if (keyboard_check(ord("X")))
{
	points = 200000000
}
if (mouse_check_button_pressed(mb_left) && canFire)
{
	//Bullet creation
	instance_create_layer(x,y,"Instances", obj_bullet)
	//Timing
	canFire = false
	alarm_set(0,shotTime)
}


//Upgrade interaction
with(obj_upgrade)
{
	var upgDist = point_distance(x,y,other.x,other.y)
	if(upgDist <= other.interactDistance)
	other.uIntr = true
}

if(keyboard_check(ord("E")) && uIntr && points >= obj_upgrade.cost)
{
	upgradeLevel += 1
	shotTime  = 30/(2+upgradeLevel)
	obj_upgrade.cost += 1000
}

if (obj_weaponUpgrade.turretsAvailable > 0 && keyboard_check_pressed(ord("R")) && obj_weaponUpgrade.turretsPlaced < 3)
{
	instance_create_layer(x,y,"Instances", obj_turret)
	obj_weaponUpgrade.turretsAvailable -= 1
	obj_weaponUpgrade.turretsPlaced += 1
}



