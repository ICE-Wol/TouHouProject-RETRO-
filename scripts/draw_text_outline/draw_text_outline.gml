function draw_text_outline(x, y, str, color1, color2, alpha, outline_color, outline_alpha, thickness = 2, quality = 12, xscale = 1, yscale = 1, angle = 0) {
	for (i = 0; i < 360; i += 360 / quality) {
		draw_text_transformed_color(x + lengthdir_x(thickness, i), y + lengthdir_y(thickness, i), string(str), xscale, yscale, angle, outline_color, outline_color, outline_color, outline_color, outline_alpha);
	}
	draw_text_transformed_color(x, y, string(str), xscale, yscale, angle, color1, color1, color2, color2, alpha);
}