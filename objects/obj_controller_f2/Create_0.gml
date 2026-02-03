timer = room_speed * 60
audio_stop_all()
audio_play_sound(sound_fight2, 0, false)
switch (global.savedIndexU) {
    case 0:
        //show_message("scott")
        instance_create_layer(100, 430, "Instances", Scott)
		instance_create_layer(100, 430, "Instances", HealthScott)
		break;
    case 1:
        //show_message("luca")
        instance_create_layer(100, 430, "Instances", Luca)
		instance_create_layer(100, 430, "Instances", HealthLuca)
		break;
    case 2:
        //show_message("Christina")
		instance_create_layer(100, 430, "Instances", Christina)
		instance_create_layer(100, 430, "Instances", HealthB1)
		break;
}
switch (global.savedIndexF) {
    case 0:
        instance_create_layer(1266, 430, "Instances", Britney)
		instance_create_layer(100, 430, "Instances", HealthBritney)
        break;
    case 1:
        instance_create_layer(1266, 430, "Instances", Samantha)
		instance_create_layer(100, 430, "Instances", HealthSamantha)
        break;
    case 2:
       instance_create_layer(1266, 430, "Instances", Alexander)
		instance_create_layer(100, 430, "Instances", HealthAlexander)
        break;
}


