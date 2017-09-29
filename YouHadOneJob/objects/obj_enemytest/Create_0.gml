hp = 3;
swingAngle = 60;
swingDistance = 50;

draw_set_font(font0);
draw_set_colour($FF000000 & $ffffff);
draw_set_alpha(($FF000000 >> 24) / $ff);
draw_text(x + 10, y + 10, string("Angle to Player: ") + string(hp));