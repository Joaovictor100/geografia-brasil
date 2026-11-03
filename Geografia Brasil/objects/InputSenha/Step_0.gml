
// Evento Mouse Left Button Click
if (mouse_check_button_pressed(mb_left)) {
    // Verifica se o clique está dentro dos limites do objeto
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
        global.clicked2 = true;
    } else {
        global.clicked2 = false;
    }
}

if (global.clicked2) {
// Atualiza o temporizador do cursor
caret_timer2++;
if (caret_timer2 > caret_blink_time2) {
    caret_visible2 = !caret_visible2; // Alterna a visibilidade do cursor
    caret_timer2 = 0; // Reinicia o temporizador
}

// Lê as entradas do teclado
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(text2) > 0) {
        text2 = string_delete(text2, string_length(text2), 1);
    }
}

if (keyboard_check_pressed(vk_return)) {
    // Pressionar Enter pode ter uma ação definida, como submeter o texto
}

if (keyboard_check_pressed(vk_left)) {
    cursor_position2 = max(cursor_position2 - 1, 0);
}

if (keyboard_check_pressed(vk_right)) {
    cursor_position2 = min(cursor_position2 + 1, string_length(text2));
}
// Captura o caractere '@'
if (keyboard_check(vk_shift)) {
    if (keyboard_check_pressed(ord("1"))) {
        text2 += "!";
    }
    if (keyboard_check_pressed(ord("2"))) {
        text2 += "@";
    }
    if (keyboard_check_pressed(ord("3"))) {
        text2 += "#";
    }
    if (keyboard_check_pressed(ord("4"))) {
        text2 += "$";
    }
    if (keyboard_check_pressed(ord("5"))) {
        text2 += "%";
    }
    if (keyboard_check_pressed(ord("6"))) {
        text2 += "^";
    }
    if (keyboard_check_pressed(ord("7"))) {
        text2 += "&";
    }
    if (keyboard_check_pressed(ord("8"))) {
        text2 += "*";
    }
    if (keyboard_check_pressed(ord("9"))) {
        text2 += "(";
    }
    if (keyboard_check_pressed(ord("0"))) {
        text2 += ")";
    }
    if (keyboard_check_pressed(ord("-"))) {
        text2 += "_";
    }
    if (keyboard_check_pressed(ord("="))) {
        text2 += "+";
    }
    if (keyboard_check_pressed(ord(";"))) {
        text2 += ":";
    }
    if (keyboard_check_pressed(ord("'"))) {
        text2 += "\"";
    }
    if (keyboard_check_pressed(ord(","))) {
        text2 += "<";
    }
    if (keyboard_check_pressed(ord("."))) {
        text2 += ">";
    }
    if (keyboard_check_pressed(ord("/"))) {
        text2 += "?";
    }
	for (var i = ord("A"); i <= ord("Z"); i++) {
		if (keyboard_check_pressed(i)) {
        text2 += string_upper(chr(i));
		}
	}
}else {
	for (var i = ord("A"); i <= ord("Z"); i++) {
		if (keyboard_check_pressed(i)) {
        text2 += string_lower(chr(i));
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
        text2 += chr(i);
    }
}

// Limita o comprimento do texto
text2 = string_copy(text2, 1, max_length2);
}

if (global.clicked2) {
	caret_visible2 = true;
}else {
	caret_visible2= false;
}