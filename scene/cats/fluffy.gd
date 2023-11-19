extends "res://scene/cats/cat.gd"

func _ready() -> void:
	ready()
	if unhide:
		fix()

func fix():
	$Fluffy.hide()
	$Sprite_Cat.show()
	Global.inventory_dict["Hairbrush"] = 0
	Global.save_game()

func click():
	if unhide:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_unhide")
	else:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_hide")
