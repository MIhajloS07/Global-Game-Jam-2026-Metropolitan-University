function ArrowClickMouse(){
var scale = 0.75
// Click 
if (mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y, id)){
	image_xscale = scale
	image_yscale = scale
} else {
	image_xscale = lerp(image_xscale, 1, 0.2)
	image_yscale = image_xscale
}
}