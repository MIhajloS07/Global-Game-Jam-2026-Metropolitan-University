draw_set_alpha(fade_alpha)
draw_set_color(c_purple)
draw_rectangle(0, 0, display_get_width(), display_get_height(), false)
draw_set_alpha(1)

if (show_press_key) {
	var blink_alpha = 0.5 + 0.5 * sin(current_time / 200)
	draw_set_alpha(blink_alpha)
	draw_set_color(c_white)
	draw_set_font(IntroFont)
	draw_text(display_get_width() / 3 - 260, display_get_height() / 2, "Press any key to continue")
	draw_set_alpha(1)
}


