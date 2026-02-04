function ArrowKeyboard(key){
	var scale = 0.75
	// Click 
	if (keyboard_check(key)){
		image_xscale = scale
		image_yscale = scale
	} else {
		image_xscale = lerp(image_xscale, 1, 0.2)
		image_yscale = image_xscale
	}
}
