extends Control

var usual_pos: Vector2 = Vector2(960,540)
var another_pos: Vector2 = Vector2(960,1540)
var temp_page: String = "Setting"
var show_small_phone: bool = true
signal flash()

signal change_level(name:String)
signal show_mini_phone()

func _ready():
	%HSlider.value = Global.volume

func open():
	var tween = create_tween() as Tween
	tween.tween_property(self, "position", usual_pos, 0.5)
func close():
	var tween = create_tween() as Tween
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

func _unhandled_input(_event: InputEvent) -> void:
	if !show_small_phone and Input.is_action_just_pressed("esc"):
		_on_button_pressed()
	if $Photoapparat.visible and Input.is_action_just_pressed("action"):
		_on_get_picture_pressed()


func _on_get_picture_pressed() -> void:
	flash.emit()
	%Camera_aim.visible = false
	await get_tree().create_timer(0.1).timeout
	var image = get_viewport().get_texture().get_image()
	%Camera_aim.visible = true
	image.blend_rect(image, Rect2i(%Camera_aim.global_position,Vector2(405,405)), Vector2(0,0))
	image.crop(405,405)
	if !Global.cat_dict[Global.temp_cat][1]:
		image.save_png(Global.path_to_save_picture+"default"+".png")
	else:
		if Global.cat_dict[Global.temp_cat][0] == 0:
			Global.cat_dict[Global.temp_cat][0] = 1
			Global.add_cat_label()
		image.save_png(Global.path_to_save_picture+Global.temp_cat+".png")


func _on_city_pressed() -> void:
	change_level.emit("res://scene/location/city.tscn")


func _on_laboratory_pressed() -> void:
	change_level.emit("res://scene/location/laboratory.tscn")


func _on_park_pressed() -> void:
	change_level.emit("res://scene/location/park.tscn")


func _on_h_slider_value_changed(value):
	Global.volume = value
	Global.save_global_settings()


func _on_exit_pressed():
	get_tree().quit()


func _on_exit_to_menu_pressed():
	get_tree().change_scene_to_file("res://scene/ui/menu.tscn")


func _on_end_pressed():
	if Global.find_cat >= 12:
		get_tree().change_scene_to_file("res://scene/location/end.tscn")
