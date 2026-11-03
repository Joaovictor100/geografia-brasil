var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var xx = 0;
var yy = gui_altura - 100;

draw_set_color(c_black);
draw_rectangle(xx, yy, gui_largura ,gui_altura, 0);

draw_set_font(FontMenu);
draw_set_color(c_white);
draw_text((gui_largura/2), yy + 50, texto[index]);

