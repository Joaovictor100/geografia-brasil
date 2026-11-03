var area_x1 = x - sprite_width;
var area_y1 = y - sprite_height;
var area_x2 = x + sprite_width;
var area_y2 = y + sprite_height;
if (mouse_x >= area_x1 && mouse_x <= area_x2 &&
    mouse_y >= area_y1 && mouse_y <= area_y2) {
	
	if (global.pause){
		global.pause = false;
	}
	else {
		global.pause = true;
	}
	if (global.pause){
		var _pause_ = instance_create_layer(x, y + (view_hport / 2),"Pause",PauseTela);
		var _opcoes_ = instance_create_layer(PauseTela.x, PauseTela.y + 30,"Pause_1", ButtonOpcoes);
		var _sair_ = instance_create_layer(PauseTela.x, PauseTela.y + 80,"Pause_1", ButtonSair);
		var _continue_ = instance_create_layer(PauseTela.x, PauseTela.y - 20,"Pause_1", ButtonContinuar);
	}
	else {
		instance_destroy(PauseTela);
		instance_destroy(ButtonSair);
		instance_destroy(ButtonOpcoes);
		instance_destroy(ButtonContinuar);
	}
}