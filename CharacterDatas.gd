extends GridContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var selectedEntity = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_entity_click(entity):
	selectedEntity = entity
	$Name.text = entity.characterName
	$Hp.text = 'HP : ' + str(entity.hp) + '/' + str(entity.maxhp)


