var area_x1 = x - sprite_width;
var area_y1 = y - sprite_height;
var area_x2 = x + sprite_width;
var area_y2 = y + sprite_height;
if (mouse_x >= area_x1 && mouse_x <= area_x2 &&
    mouse_y >= area_y1 && mouse_y <= area_y2) {
	emailLogin = text;
	senhaLogin = text2;
	
	if (emailLogin == "" || senhaLogin == "") {
		show_message("Preencha todos os campos");
	}
	else {
		show_debug_message(POSI);
		for(var i = 0; i < POSI; i++) {
			if (usuario_db[i] == emailLogin && senha_db[i] == senhaLogin) {
				room_goto(MenuSecundario);
			}
		}
	}
}