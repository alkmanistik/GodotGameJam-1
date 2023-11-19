extends CanvasLayer

func _ready():
	DialogueManager.show_dialogue_balloon(load("res://dialogs/start.dialogue"), "start")

func change():
	$Node2D.hide()
	$object.show()
