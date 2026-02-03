/// STEP EVENT
/*
// 1) Update cooldowns
if (attack_cooldown > 0) attack_cooldown -= 1;
if (dodge_cooldown > 0) dodge_cooldown -= 1;
if (ability_cooldown > 0) ability_cooldown -= 1;

// 2) Movement (samo ako nije u napadu ili dodge-u)
hspd = 0;

if (state != "attack" && state != "dodge") {
    if (keyboard_check(vk_left)) hspd = -move_speed;
    if (keyboard_check(vk_right)) hspd = move_speed;

    // Skok samo ako je na podu
    if (keyboard_check_pressed(vk_up) && on_ground) {
        vspd = jump_speed;
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
if (keyboard_check_pressed(ord("J")) && attack_cooldown == 0) {
    state = "attack";
    attack_cooldown = attack_cooldown_max;
    attack_timer = 15;

    sprite_index = spr_britney_attack_;
    image_index = 0;
    image_speed = 0.3;

    // napravi hitbox
    /*var hb = instance_create_layer(
        x + (image_xscale * 32), y, "Hitboxes", obj_hitbox_3
    );
    hb.damage = damage;
    hb.owner = id;
	if(global.savedIndexU==0){
		var e=instance_place(x, y, Scott);
		if(e!=noone){
			if (!e.isDodge)
				e.hp-=damage;
		}	
	}
	if(global.savedIndexU==1){
		var e=instance_place(x, y, Luca);
		if(e!=noone){
			if (!e.isDodge)
				e.hp-=damage;
		}
	}
	if(global.savedIndexU==2){
		var e=instance_place(x, y, Christina);
		if(e!=noone){
			if (!e.isDodge)
				e.hp-=damage;
		}
	}
	
}

if (attack_timer > 0) {
    attack_timer -= 1;
} else if (state == "attack") {
    state = "idle";
    sprite_index = spr_britney_idle;
}

// 8) Dodge (shift)
if (keyboard_check_pressed(ord("L")) && dodge_cooldown == 0 && state != "attack") {
    state = "dodge";
	isDodge = true
    dodge_cooldown = dodge_cooldown_max;
	dodge_timer = room_speed 
    // pomeri unazad
    x -= image_xscale * dodge_distance;
}

if ( isDodge){
	dodge_timer -=1
	if (dodge_timer <= 0) {
		isDodge = false
	}
}

if ( HaveMask){
	mask_timer -=1
	if (mask_timer <= 0) {
		HaveMask = false
	}
}

if (keyboard_check_pressed(ord("K")) && ability_cooldown == 0 && state != "attack" && HaveMask) {
    state = "ability";
    ability_cooldown = ability_cooldown_max;
    ability_timer = 25; // koliko traje ability animacija

    // pomeri unapred sa većim dash-om
    x += image_xscale * ability_distance;
    hspd = image_xscale * ability_speed;

    sprite_index = spr_britney_ability_;
    image_index = 0;
    image_speed = 0.4;
}
if (ability_timer > 0) {
    ability_timer -= 1;
} else if (state == "ability") {
    state = "idle";
    sprite_index = spr_britney_ability_;
    image_index = 0;
    image_speed = 0.1;
}


// 9) Set animation
if (state == "idle") {
    sprite_index = spr_britney_idle;
    image_speed = 0.2;
}
else if (state == "walk") {
    sprite_index = spr_britney_idle; // koristiš idle i za walk
    image_speed = 0.3;
}
else if (state == "attack") {
    sprite_index = spr_britney_attack_;
    image_speed = 0.3;
}
else if (state == "dodge") {
    sprite_index = spr_britney_dash_; // koristiš idle i za dodge
    image_speed = 0.4;
}
else if (state == "jump") {
    sprite_index = spr_britney_jump; // tvoj jump sprite
    image_speed = 0.4;
}
else if (state == "ability") {
	sprite_index = spr_britney_ability_
	image_speed = 0.4;
}

// 10) Flip sprite prema smeru
if (hspd < 0) image_xscale = -1;
if (hspd > 0) image_xscale = 1;

// 11) Attack anim završetak
if (state == "attack" && image_index >= image_number - 1) {
    state = "idle";
    sprite_index = spr_britney_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 12) Dodge završetak
if (state == "dodge" && image_index >= image_number - 1) {
    state = "idle";
    sprite_index = spr_britney_idle;
    image_index = 0;
    image_speed = 0.3;
}

if (state == "ability" && image_index >= image_number - 1) {
    state = "idle";
    sprite_index = spr_britney_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 13) Jump završetak (kad animacija prođe, ali i dalje si u vazduhu ostaje jump)
if (state == "jump" && on_ground) {
    state = "idle";
    sprite_index = spr_britney_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 14) Health check
if (hp <= 0) instance_destroy();

// 15) Kolizija sa ivicama ekrana
if (x < 0) x = 0;
if (x > room_width) x = room_width;

if (Britney.hp <= Britney.hp_max * 0.3 && HaveMask){
	HaveMask = false
	instance_create_layer(Britney.x, Britney.y, "Instances", maskB)
}
*/
/// STEP EVENT

// 1) Update cooldowns
if (attack_cooldown > 0) attack_cooldown -= 1;
if (dodge_cooldown > 0) dodge_cooldown -= 1;
if (ability_cooldown > 0) ability_cooldown -= 1;

// 2) Movement (samo ako nije u napadu ili dodge-u ili ability-u)
hspd = 0;

if (state != "attack" && state != "dodge" && state != "ability") {
    if (keyboard_check(vk_left)) hspd = -move_speed;
    if (keyboard_check(vk_right)) hspd = move_speed;

    // Skok samo ako je na podu
    if (keyboard_check_pressed(vk_up) && on_ground) {
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
    if (state != "attack" && state != "dodge" && state != "jump" && state != "ability") state = "walk";
} else {
    if (state != "attack" && state != "dodge" && state != "jump" && state != "ability") state = "idle";
}

// 7) Attack
if (keyboard_check_pressed(ord("J")) && attack_cooldown == 0) {
    state = "attack";
    attack_cooldown = attack_cooldown_max;
    attack_timer = 15;
	audio_play_sound(WomanAttack, 0, false);
    sprite_index = spr_britney_attack_;
    image_index = 0;
    image_speed = 0.3;

    // Napad na protivnika (proverava da li je blizu)
    var e;
    if (global.savedIndexU == 0) e = instance_place(x + image_xscale*32, y, Scott);
    if (global.savedIndexU == 1) e = instance_place(x + image_xscale*32, y, Luca);
    if (global.savedIndexU == 2){ e = instance_place(x + image_xscale*32, y, Christina);}

    if (e != noone) {
        if (!e.isDodge) e.hp -= damage;
    }
}

if (attack_timer > 0) {
    attack_timer -= 1;
} else if (state == "attack") {
    state = "idle";
    sprite_index = spr_britney_idle;
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
            sprite_index = spr_britney_idle;
        }
    }
}

// 9) Ability (K) – samo ako ima masku
if (keyboard_check_pressed(ord("K")) && ability_cooldown == 0 && state != "attack" && HaveMask && canUseAbillity) {
    state = "ability";
    ability_cooldown = ability_cooldown_max;
    ability_timer = 25; // koliko traje ability animacija
	audio_play_sound(AbilitySound, 0, false)
    // pomeri unapred sa većim dash-om
    x += image_xscale * ability_distance;
    hspd = image_xscale * ability_speed;
	isDodge = true;
	dodge_cooldown = dodge_cooldown_max;
    dodge_timer = room_speed; // traje 1 sekundu
    
    sprite_index = spr_britney_ability_;
    image_index = 0;
    image_speed = 0.4;
}

if (ability_timer > 0) {
    ability_timer -= 1;
} else if (state == "ability") {
    state = "idle";
    sprite_index = spr_britney_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 10) Set animation
if (state == "idle") {
    sprite_index = spr_britney_idle;
    image_speed = 0.2;
}
else if (state == "walk") {
    sprite_index = spr_britney_idle;
    image_speed = 0.3;
}
else if (state == "attack") {
    sprite_index = spr_britney_attack_;
    image_speed = 0.3;
}
else if (state == "dodge") {
    sprite_index = spr_britney_dash_;
    image_speed = 1;
}
else if (state == "jump") {
    sprite_index = spr_britney_jump;
    image_speed = 0.4;
}
else if (state == "ability") {
    sprite_index = spr_britney_ability_;
    image_speed = 0.6;
}

// 11) Flip sprite prema smeru
if (hspd < 0) image_xscale = -1;
if (hspd > 0) image_xscale = 1;

// 12) Jump završetak
if (state == "jump" && on_ground) {
    state = "idle";
    sprite_index = spr_britney_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 13) Health check
if (hp <= 0){
	room_goto(rm_winU);
	instance_destroy();
}

// 14) Kolizija sa ivicama ekrana
if (x < 0) x = 0;
if (x > room_width) x = room_width;

// 15) Mask logika
if (hp <= hp_max * 0.3 && HaveMask) {
    HaveMask = false
	canUseAbillity = false
}
