// Definir uma cor de mistura cinza
var blend_color = make_color_rgb(100, 100, 100); // Ajuste os valores de 0 a 255 para controlar o nível de escurecimento
 
// Desenhar o sprite escurecido
draw_sprite_ext(sprite_index, image_index, x, y, 4, 4, 0, blend_color, image_alpha);

depth = 50;
