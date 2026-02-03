var seconds = ceil(timer / room_speed)
draw_set_font(timerFont)
draw_set_color(c_red)
draw_text(room_width / 2 - 50, 15, string(seconds))