extends "res://scene/cats/cat.gd"

func _ready() -> void:
	ready()
	if unhide:
		$Pumpkin.hide()

func secret_func():
	disable_hide()
	$Pumpkin.hide()

func click():
	if unhide:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_unhide")
	else:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_hide")
