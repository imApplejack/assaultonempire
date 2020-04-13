extends Node2D

enum {
	PLAYER_TURN,
	ENNEMY_TURN
}

var currentState = PLAYER_TURN

# hack pour initialiser une variable au constructeur
onready var states = {
		PLAYER_TURN: $StatePlayer,
		 ENNEMY_TURN: $StateEnemy
		}

func _ready():
	pass


func _process(delta):
	states[currentState].process(delta)

func _input(event):
	states[currentState].input(event)
	


func _on_StatePlayer_state_player_end():
	currentState = 1


func _on_StateEnemy_state_enemy_end():
	currentState = 0
