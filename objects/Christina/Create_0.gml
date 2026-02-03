// Stats
hp_max = 80;
hp     = hp_max;
damage = 15;

// Movement
move_speed   = 10;     // brzina kretanja levo/desno
vspd         = 0;     // vertikalna brzina (za skok)
grav         = 0.5;   // gravitacija
jump_speed   = -12;   // brzina skoka (negativno jer ide nagore)
on_ground    = true;  // da li je na podu

// Dodge
dodge_distance     = 134;  // koliko se pomeri kod dodge-a
dodge_cooldown_max = 30;  // cooldown između dodge-ova
dodge_cooldown     = 0;
dodge_timer = 0
isDodge = false
// Attack
attack_cooldown_max = 45; // cooldown između napada
attack_cooldown     = 0;
attack_timer        = 0;
attack_duration     = room_speed * 0.2; // koliko traje animacija napada
HaveMask=false
// State machine
state        = "idle"; // idle, walk, attack, dodge, jump
image_xscale = 1;      // početno gleda desno

// Animacije (child objekti menjaju ovo)
spr_idle   = spr_christina_idle;
spr_walk   = spr_christina_idle;     // koristiš idle i za walk
spr_attack = spr_christina_attack;
spr_dodge  = spr_christina_dash;     // koristiš idle i za dodge
spr_jump   = spr_christina_idle_1;   // tvoj jump sprite
spr_ability = spr_christina_ability

// Postavi početni sprite
sprite_index = spr_idle;
image_speed  = 0.2;

attack_cooldown = 0; 
attack_cooldown_max = 30; // npr. pola sekunde 
dodge_cooldown = 0; 
dodge_cooldown_max = 60; // npr. 1 sekunda
ability_cooldown = 0;
ability_cooldown_max = 120; // npr. 2 sekunde