/*image_speed = 0
Britney.HaveMask = true
Britney.mask_timer = room_speed * 5
*/
// maska leži na zemlji
usable = true;
timer = 0;
owner = noone;

if (owner != noone) {
    with (owner) {
        HaveMask = true;
    }
}
