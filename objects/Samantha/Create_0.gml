// Stats
hp_max =60;
hp = hp_max;
damage = 18;

// Movement
move_speed   = 14;     // left/right
vspd         = 0;     // vertical speed
grav         = 0.5;   // gravity
jump_speed   = -12;   // jump speed
on_ground    = true;  // if on floor

// Dodge
dodge_distance = 162;  
dodge_cooldown_max = 40;  // cooldown between dodge
dodge_cooldown = 0;
dodge_timer = 0
isDodge = false
HaveMask=true;
mask_timer = 0

// Attack
attack_cooldown_max = 45; 
attack_cooldown     = 0;
attack_timer        = 0;
attack_duration     = room_speed * 0.2; // anim duration

// Ability
ability_cooldown = 0;
ability_cooldown_max = 225; 
ability_timer = 0;
ability_distance = 322; 
ability_speed = 6;     // Horizontal boost

// State machine
state        = "idle"; // idle, walk, attack, dodge, jump
image_xscale = 1;      // default look right
canUseAbillity = true

// Animations
spr_idle   = spr_samantha_idle;
spr_walk   = spr_samantha_idle;     
spr_attack = spr_samantha_attack;
spr_dodge  = spr_samantha_ability;     
spr_jump   = spr_samantha_jump;   
spr_ability = spr_samantha_dash

// Default sprite
sprite_index = spr_idle;
image_speed  = 1;