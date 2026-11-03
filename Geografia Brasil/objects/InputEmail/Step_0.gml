
// Evento Mouse Left Button Click
if (mouse_check_button_pressed(mb_left)) {
    // Verifica se o clique está dentro dos limites do objeto
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
        global.clicked = true;
    } else {
        global.clicked = false;
    }
}

if (global.clicked) {
// Atualiza o temporizador do cursor
caret_timer++;
if (caret_timer > caret_blink_time) {
    caret_visible = !caret_visible; // Alterna a visibilidade do cursor
    caret_timer = 0; // Reinicia o temporizador
}

// Lê as entradas do teclado
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(text) > 0) {
        text = string_delete(text, string_length(text), 1);
    }
}

if (keyboard_check_pressed(vk_return)) {
    // Pressionar Enter pode ter uma ação definida, como submeter o texto
}

if (keyboard_check_pressed(vk_left)) {
    cursor_position = max(cursor_position - 1, 0);
}

if (keyboard_check_pressed(vk_right)) {
    cursor_position = min(cursor_position + 1, string_length(text));
}

if (keyboard_check(vk_shift)) {
    if (keyboard_check_pressed(ord("1"))) {
        text2 += "!";
    }
    if (keyboard_check_pressed(ord("2"))) {
        text += "@";
    }
    if (keyboard_check_pressed(ord("3"))) {
        text += "#";
    }
    if (keyboard_check_pressed(ord("4"))) {
        text += "$";
    }
    if (keyboard_check_pressed(ord("5"))) {
        text += "%";
    }
    if (keyboard_check_pressed(ord("6"))) {
        text += "^";
    }
    if (keyboard_check_pressed(ord("7"))) {
        text += "&";
    }

    if (keyboard_check_pressed(ord("8"))) {
        text += "*";
    }
    if (keyboard_check_pressed(ord("9"))) {
        text += "(";
    }
    if (keyboard_check_pressed(ord("0"))) {
        text += ")";
    }
    if (keyboard_check_pressed(ord("-"))) {
        text += "_";
    }
    if (keyboard_check_pressed(ord("="))) {
        text += "+";
    }
    if (keyboard_check_pressed(ord(";"))) {
        text += ":";
    }
    if (keyboard_check_pressed(ord("'"))) {
        text += "\"";
    }
    if (keyboard_check_pressed(ord(","))) {
        text += "<";
    }
    if (keyboard_check_pressed(ord("."))) {
        text += ">";
    }
    if (keyboard_check_pressed(ord("/"))) {
        text += "?";
    }
	for (var i = ord("A"); i <= ord("Z"); i++) {
		if (keyboard_check_pressed(i)) {
        text += string_upper(chr(i));
    }
}

}
else {
	for (var i = ord("A"); i <= ord("Z"); i++) {
		if (keyboard_check_pressed(i)) {
        text += string_lower(chr(i));
    }
}
}
/*
if (keyboard_lastkey == ord(".")) {
        text += ".";
}*/



for (var i = ord("0"); i <= ord("9"); i++) {
    // Verifica se a tecla 2 está sendo pressionada e se Shift está pressionado
	if (i == ord("0") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
	if (i == ord("1") && keyboard_check(vk_shift)) {
        continue;
    }
    if (i == ord("2") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
	if (i == ord("3") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
	if (i == ord("4") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
	if (i == ord("5") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
	if (i == ord("6") && keyboard_check(vk_shift)) {
        continue;
    }
	if (i == ord("7") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
	if (i == ord("8") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
	if (i == ord("9") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
    if (keyboard_check_pressed(i)) {
        text += chr(i);
    }
}

	
// Limita o comprimento do texto
text = string_copy(text, 1, max_length);
}

if (global.clicked) {
	caret_visible = true;
}else {
	caret_visible = false;
}