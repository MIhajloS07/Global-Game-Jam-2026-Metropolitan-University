// Stats
hp_max =160;
hp     = hp_max;
damage = 7;

// Movement
move_speed   = 5;     // left/right
vspd         = 0;     // vertical speed
grav         = 0.5;   // gravity
jump_speed   = -12;   // jump speed
on_ground    = true;  // if player is on floor

// Dodge
dodge_distance     = 56;  
dodge_cooldown_max = 40;  // cooldown between dodges
dodge_cooldown     = 0;
dodge_timer = 0
isDodge = false
HaveMask=true;
mask_timer = 0

// Attack
attack_cooldown_max = 45; // cooldown between attacks
attack_cooldown     = 0;
attack_timer        = 0;
attack_duration     = room_speed * 0.2; 

ability_cooldown = 0;
ability_cooldown_max = 225; 
ability_timer = 0;
ability_distance = 112; 
ability_speed = 6;     // horizontal boost

// State machine
state        = "idle"; // idle, walk, attack, dodge, jump
image_xscale = 1;      // Default look right
canUseAbillity = true

// Animations
spr_idle   = spr_alexander_idle;
spr_walk   = spr_alexander_idle;     
spr_attack = spr_alexander_attack;
spr_dodge  = spr_alexander_dash;     
spr_jump   = spr_alexander_jump;   
spr_ability = spr_alexander_ability

// Postavi početni sprite
sprite_index = spr_idle;
image_speed  = 1;