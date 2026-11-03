// Desenha a caixa de texto
draw_self();

// Define a cor e o tamanho da fonte
draw_set_font(FontSenha); // Supondo que você tenha uma fonte chamada fnt_text

margin = 33;
draw_text(x + margin, y + (sprite_height / 2), string_repeat("*", string_length(text2)));
draw_set_color(c_black);

draw_set_halign(fa_left);
draw_set_valign(fa_center);

// Desenha o cursor se estiver visível
if (caret_visible2) {
    var cursor_x = x + string_width(string_repeat("*", string_length(text2))) + 2; // Ajuste a posição do cursor
    draw_line(cursor_x + margin, y + 12, cursor_x + margin, y + sprite_height - 13);
}
draw_set_font(FontForms); // Supondo que você tenha uma fonte chamada fnt_text