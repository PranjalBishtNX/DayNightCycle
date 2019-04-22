/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 698B88BF
/// @DnDArgument : "xscale" "1.1"
/// @DnDArgument : "yscale" "1.1"
image_xscale = 1.1;
image_yscale = 1.1;

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 71662EFF
/// @DnDApplyTo : bfc0911d-21f8-41d5-9ac2-42bbac78270d
with(obj_Controller) {
event_user(0);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3C5CFDDB
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);