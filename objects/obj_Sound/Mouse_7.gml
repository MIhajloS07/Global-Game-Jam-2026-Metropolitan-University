global.EnabledSound = !global.EnabledSound; // toggle vrednost

if (global.EnabledSound) {
    audio_master_gain(0); // uključi zvuk (1 = 100%)
    image_index = 1;
} else {
    audio_master_gain(1); // isključi zvuk (0 = mute)
    image_index = 0;
}
