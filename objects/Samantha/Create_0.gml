// Stats
hp_max =60;
hp     = hp_max;
damage = 18;

// Movement
move_speed   = 14;     // brzina kretanja levo/desno
vspd         = 0;     // vertikalna brzina (za skok)
grav         = 0.5;   // gravitacija
jump_speed   = -12;   // brzina skoka (negativno jer ide nagore)
on_ground    = true;  // da li je na podu

// Dodge
dodge_distance     = 162;  // koliko se pomeri kod dodge-a
dodge_cooldown_max = 40;  // cooldown između dodge-ova
dodge_cooldown     = 0;
dodge_timer = 0
isDodge = false
HaveMask=true;
mask_timer = 0

// Attack
attack_cooldown_max = 45; // cooldown između napada
attack_cooldown     = 0;
attack_timer        = 0;
attack_duration     = room_speed * 0.2; // koliko traje animacija napada

ability_cooldown = 0;
ability_cooldown_max = 225; // koliko frameova mora da prođe pre ponovnog korišćenja
ability_timer = 0;
ability_distance = 322; //s koliko piksela ide napred (veći dash nego dodge)
ability_speed = 6;     // dodatni horizontalni boost


// State machine
state        = "idle"; // idle, walk, attack, dodge, jump
image_xscale = 1;      // početno gleda desno

canUseAbillity = true

// Animacije (child objekti menjaju ovo)
spr_idle   = spr_samantha_idle;
spr_walk   = spr_samantha_idle;     // koristiš idle i za walk
spr_attack = spr_samantha_attack;
spr_dodge  = spr_samantha_ability;     // koristiš idle i za dodge
spr_jump   = spr_samantha_jump;   // tvoj jump sprite
spr_ability = spr_samantha_dash

// Postavi početni sprite
sprite_index = spr_idle;
image_speed  = 1;