font =  draw_get_font();

draw_set_font(FontLogo);

draw_text(x + (sprite_width / 2), y + (sprite_height / 2), "GEOGRAFIA BRASIL");
draw_set_color(c_yellow);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_font(font);