/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 70378DB3
/// @DnDArgument : "caption" ""Time: ""
/// @DnDArgument : "var" "TOD/planetCycle*24"
draw_text(0, 0, string("Time: ") + string(TOD/planetCycle*24));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6AEC284C
/// @DnDArgument : "y" "16"
/// @DnDArgument : "caption" ""ActualTime: ""
/// @DnDArgument : "var" "TODa/planetCycle*24"
draw_text(0, 16, string("ActualTime: ") + string(TODa/planetCycle*24));