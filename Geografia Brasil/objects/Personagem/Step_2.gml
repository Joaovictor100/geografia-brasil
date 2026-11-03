if (global.pause){
	image_speed = 0;
	exit;
}

move_and_collide(velw, velh, [objGrama, objPedra, Ponte, objPonteCarro, objDePulo]);
velw = 0;
velh = 0;

esquerda = 0;
direita = 0;