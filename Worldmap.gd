extends Node2D


signal mouse_position

func _process(delta):
	var mpos = $TileMap.world_to_map(get_local_mouse_position())
	emit_signal("mouse_position", mpos)


func getEntityCoord(entity):
	return $TileMap.world_to_map(entity)
	


func moveEntityToCoord(entity, coordmap):
	print($TileMap.get_cell(coordmap.x, coordmap.y))
	
#	print(str($TileMap.get_cell(coordmap.x, coordmap.y)))
	if($TileMap.get_cell(coordmap.x, coordmap.y) > 0):
		var coord = $TileMap.map_to_world(coordmap)
		coord.x+= 32 #un peu degeu taille / 2
		coord.y+= 32
		entity.position = coord
		entity.actionDone-=1
		return true
	else:
		return false	


func moveEntityToMousePosition(entity):
	var coordmap = $TileMap.world_to_map(get_local_mouse_position())
	return moveEntityToCoord(entity, coordmap)

	




func move_entity():
	print('moving entity')
