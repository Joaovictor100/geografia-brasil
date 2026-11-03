
// Evento Mouse Left Button Click
if (mouse_check_button_pressed(mb_left)) {
    // Verifica se o clique está dentro dos limites do objeto
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
        global.clicked3 = true;
    } else {
        global.clicked3 = false;
    }
}

if (global.clicked3) {
// Atualiza o temporizador do cursor
caret_timer3++;
if (caret_timer3 > caret_blink_time3) {
    caret_visible3 = !caret_visible3; // Alterna a visibilidade do cursor
    caret_timer3 = 0; // Reinicia o temporizador
}

// Lê as entradas do teclado
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(text3) > 0) {
        text3 = string_delete(text3, string_length(text3), 1);
    }
}

if (keyboard_check_pressed(vk_return)) {
    // Pressionar Enter pode ter uma ação definida, como submeter o texto
}

if (keyboard_check_pressed(vk_left)) {
    cursor_position3 = max(cursor_position3 - 1, 0);
}

if (keyboard_check_pressed(vk_right)) {
    cursor_position3 = min(cursor_position3 + 1, string_length(text3));
}

if (keyboard_check(vk_shift)) {
    if (keyboard_check_pressed(ord("1"))) {
        text3 += "!";
    }
    if (keyboard_check_pressed(ord("2"))) {
        text3 += "@";
    }
    if (keyboard_check_pressed(ord("3"))) {
        text3 += "#";
    }
    if (keyboard_check_pressed(ord("4"))) {
        text3 += "$";
    }
    if (keyboard_check_pressed(ord("5"))) {
        text3 += "%";
    }
    if (keyboard_check_pressed(ord("6"))) {
        text3 += "^";
    }
    if (keyboard_check_pressed(ord("7"))) {
        text3 += "&";
    }
    if (keyboard_check_pressed(ord("8"))) {
        text3 += "*";
    }
    if (keyboard_check_pressed(ord("9"))) {
        text3 += "(";
    }
    if (keyboard_check_pressed(ord("0"))) {
        text3 += ")";
    }
    if (keyboard_check_pressed(ord("-"))) {
        text3 += "_";
    }
    if (keyboard_check_pressed(ord("="))) {
        text3 += "+";
    }
    if (keyboard_check_pressed(ord(";"))) {
        text3 += ":";
    }
    if (keyboard_check_pressed(ord("'"))) {
        text3 += "\"";
    }
    if (keyboard_check_pressed(ord(","))) {
        text3 += "<";
    }
    if (keyboard_check_pressed(ord("."))) {
        text3 += ">";
    }
    if (keyboard_check_pressed(ord("/"))) {
        text3 += "?";
    }
	for (var i = ord("A"); i <= ord("Z"); i++) {
		if (keyboard_check_pressed(i)) {
        text3 += string_upper(chr(i));
		}
	}
}else {
	for (var i = ord("A"); i <= ord("Z"); i++) {
		if (keyboard_check_pressed(i)) {
        text3 += string_lower(chr(i));
    }
}
}

for (var i = ord("0"); i <= ord("9"); i++) {
    // Verifica se a tecla 2 está sendo pressionada e se Shift está pressionado
	if (i == ord("0") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
        continue;
    }
	if (i == ord("1") && keyboard_check(vk_shift)) {
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
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
        // Se Shift + 2, já lidamos com isso acima e não adicionamos o 2
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
        text3 += chr(i);
    }
}

// Limita o comprimento do texto
text3 = string_copy(text3, 1, max_length3);
}

if (global.clicked3) {
	caret_visible3 = true;
}else {
	caret_visible3 = false;
}