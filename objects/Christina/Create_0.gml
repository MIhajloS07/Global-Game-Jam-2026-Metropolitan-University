// Stats
hp_max = 80;
hp     = hp_max;
damage = 15;

// Movement
move_speed   = 10;     // left/right
vspd         = 0;     // vertical speed
grav         = 0.5;   // gravity
jump_speed   = -12;   // jump speed
on_ground    = true;  // if player is on floor

// Dodge
dodge_distance     = 134;  
dodge_cooldown_max = 30;  // cooldown between dodges
dodge_cooldown     = 0;
dodge_timer = 0
isDodge = false

// Attack
attack_cooldown_max = 45; // cooldown between attacks
attack_cooldown     = 0;
attack_timer        = 0;
attack_duration     = room_speed * 0.2; 
HaveMask=false

// State machine
state        = "idle"; // idle, walk, attack, dodge, jump
image_xscale = 1;      // Default look right

// Animations
spr_idle   = spr_christina_idle;
spr_walk   = spr_christina_idle;     
spr_attack = spr_christina_attack;
spr_dodge  = spr_christina_dash;     
spr_jump   = spr_christina_idle_1;   
spr_ability = spr_christina_ability

// Default sprite
sprite_index = spr_idle;
image_speed  = 0.2;

attack_cooldown = 0; 
attack_cooldown_max = 30; // half second
dodge_cooldown = 0; 
dodge_cooldown_max = 60; // 1 second
ability_cooldown = 0;
ability_cooldown_max = 120; // 2 seconds