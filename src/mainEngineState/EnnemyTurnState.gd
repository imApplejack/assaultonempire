class EnnemyTurnState:


	var running = false
	var nbProcess = 0

	# Called when the node enters the scene tree for the first time.
	func _init():
		pass # Replace with function body.
		
	func _process(_delta):
		if (not running):
			running = true
		nbProcess+= 1
		print('process Ennemy thing')
		
		

	func isRunning():
		if(nbProcess > 2):
			running = false
			nbProcess = 0
		return running






