ArrowClickMouse()
ArrowKeyboard(vk_left)
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) || keyboard_check_pressed(vk_left)){
		SelectF.image_index = (SelectF.image_index - 1 + 3) mod 3
		LoreF.image_index = (LoreF.image_index - 1 + 3) mod 3
		image_index -= 1
}
global.savedIndexF = image_index