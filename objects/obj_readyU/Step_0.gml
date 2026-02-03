var target = hover ? hover_scale : base_scale
image_xscale = lerp(image_xscale, target, 0.2)
image_yscale = image_xscale

if (global.readyU){
	instance_deactivate_object(SelectLeftU)
	instance_deactivate_object(SelectRightU)
}

else{
	instance_activate_object(SelectRightU)
	instance_activate_object(SelectLeftU)
}