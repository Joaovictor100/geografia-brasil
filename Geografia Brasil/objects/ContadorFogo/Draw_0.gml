draw_self();
cor = draw_get_color();

draw_set_color(c_black);
draw_text(x + sprite_width / 2, y + sprite_height / 2, "Fogo = " + string(fogo_));

draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_set_color(cor);