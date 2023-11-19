extends Node2D


var loadscene = preload("res://scene/ui/loading.tscn")
var now_scene
var scene_sound

func _ready() -> void:
	ready()

func ready() -> void:
	GlobalAudioStreamPlayer.set_sound(scene_sound)
	$Player.set_camera_stopper($Left_Up_Stopper.position.x,$Left_Up_Stopper.position.y,$Right_Down_Stopper.position.x,$Right_Down_Stopper.position.y)
	$Player.position = $Start.position
	$UI.visible = true
	Global.temp_cat = "default"
	Global.location = name
	Global.position = $Start.position
	Global.save_game()
	get_tree().get_first_node_in_group("telephone_expand").connect("change_level", change_level)

func change_level(name_new_location: String):
	if name_new_location == now_scene:
		return
	$UI.visible = false
	var temp = loadscene.instantiate()
	$Load.add_child(temp)
	var new_scene = load(str(name_new_location))
	await get_tree().create_timer(2.6).timeout
	get_tree().change_scene_to_packed(new_scene)
