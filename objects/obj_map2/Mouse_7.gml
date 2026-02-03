global.map_selected2 = ! global.map_selected2
if (global.map_selected2 && !global.map_selected){
	image_xscale = 0.9
	image_yscale = 0.9
	global.mapS = true
}
else if(global.map_selected2 && global.map_selected){
	image_xscale = 0.9
	image_yscale = 0.9
	global.map_selected=false
	obj_map1.image_xscale=0.8
	obj_map1.image_yscale=0.8
	global.mapS = true
}
else{
	image_xscale = 0.8
	image_yscale = 0.8
}