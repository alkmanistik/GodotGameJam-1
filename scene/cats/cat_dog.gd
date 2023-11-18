extends "res://scene/cats/cat.gd"

func _ready() -> void:
	ready()

func secret_func():
	var tween = create_tween()
	tween.tween_property(self, "position", position - Vector2(150,0),0.4)
	disable_hide()
	Global.inventory_dict["Bone"] = 0
	Global.save_game()

