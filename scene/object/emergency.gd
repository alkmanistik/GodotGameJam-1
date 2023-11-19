extends Area2D


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		click()

func click():
	if Global.cat_dict["Amogus"][1] == 0:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+"Amogus"+".dialogue"), "emergency")
	else:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+"Amogus"+".dialogue"), "over")
