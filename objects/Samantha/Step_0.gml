/// STEP EVENT

// 1) Update cooldowns
if (attack_cooldown > 0) attack_cooldown -= 1;
if (dodge_cooldown > 0) dodge_cooldown -= 1;
if (ability_cooldown > 0) ability_cooldown -= 1;

// 2) Movement 
hspd = 0;

if (state != "attack" && state != "dodge" && state != "ability") {
    if (keyboard_check(vk_left)) hspd = -move_speed;
    if (keyboard_check(vk_right)) hspd = move_speed;
    // Skok if player is on floor
    if (keyboard_check_pressed(vk_up) && on_ground) {
        vspd = jump_speed;
		audio_play_sound(JumpSound, 0, false)
        state = "jump";
        on_ground = false;
    }
}

// 3) Gravity
vspd += grav;

// 4) Move player
x += hspd;
y += vspd;

// 5) Check floor
if (y >= 568) {
    y = 568;
    vspd = 0;
    on_ground = true;
    if (state == "jump") state = "idle";
} else {
    on_ground = false;
}

// 6) State for movement
if (hspd != 0) {
    if (state != "attack" && state != "dodge" && state != "jump" && state != "ability") state = "walk";
} else {
    if (state != "attack" && state != "dodge" && state != "jump" && state != "ability") state = "idle";
}

// 7) Attack
if (keyboard_check_pressed(ord("J")) && attack_cooldown == 0) {
    state = "attack";
    attack_cooldown = attack_cooldown_max;
    attack_timer = 15;
	audio_play_sound(WomanAttack, 0, false)
    sprite_index = spr_samantha_attack;
    image_index = 0;
    image_speed = 0.3;
    // Attack an opponent (on low distance)
    var e;
    if (global.savedIndexU == 0) e = instance_place(x + image_xscale*32, y, Scott);
    if (global.savedIndexU == 1) e = instance_place(x + image_xscale*32, y, Luca);
    if (global.savedIndexU == 2) e = instance_place(x + image_xscale*32, y, Christina);
    if (e != noone) {
        if (!e.isDodge) e.hp -= damage;
    }
}

if (attack_timer > 0) {
    attack_timer -= 1;
} else if (state == "attack") {
    state = "idle";
    sprite_index = spr_samantha_idle;
}

// 8) Dodge (L)
if (keyboard_check_pressed(ord("L")) && dodge_cooldown == 0 && state != "attack") {
    state = "dodge";
    isDodge = true;
	audio_play_sound(DashSound, 0, false)
    dodge_cooldown = dodge_cooldown_max;
    dodge_timer = room_speed; // traje 1 sekundu
    x -= image_xscale * dodge_distance;
}

if (isDodge) {
    dodge_timer -= 5;
    if (dodge_timer <= 0) {
        isDodge = false;
        if (state == "dodge") {
            state = "idle";
            sprite_index = spr_samantha_idle;
        }
    }
}

// 9) Ability (K) – if he have mask
if (keyboard_check_pressed(ord("K")) && ability_cooldown == 0 && state != "attack" && HaveMask && canUseAbillity) {
    state = "ability";
    ability_cooldown = ability_cooldown_max;
    ability_timer = 25; // ability duration
	audio_play_sound(AbilitySound, 0, false)
    // move forward with dash ability
    x += image_xscale * ability_distance;
    hspd = image_xscale * ability_speed;
	isDodge = true;
	dodge_cooldown = dodge_cooldown_max;
    dodge_timer = room_speed;   
    sprite_index = spr_samantha_ability;
    image_index = 0;
    image_speed = 0.4;
}

if (ability_timer > 0) {
    ability_timer -= 1;
} else if (state == "ability") {
    state = "idle";
    sprite_index = spr_samantha_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 10) Set animation
if (state == "idle") {
    sprite_index = spr_samantha_idle;
    image_speed = 0.2;
}
else if (state == "walk") {
    sprite_index = spr_samantha_idle;
    image_speed = 0.3;
}
else if (state == "attack") {
    sprite_index = spr_samantha_attack;
    image_speed = 0.3;
}
else if (state == "dodge") {
    sprite_index = spr_samantha_dash;
    image_speed = 1;
}
else if (state == "jump") {
    sprite_index = spr_samantha_jump;
    image_speed = 0.4;
}
else if (state == "ability") {
    sprite_index = spr_samantha_ability;
    image_speed = 0.4;
}

// 11) Flip sprite 
if (hspd < 0) image_xscale = -1;
if (hspd > 0) image_xscale = 1;

// 12) Jump finish
if (state == "jump" && on_ground) {
    state = "idle";
    sprite_index = spr_samantha_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 13) Health check
if (hp <= 0){
	room_goto(rm_winU);
	instance_destroy();
}

// 14) Collision with screen borders
if (x < 0) x = 0;
if (x > room_width) x = room_width;

// 15) Mask logic
if (hp <= hp_max * 0.3 && HaveMask) {
    HaveMask = false
	canUseAbillity = false
}
