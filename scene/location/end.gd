extends CanvasLayer

func _ready():
	DialogueManager.show_dialogue_balloon(load("res://dialogs/end.dialogue"), "start")

func change():
	$First.hide()
	$Second.show()
