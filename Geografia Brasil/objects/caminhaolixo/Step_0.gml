if (distance_to_object(Personagem) <= 50 ){
		
		var dialogo = instance_create_layer(0,0,"npc",DialogoCaminhao){
		
			for( var i = 0;i < array_length(texto);i++){
				array_push(dialogo.texto, texto[i]);
		
		}
		
	}
	if (keyboard_check_pressed(ord("W"))) {
		room_goto(MenuSecundario);
	}
}else {
	instance_destroy(DialogoCaminhao);
}
