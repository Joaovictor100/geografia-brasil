if (mouse_check_button(mb_left)) {
	
	var area_x1 = x - sprite_width;
    var area_y1 = y - sprite_height;
    var area_x2 = x + sprite_width;
    var area_y2 = y + sprite_height;
	if (mouse_x >= area_x1 && mouse_x <= area_x2 &&
        mouse_y >= area_y1 && mouse_y <= area_y2) {
			text = "";
			text2 = "";
			text3 = "";
		room_goto(Home);
	}
}