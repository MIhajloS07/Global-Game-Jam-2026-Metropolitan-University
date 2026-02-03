if (mouse_check_button_pressed(mb_left)){
	if (image_index == 0){
		image_index = 1
		global.savedIndexF= SelectF.image_index
		global.readyF = true
	}
	else{
		image_index = 0
		global.readyF = false
	}
}
audio_stop_sound(BritneyChoose)
audio_stop_sound(SamanthaChoose)
audio_stop_sound(AlexandarChoose)
if (global.savedIndexF == 0 && global.readyF){
	audio_play_sound(BritneyChoose, 0, false)
}
if (global.savedIndexF == 1 && global.readyF){
	audio_play_sound(SamanthaChoose, 0, false)
}
if (global.savedIndexF == 2 && global.readyF){
	audio_play_sound(AlexandarChoose, 0, false)
}