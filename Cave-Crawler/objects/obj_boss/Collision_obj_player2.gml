/// @description Insert description here
// You can write your code in this editor
inContact = true
if (inContact && attackTime)
{
	audio_play_sound(playerDamage,1,false)
	if (global.pArmor > 0)
	{
		global.pArmor -= 15
	}
	else
	{
		global.pHealth -= 15
	}
	attackTime = false
	alarm_set(0,15)
}