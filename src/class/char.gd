extends Node


signal entity_click


var hp = 5
var maxhp = 5
var characterName = 'tata'
var actionDone = 2


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

func on_click():
	emit_signal("entity_click", self)
