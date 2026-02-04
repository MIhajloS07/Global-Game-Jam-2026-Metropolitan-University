// Stats
hp_max = 110;
hp     = hp_max;
damage = 11;

// Movement
move_speed   = 7;     // left/right
vspd         = 0;     // vertical
grav         = 0.5;   // gravity
jump_speed   = -12;   // jump speed
on_ground    = true;  // if on ground check

// Dodge
dodge_distance     = 104;  // move when dodge
dodge_cooldown_max = 30;  // cooldown between dodges
dodge_cooldown     = 0;
dodge_timer = 0
isDodge = false

// Attack
attack_cooldown_max = 45; // cooldown između napada
attack_cooldown     = 0;
attack_timer        = 0;
attack_duration     = room_speed * 0.2; 
HaveMask=false

// Ability
ability_cooldown = 0;
ability_cooldown_max = 225; // koliko frameova mora da prođe pre ponovnog korišćenja
ability_timer = 0;
ability_distance = 100; // how much pixels we go 
ability_speed = 6;     // horizontal boost


// State machine
state = "idle";		// idle, walk, attack, dodge, jump
image_xscale = 1;   // look right on start

// Animations
spr_idle   = spr_scott_idle;
spr_walk   = spr_scott_idle;     
spr_attack = spr_scott_attack_;
spr_dodge  = spr_scott_dash;    
spr_jump   = spr_scott_jump;  
spr_ability = spr_scott_ability_

// Set default sprite
sprite_index = spr_idle;
image_speed  = 0.2;