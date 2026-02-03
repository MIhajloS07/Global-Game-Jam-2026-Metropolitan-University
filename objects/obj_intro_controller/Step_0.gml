if (fade_alpha > 0){
	fade_alpha -= fade_speed
	if (fade_alpha <= 0){
		fade_alpha = 0
		show_press_key = true
	}
}
if (show_press_key && keyboard_check_pressed(vk_anykey)){
	audio_stop_all()
	room_goto(rm_showlore)
}


