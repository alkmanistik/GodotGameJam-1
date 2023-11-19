extends Area2D

var unhide: bool = false
var photographed: bool = false

func check() -> void:
	unhide = Global.cat_dict.get(name, false)

func _ready() -> void:
	ready()
	disable_hide()

func disable_hide():
	unhide = true
	Global.cat_dict[name][1] = unhide
	Global.save_game()

func get_foto():
	photographed = true
	Global.cat_dict[name][1] = unhide
	Global.save_game()

func ready():
	unhide = Global.cat_dict[name][1]
	photographed = Global.cat_dict[name][0]

func _on_camera_area_body_entered(body: Node2D) -> void:
	Global.temp_cat = name

func _on_camera_area_body_exited(body: Node2D) -> void:
	Global.temp_cat = "default"

#func _unhandled_input(_event: InputEvent) -> void:
#	if Input.is_action_just_pressed("action"):
#		disable_hide()


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		click()

func click():
	DialogueManager.show_dialogue_balloon(load("res://dialogs/"+name+".dialogue"), "start")

func secret_func():
	disable_hide()
	fix()

func fix():
	pass
