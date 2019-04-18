/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F5F8556
/// @DnDArgument : "code" "timeSpeed = 1$(13_10)slowTime = 0.5$(13_10)fastTime = 2$(13_10)lerpV = 0.2$(13_10)$(13_10)planetCycle = 500  //time to complete 1 day$(13_10)radius = 700$(13_10)TOD = 0$(13_10)$(13_10)$(13_10)"
timeSpeed = 1
slowTime = 0.5
fastTime = 2
lerpV = 0.2

planetCycle = 500  //time to complete 1 day
radius = 700
TOD = 0

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4FD57023
/// @DnDArgument : "objectid" "obj_Sun"
/// @DnDSaveInfo : "objectid" "d90df9e8-2b03-4dba-ba0c-1d1830e7df46"
instance_create_layer(0, 0, "Instances", obj_Sun);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 02EB957E
/// @DnDArgument : "objectid" "obj_Moon"
/// @DnDSaveInfo : "objectid" "4356674b-3cad-4a98-8596-0c52eb5b070b"
instance_create_layer(0, 0, "Instances", obj_Moon);