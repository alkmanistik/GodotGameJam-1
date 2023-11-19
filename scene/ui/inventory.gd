extends Control

var item_preset: Resource = preload("res://scene/ui/inventory_item.tscn")
var cat_texture: Resource = preload("res://resource/texture/kotik1.png")
var usual_pos: Vector2 = Vector2(0,0)
var another_pos: Vector2 = Vector2(-110,0)
var Bone_texture: Resource = preload("res://resource/texture/Bone.png")
var Pumpkin_texture: Resource = preload("res://resource/texture/Pumpkin.png")
var Hairbrush_texture: Resource = preload("res://resource/texture/hairbrush.png")
var Valerian_texture: Resource = preload("res://resource/texture/Valerian.png")

func _ready() -> void:
	if len(%VBoxContainer.get_children()) != 0:
		open()

func resource_ret(item_name):
	if item_name == "Bone":
		return Bone_texture
	elif item_name == "Pumpkin":
		return Pumpkin_texture
	elif item_name == "Valerian":
		return Valerian_texture
	elif item_name == "Hairbrush":
		return Hairbrush_texture

func _process(delta: float) -> void:
	for i in Global.inventory_dict.keys():
		if Global.inventory_dict[i] == 1 and check_item(i):
			add_item(i,resource_ret(i))
		if Global.inventory_dict[i] == 0 and !check_item(i):
			sub_item("Bone")

func add_item(item_name : String, item_texture: Resource) -> void:
	var temp = item_preset.instantiate() as TextureRect
	temp.name = item_name
	temp.texture = item_texture
	open()
	%VBoxContainer.add_child(temp)

func check_item(item_name):
	for i in %VBoxContainer.get_children():
		if i.name == item_name:
			return false
	return true

func sub_item(item_name) -> void:
	for i in %VBoxContainer.get_children():
		if i.name == item_name:
			var temp = i
			%VBoxContainer.remove_child(temp)
			temp.queue_free()
			if len(%VBoxContainer.get_children()) == 0:
				close()
			break

func open() -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", usual_pos, 0.3)
func close() -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", another_pos, 0.3)

#func _unhandled_input(event: InputEvent) -> void:
#	if Input.is_action_just_pressed("left_mouse") or Input.is_action_just_pressed("action"):
#		add_item("cat",cat_texture)
#	if Input.is_action_just_pressed("right_mouse"):
#		sub_item("cat")
