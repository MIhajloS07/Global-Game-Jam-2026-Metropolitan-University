// Stats
hp_max =70;
hp     = hp_max;
damage = 17;

// Movement
move_speed   = 12;     // left/right
vspd         = 0;     // vertical speed
grav         = 0.5;   // gravity
jump_speed   = -12;   // jump speed
on_ground    = true;  // if player is on floor

// Dodge
dodge_distance     = 147;  
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

// Ability
ability_cooldown = 0;
ability_cooldown_max = 225; 
ability_timer = 0;
ability_distance = 294; 
ability_speed = 6;     // horizontal boost

// State machine
state        = "idle"; // idle, walk, attack, dodge, jump
image_xscale = 1;      // Default look righr
canUseAbillity = true

// Animations
spr_idle   = spr_britney_idle;
spr_walk   = spr_britney_idle;     
spr_attack = spr_britney_attack_;
spr_dodge  = spr_britney_dash_;     
spr_jump   = spr_britney_jump;   
spr_ability = spr_britney_ability_

// Set start sprite
sprite_index = spr_idle;
image_speed  = 1;