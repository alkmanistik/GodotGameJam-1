extends "res://scene/cats/cat.gd"


func _ready():
	ready
	if unhide:
		fix()

func fix():
	pass

func click():
	if unhide:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_unhide")
	else:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_hide")
