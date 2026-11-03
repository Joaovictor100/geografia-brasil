// Primeiro, desenha o texto
draw_self();

var original_halign = draw_get_halign();
var original_valign = draw_get_valign();
var font_st = draw_get_font();

// Define o alinhamento desejado para este objeto
draw_set_font(FontPause);
draw_set_color(c_yellow);
draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_text(x, y, global.textoCadastro)

// Restaura o alinhamento original
draw_set_halign(original_halign);
draw_set_valign(original_valign);
draw_set_color(c_black);

// Agora, detecta o clique do mouse
