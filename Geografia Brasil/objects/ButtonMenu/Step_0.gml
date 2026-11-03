if (mouse_check_button(mb_left)) {
    
    var text_width = string_width(texto);
    var text_height = string_height(texto);
    
    var area_x1 = x - text_width / 2;
    var area_y1 = y - text_height / 2;
    var area_x2 = x + text_width / 2;
    var area_y2 = y + text_height / 2;
	if (mouse_x >= area_x1 && mouse_x <= area_x2 &&
        mouse_y >= area_y1 && mouse_y <= area_y2) {
        
        // Verifica o texto e executa a ação apropriada
        if (texto == "CADASTRAR") {
            room_goto(Cadastro);
        }
        else if (texto == "LOGIN") {
            room_goto(Login);
        }
        else if (texto == "SAIR") {
            game_end();
        }
		else if (texto == "JOGAR") {
            room_goto(level_1);
        }
		else if (texto == "OPÇÕES") {
            room_goto(ROpcoes);
        }
    }
}
