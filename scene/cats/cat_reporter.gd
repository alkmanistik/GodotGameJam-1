extends "res://scene/cats/cat.gd"


func _ready() -> void:
	ready()
	get_tree().get_first_node_in_group("telephone_expand").connect("flash", flash)
	get_tree().get_first_node_in_group("mini_telephone").connect("disable_hide", disable_hide)

func flash():
	if Global.temp_cat==name and unhide == false:
		$AnimationPlayer.play("flash")

func click():
	if unhide:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_unhide")
	else:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_hide")
