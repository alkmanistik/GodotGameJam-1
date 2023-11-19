extends CanvasLayer

var setting_usual_pos: Vector2 = Vector2(0,0)
var setting_another_pos: Vector2 = Vector2(0, 2000)
var sound_scene = "res://resource/music/menu.mp3"

func open_settings() -> void:
	var tween = create_tween() as Tween
	tween.tween_property($Settings, "position", setting_usual_pos, 0.5)
func close_settings() -> void:
	var tween = create_tween() as Tween
	tween.tween_property($Settings, "position", setting_another_pos, 0.5)

func _ready():
	GlobalAudioStreamPlayer.set_sound(sound_scene)
	%HSlider.value = Global.volume

func _on_close_settings_pressed() -> void:
	close_settings()


func _on_settings_pressed() -> void:
	open_settings()


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_h_slider_value_changed(value):
	Global.volume = value
	Global.save_global_settings()


func _on_load_game_pressed():
	get_tree().change_scene_to_file("res://scene/location/city.tscn")


func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://scene/location/start.tscn")
