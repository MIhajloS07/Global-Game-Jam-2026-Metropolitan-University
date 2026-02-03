/// STEP EVENT

// 1) Update cooldowns
if (attack_cooldown > 0) attack_cooldown -= 1;
if (dodge_cooldown > 0) dodge_cooldown -= 1;
if (ability_cooldown > 0) ability_cooldown -= 1;


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
	audio_play_sound(ManAttack, 0, false)
    sprite_index = spr_scott_attack_;
    image_index = 0;
    image_speed = 0.3;

	if(global.savedIndexF==0){
		var e=instance_place(x, y, Britney);
		if(e!=noone){
			if (!e.isDodge)
				e.hp-=damage;
		}	
	}
	if(global.savedIndexF==1){
		var e=instance_place(x, y, Samantha);
		if(e!=noone){
			if (!e.isDodge)
				e.hp-=damage;
		}
	}
	if(global.savedIndexF==2){
		var e=instance_place(x, y, Alexander);
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
    sprite_index = spr_scott_idle;
}

// 8) Dodge (shift)
if (keyboard_check_pressed(vk_shift) && dodge_cooldown == 0 && state != "attack") {
    state = "dodge";
	audio_play_sound(DashSound, 0, false)
    dodge_cooldown = dodge_cooldown_max;
	isDodge = true
    dodge_cooldown = dodge_cooldown_max;
	dodge_timer = room_speed   // pomeri unazad
    x -= image_xscale * dodge_distance;
}
if(isDodge){
	dodge_timer-=1;
	if(dodge_timer<=0)
		isDodge=false;
}
// Ability (K)
if (keyboard_check_pressed(ord("E")) && ability_cooldown == 0 && state != "attack" && HaveMask) {
    state = "ability";
    ability_cooldown = ability_cooldown_max;
    ability_timer = 25; // koliko traje ability animacija

    // pomeri unapred sa većim dash-om
    x += image_xscale * ability_distance;
    hspd = image_xscale * ability_speed;

    sprite_index = spr_scott_ability_;
    image_index = 0;
    image_speed = 0.4;
}

// Ability timer
if (ability_timer > 0) {
    ability_timer -= 1;
} else if (state == "ability") {
    state = "idle";
    sprite_index = spr_scott_ability_;
    image_index = 0;
    image_speed = 0.1;
}


// 9) Set animation
if (state == "idle") {
    sprite_index = spr_scott_idle;
    image_speed = 0.2;
}

else if (state == "walk") {
    sprite_index = spr_scott_idle; // koristiš idle i za walk
    image_speed = 0.3;
}
else if (state == "attack") {
    sprite_index = spr_scott_attack_;
    image_speed = 0.3;
}
else if (state == "dodge") {
    sprite_index = spr_scott_dash; // koristiš idle i za dodge
    image_speed = 0.4;
}
else if (state == "jump") {
    sprite_index = spr_scott_jump // tvoj jump sprite
    image_speed = 0.4;
}

// 10) Flip sprite prema smeru
if (hspd < 0) image_xscale = -1;
if (hspd > 0) image_xscale = 1;

// 11) Attack anim završetak
if (state == "attack" && image_index >= image_number - 1) {
    state = "idle";
    sprite_index = spr_scott_idle;
    image_index = 0;
    image_speed = 0.3;
}

// 12) Dodge završetak
if (state == "dodge" && image_index >= image_number - 1) {
    state = "idle";
    sprite_index = spr_scott_idle;
    image_index = 0;
    image_speed = 0.3;
}


// 13) Jump završetak (kad animacija prođe, ali i dalje si u vazduhu ostaje jump)
if (state == "jump" && on_ground) {
    state = "idle";
    sprite_index = spr_scott_idle;
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