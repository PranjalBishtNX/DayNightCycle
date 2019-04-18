if(!keyboard_check(vk_left)&&!keyboard_check(vk_right))
{
	timeSpeed = lerp(timeSpeed,1,lerpV)
}


TOD = (TOD+timeSpeed)%(planetCycle)
