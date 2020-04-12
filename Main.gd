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
	if(states[currentState].isRunning()):
		states[currentState]._process(delta)
	else:
		if(currentState == 1):
			currentState = 0
		else:
			currentState = 1
		states[currentState].running = true





#State tours joueur
#func processPlayerTurn():
#	if(not initState):
#		initPlayerTurn()
#	$Ui/Debug/ActionToDo.text = 'Fais bouger ' + $Worldmap/Personnage.characterName
#	#fin du state
#	if($Worldmap/Personnage.actionDone == 0):
#		currentState = ENNEMY_TURN
#		initState = false
#func initPlayerTurn():
#	$Worldmap/Personnage.actionDone = 2 #todo foreach les personnages
#	initState = true
#
##State tour ennemis
#func processEnnemyTurn():
#	if(not initState):
#		initPlayerTurn()
#	print('tour des mechants')
#	currentState = PLAYER_TURN
#	initState = false
#
#func initEnnemyTurn():
#	initState = true
	
