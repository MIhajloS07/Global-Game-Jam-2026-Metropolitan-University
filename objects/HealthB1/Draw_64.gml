/// DRAW GUI EVENT

var bar_x = 20;
var bar_y = 20;
var bar_w = 400;
var bar_h = 40;

var hp_ratio = Christina.hp / Christina.hp_max;

draw_set_color(c_white)
draw_rectangle(bar_x - 5, bar_y - 5, bar_x + bar_w + 5, bar_y + bar_h + 5, false)

// Pozadina bara (crna)
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);

// Odredi boju prema procentu
if (hp_ratio > 0.6) {
    draw_set_color(c_green);
}
else if (hp_ratio > 0.3) {
    draw_set_color(c_yellow);
}
else {
    draw_set_color(c_red);
}

// Nacrtaj trenutni HP deo
draw_rectangle(bar_x, bar_y, bar_x + bar_w * hp_ratio, bar_y + bar_h, false);

// Tekst iznad
draw_set_color(c_white);
draw_set_font(NameFont)
draw_text(bar_x, bar_y + 20 ,"Christina");