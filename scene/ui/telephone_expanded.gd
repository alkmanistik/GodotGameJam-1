extends Control

var usual_pos = Vector2(960,540)
var another_pos = Vector2(960,1540)
var temp_page = "Setting"

signal show_mini_phone()

func open():
	var tween = create_tween()
	tween.tween_property(self, "position", usual_pos, 0.5)
func close():
	var tween = create_tween()
	tween.tween_property(self, "position", another_pos, 0.5)

func show_tag(tag):
	get_node(str(tag)).show()
	temp_page = tag
	await get_tree().create_timer(0.5).timeout
	open()

func _on_button_pressed() -> void:
	close()
	await get_tree().create_timer(0.5).timeout
	get_node(str(temp_page)).hide()
	show_mini_phone.emit()
