if(!keyboard_check(vk_left)&&!keyboard_check(vk_right))  //if L/R keys are not pressed
{
	timeSpeed = lerp(timeSpeed,actualSpeed,lerpV*2)  //reset time back to actual speed slowly
	susQ = (susQ>0)?(susQ-susDec):0   //decrease susQ slowly to Zero
}

if(TOD>=planetCycle) {
	day++
	m = string("Day ") + string(day) + string(" End")
	show_message(m)
	TODa = 0
	TOD = 0
	}



TOD = (TOD + timeSpeed)
TODa = (TODa + actualSpeed) % planetCycle

cycleAngle = TOD*2*pi/planetCycle - pi/2  //start at the left end, not at top

//set sun pos
obj_Sun.x = obj_Planet.x + radius*sin(cycleAngle)
obj_Sun.y = obj_Planet.x - radius*cos(cycleAngle)

obj_Moon.x = obj_Planet.x - radius*sin(cycleAngle)
obj_Moon.y = obj_Planet.x + radius*cos(cycleAngle)
//show_debug_message(n)

