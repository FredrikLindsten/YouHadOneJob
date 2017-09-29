/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 59C173FC
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Angle:  ""
/// @DnDArgument : "var" "anglevar"
draw_text(x + 30, y + 0, string("Angle:  ") + string(anglevar));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 01C57673
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "hp"
draw_text(x + 30, y + 30, string("HP: ") + string(hp));