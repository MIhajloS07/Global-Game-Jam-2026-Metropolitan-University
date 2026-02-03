if (!window_get_fullscreen()){
	// Set fullscreen -> On
	window_set_fullscreen(true)
	image_index = 1
}
else{
	// Set fullscreen -> Off
	window_set_fullscreen(false)
	window_set_size(1336, 768)
	image_index = 0
}