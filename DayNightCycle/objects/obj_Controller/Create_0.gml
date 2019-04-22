//all values here are set at the beginning of the game
mode = 1   //(tentative values) 0 = before game start, 1 = before day start, 2 = gameplay, 3 = dayEnd, 4 = game over

actualSpeed = 1
timeSpeed = actualSpeed    //normal time speed
slowTime = 0.5	// slower time speed, 0.5 = half
fastTime = 2	//fast time speed
lerpV = 0.05   //Acceletation b/w timespeeds when changing, DO NOT put more than 0.5 here

planetCycle = 1000  //time to complete 1 day, in steps(frames)
radius = 750
TOD = 0			//time of day
TODa = 0        //actual time of day you're supposed to match
day = 0			//days spent

susQ = 0  //suspicion quotient :v
susDec = 1 //value to decrease susQ when idle
susInc = 1 //value to increase susQ when messing with time

instance_create_layer(0, 0, "Instances", obj_Sun)  //create the sun and moon
instance_create_layer(0, 0, "Instances", obj_Moon)

n = ceil(room_width/32)
for(i=0; i<n; i++)	
	instance_create_layer(32*i, 0, "UI",UI_TimeLine)	//cover the top with tiled timeline sprites

