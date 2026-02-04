global.EnabledSound = !global.EnabledSound; // toggle 
if (global.EnabledSound) {
    audio_master_gain(0); // sound on (1 = 100%)
    image_index = 1;
} else {
    audio_master_gain(1); // sound off (0 = mute)
    image_index = 0;
}
