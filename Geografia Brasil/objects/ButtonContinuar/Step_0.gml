if (mouse_check_button(mb_left)) {
    
    var text_width = string_width(texto);
    var text_height = string_height(texto);
    
    var area_x1 = x - text_width / 2;
    var area_y1 = y - text_height / 2;
    var area_x2 = x + text_width / 2;
    var area_y2 = y + text_height / 2;
	if (mouse_x >= area_x1 && mouse_x <= area_x2 &&
        mouse_y >= area_y1 && mouse_y <= area_y2) {
        instance_destroy(PauseTela);
		instance_destroy(ButtonSair);
		instance_destroy(ButtonOpcoes);
		instance_destroy(ButtonContinuar);
		global.pause = false;
        
    }
}
