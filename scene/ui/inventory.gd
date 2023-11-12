extends Control

var item_preset = preload("res://scene/ui/inventory_item.tscn")
var cat_texture = preload("res://resource/texture/kotik1.png")
var usual_pos = Vector2(0,0)
var another_pos = Vector2(-110,0)

func _ready() -> void:
	if len(%VBoxContainer.get_children()) != 0:
		open()

func add_item(item_name, item_texture):
	var temp = item_preset.instantiate() as TextureRect
	temp.name = item_name
	temp.texture = item_texture
	open()
	%VBoxContainer.add_child(temp)
func sub_item(item_name):
	for i in %VBoxContainer.get_children():
		if i.name == item_name:
			var temp = i
			%VBoxContainer.remove_child(temp)
			temp.queue_free()
			if len(%VBoxContainer.get_children()) == 0:
				close()
			break

func open():
	var tween = create_tween()
	tween.tween_property(self, "position", usual_pos, 0.3)
func close():
	var tween = create_tween()
	tween.tween_property(self, "position", another_pos, 0.3)

#func _unhandled_input(event: InputEvent) -> void:
#	if Input.is_action_just_pressed("left_mouse") or Input.is_action_just_pressed("action"):
#		add_item("cat",cat_texture)
#	if Input.is_action_just_pressed("right_mouse"):
#		sub_item("cat")
