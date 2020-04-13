extends Node


var running = false
var nbProcess = 0
var worldmap

signal state_enemy_start
signal state_enemy_end

func onStartState():
	emit_signal("state_enemy_start")
	

# Called when the node enters the scene tree for the first time.
func _ready():
	worldmap = get_tree().get_root().get_node("Main/Worldmap")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func process(delta):
	for monstre in  get_tree().get_nodes_in_group('monstres'):
		print(str(monstre))
	emit_signal("state_enemy_end")	
