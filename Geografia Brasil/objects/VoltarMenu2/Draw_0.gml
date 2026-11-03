draw_self();

// Salva o alinhamento original
var original_halign = draw_get_halign();
var original_valign = draw_get_valign();

// Define o alinhamento desejado para este objeto
draw_set_font(FontVoltar);
draw_set_color(c_black);
draw_set_valign(fa_center);
draw_set_halign(fa_center);

// Desenha o texto
draw_text(x + sprite_width / 2, y + sprite_height / 2, "SAIR");

// Restaura o alinhamento original
draw_set_halign(original_halign);
draw_set_valign(original_valign);
