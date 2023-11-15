extends CanvasLayer

var setting_usual_pos: Vector2 = Vector2(0,0)
var setting_another_pos: Vector2 = Vector2(0, 2000)

func open_settings() -> void:
	var tween = create_tween() as Tween
	tween.tween_property($Settings, "position", setting_usual_pos, 0.5)
func close_settings() -> void:
	var tween = create_tween() as Tween
	tween.tween_property($Settings, "position", setting_another_pos, 0.5)



func _on_close_settings_pressed() -> void:
	close_settings()


func _on_settings_pressed() -> void:
	open_settings()


func _on_exit_pressed() -> void:
	get_tree().quit()
