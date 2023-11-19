extends "res://scene/location/location.gd"

func _ready() -> void:
	now_scene = "res://scene/location/city.tscn"
	scene_sound = "res://resource/music/town.mp3"
	ready()
