extends Control

var item_preset = preload("res://scene/ui/inventory_item.tscn")
var cat_texture = preload("res://resource/texture/kotik1.png")

func add_item(item_name, item_texture):
	var temp = item_preset.instantiate() as TextureRect
	temp.name = item_name
	temp.texture = item_texture
	%VBoxContainer.add_child(temp)
func sub_item(item_name):
	for i in %VBoxContainer.get_children():
		if i.name == item_name:
			var temp = i
			%VBoxContainer.remove_child(temp)
			temp.queue_free()
			break
#
#func _unhandled_input(event: InputEvent) -> void:
#	if Input.is_action_just_pressed("left_mouse") or Input.is_action_just_pressed("action"):
#		add_item("cat",cat_texture)
#	if Input.is_action_just_pressed("right_mouse"):
#		sub_item("cat")
