extends "res://scene/cats/cat.gd"

func _ready() -> void:
	ready()
	if unhide:
		fix()

func secret_func():
	fix()
	disable_hide()
	Global.inventory_dict["Bone"] = 0
	Global.save_game()

func fix():
	var tween = create_tween()
	tween.tween_property(self, "position", position - Vector2(150,0),0.4)
	await get_tree().create_timer(0.4).timeout
	$Bone.show()

func click():
	if unhide:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_unhide")
	else:
		DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start_hide")
