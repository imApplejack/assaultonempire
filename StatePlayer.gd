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


func input(event):
   # Mouse in viewport coordinates
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed():
		worldmap.moveEntityToMousePosition(worldmap.get_node('Personnage'))
		emit_signal("state_player_end")
		




# Called every frame. 'delta' is the elapsed time since the previous frame.
func process(delta):
	pass


func _on_EndTurnButton_button_down():
	emit_signal("state_player_end")
