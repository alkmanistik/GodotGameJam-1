extends "res://scene/cats/cat.gd"


func _ready() -> void:
	ready()
	get_tree().get_first_node_in_group("telephone_expand").connect("flash", flash)

func flash():
	if Global.temp_cat==name and unhide == false:
		$AnimationPlayer.play("flash")

