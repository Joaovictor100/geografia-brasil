if (global.pause){
	image_speed = 0;
	exit;
}
	image_speed = 1;

if (keyboard_check(ord("A"))) {
    esquerda += 8;
	image_xscale = -.6;
	if (place_meeting(x, y + 1, objGrama) 
		|| place_meeting(x, y + 1, objPedra)
		|| place_meeting(x, y + 1, objPonteCarro)
		|| place_meeting(x, y + 1, objDePulo)
		|| place_meeting(x, y + 1, Ponte)) {
		sprite_index = pers_andando;
	}
}else if (keyboard_check(ord("D"))) {
    direita += 8;
	image_xscale = .6;
	if (place_meeting(x, y + 1, objGrama) 
		|| place_meeting(x, y + 1, objPedra)
		|| place_meeting(x, y + 1, objPonteCarro)
		|| place_meeting(x, y + 1, objDePulo)
		|| place_meeting(x, y + 1, Ponte)) {
		sprite_index = pers_andando;
	}
}else if (place_meeting(x, y + 1, objGrama) 
		|| place_meeting(x, y + 1, objPedra)
		|| place_meeting(x, y + 1, objPonteCarro)
		|| place_meeting(x, y + 1, objDePulo)
		|| place_meeting(x, y + 1, Ponte)) {
	sprite_index = pers_pulo;
}

if (keyboard_check(vk_space)) {
	if (place_meeting(x, y + 1, objGrama)
		|| place_meeting(x, y + 1, objPedra)
		|| place_meeting(x, y + 1, objPonteCarro)
		|| place_meeting(x, y + 1, objDePulo)
		|| place_meeting(x, y + 1, Ponte)) {
		pulo = true;
		gravidade = 0;
		velocidade_ = 4;
		audio_play_sound(jump_up, 1, false);
	}
}
if (pulo && i < 20) {
	i++;
	velh -= 12 + velocidade_;
	direita *= 1.3;
	esquerda *= 1.3;
	velocidade_ -= .7;
}else if (place_meeting(x, y + gravidade, objGrama)
		|| place_meeting(x, y + gravidade, objPedra)
		|| place_meeting(x, y + gravidade, objPonteCarro)
		|| place_meeting(x, y + gravidade, objDePulo)
		|| place_meeting(x, y + gravidade, Ponte)){
	velh += 1;
}else {
	gravidade += 0.6;
	pulo = false;
	velh += gravidade;
	i = 0;
	direita *= 1.2;
	esquerda *= 1.2;
}

velw = direita - esquerda;

if (keyboard_check(ord("K"))) {
	if (room == level_1) {
		var fogo_instance = instance_nearest(x, y, Fogo);
	    if (fogo_instance != noone && distance_to_object(fogo_instance) < 20) {
	        instance_destroy(fogo_instance);
	        fogo_ += 1;
	    }
	}
}
if (room == level_2) {
	var lixo_instance = instance_nearest(x, y, Lixo);
	if (lixo_instance != noone && distance_to_object(lixo_instance) < 5) {
	    instance_destroy(lixo_instance);
	    lixo_ += 1;
	}
}