/// STEP EVENT

// 1) Update cooldowns
if (attack_cooldown > 0) attack_cooldown -= 1;
if (dodge_cooldown > 0) dodge_cooldown -= 1;

// 2) Movement (samo ako nije u napadu ili dodge-u)
hspd = 0;

if (state != "attack" && state != "dodge") {
    if (keyboard_check(ord("A"))) hspd = -move_speed;
    if (keyboard_check(ord("D"))) hspd = move_speed;

    // Skok samo ako je na podu
    if (keyboard_check_pressed(ord("W")) && on_ground) {
        vspd = jump_speed;
		audio_play_sound(JumpSound, 0, false)
        state = "jump";
        on_ground = false;
    }
}

// 3) Gravitacija uvek deluje
vspd += grav;

// 4) Pomeri lika
x += hspd;
y += vspd;

// 5) Provera poda (pretpostavimo da je pod na y = 568)
if (y >= 568) {
    y = 568;
    vspd = 0;
    on_ground = true;
    if (state == "jump") state = "idle";
} else {
    on_ground = false;
}

// 6) State prema kretanju
if (hspd != 0) {
    if (state != "attack" && state != "dodge" && state != "jump") state = "walk";
} else {
    if (state != "attack" && state != "dodge" && state != "jump") state = "idle";
}

// 7) Attack
if (keyboard_check_pressed(ord("Q")) && attack_cooldown == 0) {
    state = "attack";
    attack_cooldown = attack_cooldown_max;
    attack_timer = 15;
	audio_play_sound(WomanAttack, 0, false)
    sprite_index = spr_christina_attack;
    image_index = 0;
    image_speed = 0.3;


    // Napad na protivnika (zli likovi)
    var e;
    if (global.savedIndexF == 0) e = instance_place(x + image_xscale/8, y, Britney);
    if (global.savedIndexF == 1) e = instance_place(x + image_xscale/8, y, Samantha);
    if (global.savedIndexF == 2) e = instance_place(x + image_xscale/8, y, Alexander);

    if (e != noone) {
        if (!e.isDodge) e.hp -= damage;
    }
}

if (attack_timer > 0) {
    attack_timer -= 1;
} else if (state == "attack") {
    state = "idle";
    sprite_index = spr_christina_idle;
}

// 8) Dodge (Shift)
if (keyboard_check_pressed(vk_shift) && dodge_cooldown == 0 && state != "attack") {
    state = "dodge";
    isDodge = true;
	audio_play_sound(DashSound, 0, false)
    dodge_cooldown = dodge_cooldown_max;
    dodge_timer = room_speed; // traje 1 sekundu
    x -= image_xscale * dodge_distance;
}

if (isDodge) {
    dodge_timer -= 1;
    if (dodge_timer <= 0) isDodge = false;
}

// 9) Pickup maske
var m = instance_place(x, y, maskB);
if (m != noone) {
    HaveMask = true;
    mask_timer = room_speed * 5; // 5 sekundi vizuelnog efekta
    instance_destroy(m); // maska nestaje sa zemlje
}

// 10) Ako ima masku, odbrojava timer
if (HaveMask) {
    mask_timer -= 1;
    if (mask_timer <= 0) {
        HaveMask = false; // maska prestaje da radi
    }
}

// 11) Set animation
if (state == "idle") {
    sprite_index = spr_christina_idle;
    image_speed = 0.2;
}
else if (state == "walk") {
    sprite_index = spr_christina_idle;
    image_speed = 0.3;
}
else if (state == "attack") {
    sprite_index = spr_christina_attack;
    image_speed = 0.3;
}
else if (state == "dodge") {
    sprite_index = spr_christina_dash;
    image_speed = 1; // brže menjanje frameova
}
else if (state == "jump") {
    sprite_index = spr_christina_idle_1;
    image_speed = 0.4;
}

// 12) Flip sprite prema smeru
if (hspd < 0) image_xscale = -1;
if (hspd > 0) image_xscale = 1;

// 13) Anim završetak
if (state == "attack" && image_index >= image_number - 1) {
    state = "idle";
    sprite_index = spr_christina_idle;
    image_index = 0;
    image_speed = 0.3;
}
if (state == "dodge" && image_index >= image_number - 1) {
    state = "idle";
    sprite_index = spr_christina_idle;
    image_index = 0;
    image_speed = 0.3;
}
if (state == "jump" && on_ground) {
    state = "idle";
    sprite_index = spr_christina_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 14) Health check
if (hp <= 0){
	room_goto(rm_winF);
	instance_destroy();
}
// 15) Kolizija sa ivicama ekrana
if (x < 0) x = 0;
if (x > room_width) x = room_width;
