if (mouse_check_button_pressed(mb_left)){
	if (image_index == 0){
		image_index = 1
		global.savedIndexU= SelectU.image_index
		global.readyU = true
	}
	else{
		image_index = 0
		global.readyU = false
	}
}

audio_stop_sound(ChristinaChoose)
audio_stop_sound(LucaChoose)
audio_stop_sound(ScottChoose)
if (global.savedIndexU == 2 && global.readyU){
	audio_play_sound(ChristinaChoose, 0, false)
}
if (global.savedIndexU == 1 && global.readyU){
	audio_play_sound(LucaChoose, 0, false)
}
if (global.savedIndexU == 0 && global.readyU){
	audio_play_sound(ScottChoose, 0, false)
}
	
	