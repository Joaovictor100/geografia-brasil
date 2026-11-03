x_ = camera_get_view_x(view_camera[0]) + view_wport[0] / 2;
y_ = camera_get_view_x(view_camera[0]) + view_hport[0] / 2;

x_ = view_camera[0];
if (distance_to_object(Personagem) <= 100 ){
	if (!cartaAberta) {
		cartaAberta = true;
		var _carta_ = instance_create_layer(camera_get_view_x(view_camera[0]) + view_wport[0] / 2,(view_hport / 2),"Player",carta_);
	}
}else {
	if (cartaAberta) {
		cartaAberta = false;
		instance_destroy(carta_);
	}
	
}