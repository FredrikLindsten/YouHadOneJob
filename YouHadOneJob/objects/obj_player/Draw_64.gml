/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1E52DEF3
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Direction: ""
/// @DnDArgument : "var" "image_angle"
draw_text(x + 30, y + 0, string("Direction: ") + string(image_angle));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5DD28ACC
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Hp: ""
/// @DnDArgument : "var" "hp"
draw_text(x + 30, y + 30, string("Hp: ") + string(hp));