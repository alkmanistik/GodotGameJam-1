extends Control

var usual_pos = Vector2(960,540)
var another_pos = Vector2(960,1540)
var temp_page = "Setting"
var show_small_phone = true

signal show_mini_phone()

func open():
	var tween = create_tween()
	tween.tween_property(self, "position", usual_pos, 0.5)
func close():
	var tween = create_tween()
	tween.tween_property(self, "position", another_pos, 0.5)

func show_tag(tag):
	show_small_phone = false
	get_node(str(tag)).show()
	temp_page = tag
	await get_tree().create_timer(0.5).timeout
	open()

func _on_button_pressed() -> void:
	show_small_phone = true
	close()
	await get_tree().create_timer(0.5).timeout
	get_node(str(temp_page)).hide()
	show_mini_phone.emit()

func _unhandled_input(event: InputEvent) -> void:
	if !show_small_phone and Input.is_action_just_pressed("esc"):
		_on_button_pressed()


func _on_get_picture_pressed() -> void:
	var image = get_viewport().get_texture().get_data()
	image.flip_y()
	image.save_png()
