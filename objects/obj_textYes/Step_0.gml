var target = hover ? hover_scale : base_scale
image_xscale = lerp(image_xscale, target, 0.2)
image_yscale = image_xscale
if (global.map_selected || global.map_selected2)
	visible = true
else
	visible = false