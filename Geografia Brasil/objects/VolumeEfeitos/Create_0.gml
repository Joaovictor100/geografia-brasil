globalvar valorEfeitos;
valorEfeitos = 1;
cor_bolinha = c_white;

desenhar_slider = function() {
	draw_self()
	var _x_bolinha = x + (sprite_width * valorEfeitos);
	draw_sprite_ext(bolinha, 0, _x_bolinha, y, 2, 2, 0, cor_bolinha, 1);
}

alterar_valor = function() {
	var _bolinha_x = x + (sprite_width * valorEfeitos);
	var _bolinha_y = y;
	var _margem = 3;
	
	var _mouse_sobre = point_in_rectangle(mouse_x, mouse_y, bbox_left - _margem, bbox_top - _margem, bbox_right + _margem, bbox_bottom + _margem);
	var _mouse_click = mouse_check_button(mb_left);
	
	if (_mouse_sobre) {
		show_debug_message(valorEfeitos)
		if (_mouse_click) {
			// Calcula o valor
			valorEfeitos = (mouse_x - x) / sprite_width;
			// Limita o valor
			valorEfeitos = clamp(valorEfeitos, 0, 1)
			audio_sound_gain(jump_up, valorEfeitos, 0);
		}
	}
}
