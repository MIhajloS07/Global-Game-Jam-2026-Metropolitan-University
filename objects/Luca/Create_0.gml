// Stats
hp_max = 130;
hp     = hp_max;
damage = 9;

// Movement
move_speed   = 6;     // left/right
vspd         = 0;     // vertical speed
grav         = 0.5;   // gravity
jump_speed   = -12;   // jump speed
on_ground    = true;  // if player is on floor

// Dodge
dodge_distance     = 88; 
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

// Ability
ability_cooldown = 0;
ability_cooldown_max = 225; 
ability_timer = 0;
ability_distance = 100; 
ability_speed = 6;     // horizontal boost

// State machine
state = "idle"; // idle, walk, attack, dodge, jump
image_xscale = 1;  // Default look right

// Animations
spr_idle   = spr_luca_idle;
spr_walk   = spr_luca_idle;     
spr_attack = spr_luca_attack;
spr_dodge  = spr_luca_dash;     
spr_jump   = spr_luca_jump; 

// Default sprite
sprite_index = spr_idle;
image_speed  = 0.2;