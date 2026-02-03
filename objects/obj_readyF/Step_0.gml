var target = hover ? hover_scale : base_scale
image_xscale = lerp(image_xscale, target, 0.2)
image_yscale = image_xscale


if (global.readyF){
	instance_deactivate_object(SelectLeftF)
	instance_deactivate_object(SelectRightF)
}
else {
	instance_activate_object(SelectLeftF)
	instance_activate_object(SelectRightF)
}

