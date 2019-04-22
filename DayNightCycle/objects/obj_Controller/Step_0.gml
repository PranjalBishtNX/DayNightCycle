switch(mode){
	case 1:  //before day start
		TOD = 0
		TODa = 0
		
		//reset pointer to 0
		newx = obj_Planet.x - radius 
		obj_ActualTimeArrow.x = lerp(obj_ActualTimeArrow.x, newx, 0.1)  
		UI_OKButton.visible = true;
	break;
	case 2:  //gameplay
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
			mode = 3 //go to day end mode
			UI_OKButton.visible = true;
			}



		TOD = (TOD + timeSpeed)
		TODa = (TODa + actualSpeed) % planetCycle

		cycleAngle = TOD*2*pi/planetCycle - pi/2  //start at the left end, not at top

		//set sun pos
		obj_Sun.x = obj_Planet.x + radius*sin(cycleAngle)
		obj_Sun.y = obj_Planet.x - radius*cos(cycleAngle)
		
		//set moon pos
		obj_Moon.x = obj_Planet.x - radius*sin(cycleAngle)
		obj_Moon.y = obj_Planet.x + radius*cos(cycleAngle)


		if(TODa<=planetCycle/2)  {//during day
			newx = obj_Planet.x + radius*sin(TODa*2*pi/planetCycle - pi/2 )  //set arrow based on sun
			obj_ActualTimeArrow.x = lerp(obj_ActualTimeArrow.x, newx, 0.2)
		}
		else {
			newx = obj_Planet.x + radius*sin(TODa*2*pi/planetCycle + pi/2)  
			obj_ActualTimeArrow.x = lerp(obj_ActualTimeArrow.x, newx, 0.2)   //set arrow based on moon
		}
	break;
	case 3:  //day end
		TODa = 0
		TOD = 0
		//reset pointer to 0
		newx = obj_Planet.x - radius 
		obj_ActualTimeArrow.x = lerp(obj_ActualTimeArrow.x, newx, 0.1)  
		
	break;
	
}
	
