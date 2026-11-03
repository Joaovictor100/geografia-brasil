var area_x1 = x - sprite_width;
var area_y1 = y - sprite_height;
var area_x2 = x + sprite_width;
var area_y2 = y + sprite_height;
if (mouse_x >= area_x1 && mouse_x <= area_x2 &&
    mouse_y >= area_y1 && mouse_y <= area_y2) {
	email = text;
	senha = text2;
	confirmarSenha = text3;
		
		
	if (email == "" || senha == "" || confirmarSenha = "") {
		global.textoCadastro = "Preencha todos os campos";
		
		
		var _textoCadastro_ = instance_create_layer( (view_wport / 2),  (view_hport / 2),"Confirmar",Cadastro_);
			
		
	}
	else if (senha != confirmarSenha) {
		
		
		global.textoCadastro = "As senhas não se coincidem";
		
		var _textoCadastro_ = instance_create_layer( (view_wport / 2),  (view_hport / 2),"Confirmar",Cadastro_);
	}
	else {
		usuario_db[POSI] = email;
		senha_db[POSI] = senha;
		
		
			global.textoCadastro = "Cadastro efetuado";
		
		var _textoCadastro_ = instance_create_layer( (view_wport / 2),  (view_hport / 2),"Confirmar",Cadastro_);		
	
		POSI = POSI + 1;
		
		text = "";
		text2 ="";
		text3 ="";
		
	}
}