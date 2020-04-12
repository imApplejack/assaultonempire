extends Node


var running = false
var nbProcess = 0
var worldmap

signal move_entity
signal state_player_start
signal state_player_end


# Called when the node enters the scene tree for the first time.
func _ready():
	worldmap = get_tree().get_root().get_node("Main/Worldmap")


func _input(event):
	pass
   # Mouse in viewport coordinates
#	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed():
#		worldmap.moveEntityToMousePosition(worldmap.get_node('Personnage'))


func onStartState():
	emit_signal("state_player_start")
	
func onEndState():
	emit_signal("state_player_end")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (running):
		if(nbProcess == 0):
			onStartState()
#		print('process Player thing')
#		print(str(worldmap))
#		print(str($Main/Worldmap))
#		emit_signal("move_entity")
		nbProcess+= 1


func isRunning():
	if(nbProcess > 100):
		running = false
		onEndState()
		nbProcess = 0
	return running
