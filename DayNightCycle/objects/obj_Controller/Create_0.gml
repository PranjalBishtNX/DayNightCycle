/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F5F8556
/// @DnDArgument : "code" "timeSpeed = 1$(13_10)slowTime = 0.5$(13_10)fastTime = 2$(13_10)lerpV = 0.2$(13_10)$(13_10)planetSpeed$(13_10)radius = 512$(13_10)TOD = 0$(13_10)$(13_10)$(13_10)"
timeSpeed = 1
slowTime = 0.5
fastTime = 2
lerpV = 0.2

planetSpeed
radius = 512
TOD = 0

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4FD57023
/// @DnDArgument : "xpos" "obj_Start.x"
/// @DnDArgument : "ypos" "obj_Start.y"
/// @DnDArgument : "objectid" "obj_Sun"
/// @DnDSaveInfo : "objectid" "d90df9e8-2b03-4dba-ba0c-1d1830e7df46"
instance_create_layer(obj_Start.x, obj_Start.y, "Instances", obj_Sun);