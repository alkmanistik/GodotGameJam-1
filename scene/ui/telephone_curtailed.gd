extends Control

var usual_pos = Vector2(1608,1107)
var another_pos = Vector2(1608,800)
var hide_pos = Vector2(1608,2000)
signal show_phone(tag)

func update_label(now_cat,max_cat):
	%Label.text = str(now_cat) + " / " + str(max_cat)

func update_time_label():
	var temp = Time.get_time_dict_from_system()
	%Time_Label.text = str(temp.hour)+":"+str(temp.minute)

func _ready():
	update_time_label()

func to_usual_pos() -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", usual_pos, 0.5)

func to_another_pos() -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", another_pos, 0.5)

func to_hide_pos() -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", hide_pos, 0.5)

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("esc"):
		if position == usual_pos:
			to_another_pos()
		else:
			to_usual_pos()


func _on_timer_timeout() -> void:
	update_time_label()
	$Timer.start()


func _on_to_taxi_pressed() -> void:
	to_hide_pos()
	show_phone.emit("Taxi")


func _on_to_telephone_pressed() -> void:
	pass # Replace with function body.


func _on_to_camera_pressed() -> void:
	to_hide_pos()
	show_phone.emit("Photoapparat")


func _on_to_galery_pressed() -> void:
	to_hide_pos()
	show_phone.emit("PhotoGalery")


func _on_to_locator_pressed() -> void:
	to_hide_pos()
	show_phone.emit("Locator")


func _on_to_settings_pressed() -> void:
	to_hide_pos()
	show_phone.emit("Setting")
