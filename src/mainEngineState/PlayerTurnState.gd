class PlayerTurnState:


	var running = false
	var nbProcess = 0
	var worldmap = null

	# Called when the node enters the scene tree for the first time.
	func _init(m):
		worldmap = m
		print('init Player')
		
	
	
	# Called every frame. 'delta' is the elapsed time since the previous frame.
	func _process(_delta):
		if (not running):
			running = true
		print('process Palyer thing')
		print(str(worldmap.get_node('Personnage')))
		nbProcess+= 1
		


	func isRunning():
		if(nbProcess > 2):
			running = false
			nbProcess = 0
		return running
