if (keyboard_check_pressed(vk_enter)){
		index++;
		if(index >= array_length(texto)){
			instance_destroy();
		}
}