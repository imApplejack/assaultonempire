extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StatePlayer_state_player_end():
	visible = false


func _on_StatePlayer_state_player_start():
	visible = true


func _on_StateEnemy_state_enemy_end():
	visible = true
