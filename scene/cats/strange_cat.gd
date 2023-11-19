extends "res://scene/cats/cat.gd"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func secret_func():
	disable_hide()
	Global.add_item("Valerian")

func click():
	if unhide:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/Strange.dialogue"), "start_unhide")
	else:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/Strange.dialogue"), "start_hide")
