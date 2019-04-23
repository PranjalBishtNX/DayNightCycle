
//gun movement
image_angle = point_direction(x,y,mouse_x,mouse_y);

//shooting mechanic

if (mouse_check_button(mb_left)) && (cooldown < 1)
{
		instance_create_layer(x,y,layer,obj_Bullet);
		cooldown = 6;;
	
}

cooldown = cooldown - 1