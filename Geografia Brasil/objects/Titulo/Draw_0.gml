draw_set_font(FontLabelForm);

// Define o alinhamento desejado para este objeto
draw_set_color(c_yellow);

if (text_titulo == "Email") {
	draw_set_font(FontLabelForm);
	draw_text(InputEmail.x + 5, InputEmail.y - 10, text_titulo);
}
if (text_titulo == "Senha"){
	draw_set_font(FontLabelForm);
	draw_text(InputSenha.x + 5, InputSenha.y - 10, text_titulo);
}
if (text_titulo == "Confirme sua senha") {
	draw_set_font(FontLabelForm);
	draw_text(InputSenhaConfirmar.x + 5, InputSenhaConfirmar.y - 10, text_titulo);
}
if (text_titulo == "Login" || text_titulo == "Cadastro") {
	var original_halign = draw_get_halign();
	var original_valign = draw_get_valign();
	var font_st = draw_get_font();

	// Define o alinhamento desejado para este objeto
	draw_set_font(FontTitulo2);
	draw_set_color(c_yellow);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);

	// Desenha o texto
	draw_text(BoxForm.x + BoxForm.sprite_width / 2, BoxForm.y + 55, text_titulo);

	draw_set_font(font_st);
	// Restaura o alinhamento original
	draw_set_halign(original_halign);
	draw_set_valign(original_valign);
	draw_set_color(c_black);
}
draw_set_color(c_black);