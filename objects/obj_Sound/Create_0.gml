/// CREATE EVENT obj_soundButton

hover = false;
base_scale = 0.7;
hover_scale = 0.9;

// Postavi ikonicu na osnovu globalnog stanja
if (global.EnabledSound) {
    image_index = 1; // ikonica ON
} else {
    image_index = 0; // ikonica OFF
}
