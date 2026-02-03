/// CREATE EVENT obj_controller

// Ako globalna promenljiva još ne postoji, napravi je
if (!variable_global_exists("EnabledSound")) {
    global.EnabledSound = true; // default: zvuk uključen
}

// Postavi zvuk na osnovu globalnog stanja
if (global.EnabledSound) {
    audio_master_gain(1); // zvuk uključen
} else {
    audio_master_gain(0); // zvuk isključen
}
