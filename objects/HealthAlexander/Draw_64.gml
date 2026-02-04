/// DRAW GUI EVENT

var bar_x = 900;
var bar_y = 20;
var bar_w = 400;
var bar_h = 40;

var hp_ratio = Alexander.hp / Alexander.hp_max;

draw_set_color(c_white)
draw_rectangle(bar_x - 5, bar_y - 5, bar_x + bar_w + 5, bar_y + bar_h + 5, false)

// Draw bar
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);

// Check color by percentage
if (hp_ratio > 0.6) {
    draw_set_color(c_green);
}
else if (hp_ratio > 0.3) {
    draw_set_color(c_yellow);
}
else {
    draw_set_color(c_red);
}

// Draw current hp
draw_rectangle(bar_x, bar_y, bar_x + bar_w * hp_ratio, bar_y + bar_h, false);

// Text above
draw_set_color(c_white);
draw_set_font(NameFont)
draw_text(bar_x, bar_y + 20 ,"Alexander");