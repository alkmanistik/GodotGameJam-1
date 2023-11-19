extends "res://scene/location/location.gd"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	now_scene = "res://scene/location/laboratory.tscn"
	scene_sound = "res://resource/music/Lobaratory.mp3"
	ready()


func change_level(name_new_location: String):
	$"Cats/Shroedinger`s Cat".disable_hide()
	if name_new_location == now_scene:
		return
	$UI.visible = false
	var temp = loadscene.instantiate()
	$Load.add_child(temp)
	var new_scene = load(str(name_new_location))
	await get_tree().create_timer(2.6).timeout
	get_tree().change_scene_to_packed(new_scene)
