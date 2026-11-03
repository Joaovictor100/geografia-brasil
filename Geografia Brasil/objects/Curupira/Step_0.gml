if (global.pause){
	image_speed = 0;
	exit;
}
	image_speed = 1;

if (distance_to_object(Personagem) <= 50 ){
		
		var dialogo = instance_create_layer(0,0,"npc",DialogoCurupira){
		
			for( var i = 0;i < array_length(texto);i++){
				array_push(dialogo.texto, texto[i]);
		
		}
		
	}
	if (keyboard_check_pressed(ord("W"))) {
		room_goto(level_2);
	}
}else {
	instance_destroy(DialogoCurupira);
}
