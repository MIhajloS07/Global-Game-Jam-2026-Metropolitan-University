global.map_selected = ! global.map_selected
if (global.map_selected && !global.map_selected2){
	image_xscale = 0.9
	image_yscale = 0.9
	global.mapS = true	
}
else if(global.map_selected && global.map_selected2){
	image_xscale = 0.9
	image_yscale = 0.9
	global.map_selected2=false
	obj_map2.image_xscale=0.8
	obj_map2.image_yscale=0.8
	global.mapS = true
}
else{
	image_xscale = 0.8
	image_yscale = 0.8
}