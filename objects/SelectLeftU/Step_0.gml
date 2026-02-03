ArrowClickMouse()
ArrowKeyboard(ord("A"))
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) || keyboard_check_pressed(ord("A")))
{
		SelectU.image_index = (SelectU.image_index - 1 + 3) mod 3
		LoreU.image_index = (LoreU.image_index - 1 + 3) mod 3
}
global.savedIndexU = image_index