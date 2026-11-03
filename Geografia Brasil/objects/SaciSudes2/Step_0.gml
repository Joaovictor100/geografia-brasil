if (distance_to_object(Personagem) <= 70 ){
		
		var dialogo = instance_create_layer(0,0,"npc",DialogoCris){
		
			for( var i = 0;i < array_length(texto);i++){
				array_push(dialogo.texto, texto[i]);
		
		}
		
	}
		
}else {
	instance_destroy(DialogoCris);
}

