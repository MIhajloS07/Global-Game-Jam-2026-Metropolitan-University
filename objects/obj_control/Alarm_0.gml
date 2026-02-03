timer -=1
if (timer > 0)
{
	alarm[0] = room_speed * timer_speed;
}
else
{
	if (global.map_selected)	
		room_goto(rm_fight1)
	else if (global.map_selected2)
		room_goto(rm_fight2)
}