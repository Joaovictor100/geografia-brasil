draw_set_font(FontLabelForm);

// Define o alinhamento desejado para este objeto
draw_set_color(c_yellow);
draw_set_halign(fa_left);
draw_set_font(FontLabelForm);
draw_text(VolumeAmbiente.x, VolumeAmbiente.y - 20, "Volume da Musica");
draw_text(VolumeEfeitos.x, VolumeEfeitos.y - 20, "Volume de Efeitos Sonoros");

draw_set_font(FontLabelForm);
draw_set_halign(fa_center);
draw_text(BoxOpcoes.x + BoxOpcoes.sprite_width / 2, BoxOpcoes.y + 60, "OPÇÕES");