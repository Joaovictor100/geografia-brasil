if (global.pause){
	image_speed = 0;
	exit;
}
	image_speed = 1;

if (distance_to_object(Personagem) <= 50 ){
		
		var dialogo = instance_create_layer(0,0,"npc",DialogoNorte){
		
			for( var i = 0;i < array_length(texto);i++){
				array_push(dialogo.texto, texto[i]);
		
		}
		
	}
		
}else {
	instance_destroy(DialogoNorte);
}
