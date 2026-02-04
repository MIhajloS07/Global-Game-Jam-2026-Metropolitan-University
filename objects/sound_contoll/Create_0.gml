/// CREATE EVENT obj_controller

// If gloval var dont exist, define it
if (!variable_global_exists("EnabledSound")) {
    global.EnabledSound = true; // default: sound on
}
// set sound based on var
if (global.EnabledSound) {
    audio_master_gain(1); // sound on
} else {
    audio_master_gain(0); // sound off
}
