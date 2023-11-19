extends "res://scene/cats/cat.gd"

func _ready() -> void:
	ready()
	if unhide:
		$Amongus.hide()
		$DeadBody.show()
		$Sprite_Cat.show()

func fix():
	$Amongus.hide()
	$DeadBody.show()
	$Sprite_Cat.show()

func secret_func():
	disable_hide()
	fix()

func click():
	if unhide:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_unhide")
	else:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_hide")
