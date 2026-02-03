// Ako neki drugi igrač dotakne masku
var p = instance_place(x, y, obj_otherPlayer);
if (p != noone && usable) {
    usable = false;
    p.HasMask = true;
    p.mask_timer = room_speed * 5; // 5 sekundi trajanja
    instance_destroy(); // maska nestaje sa zemlje
}
