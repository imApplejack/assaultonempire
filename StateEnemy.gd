extends Node


var running = false
var nbProcess = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (running):
#		print('process Ennemy thing')
		nbProcess+= 1


func isRunning():
	if(nbProcess > 100):
		running = false
		nbProcess = 0
	return running
