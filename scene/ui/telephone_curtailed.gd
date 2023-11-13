extends Control

var usual_pos = Vector2(1608,1107)
var another_pos = Vector2(1608,800)
var hide_pos = Vector2(1608,2000)
var number_tel = ""
var simple_text = "Empty Number"
var overflow_text = "Overflow"
var show_big_phone = false

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
	show_big_phone = false

func to_another_pos() -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", another_pos, 0.5)

func to_hide_pos() -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", hide_pos, 0.5)
	show_big_phone = true

func _unhandled_input(event: InputEvent) -> void:
	if !show_big_phone and Input.is_action_just_pressed("esc"):
		if position == usual_pos:
			to_another_pos()
		else:
			if !%Telephone_app.visible:
				to_usual_pos()
			else:
				to_usual_pos()
				_on_to_telephone_pressed()

func _on_timer_timeout() -> void:
	update_time_label()
	$Timer.start()

func _on_to_taxi_pressed() -> void:
	to_hide_pos()
	show_phone.emit("Taxi")

func _on_to_telephone_pressed() -> void:
	change_menu()
	if position == usual_pos and %Telephone_app.visible:
			to_another_pos()

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

func change_menu():
	%Telephone_app.visible = !%Telephone_app.visible
	%Menu.visible = !%Menu.visible

func update_number():
	if len(number_tel) == 0:
		%Number.text = simple_text
	elif len(number_tel) < 10:
		%Number.text = str(number_tel)
	else:
		%Number.text = overflow_text
		number_tel = ""

func add_number(temp):
	number_tel += str(temp)
	update_number()

func del_number():
	if len(number_tel) != 0:
		number_tel = number_tel.left(len(number_tel) - 1)
		update_number()

func call_number():
	
	number_tel = ""
	%Number.text = "Calling"



func _on_button_pressed() -> void:
	add_number(1)


func _on_button_2_pressed() -> void:
	add_number(2)


func _on_button_3_pressed() -> void:
	add_number(3)


func _on_button_4_pressed() -> void:
	add_number(4)


func _on_button_5_pressed() -> void:
	add_number(5)


func _on_button_6_pressed() -> void:
	add_number(6)


func _on_button_7_pressed() -> void:
	add_number(7)


func _on_button_8_pressed() -> void:
	add_number(8)


func _on_button_9_pressed() -> void:
	add_number(9)


func _on_button_11_pressed() -> void:
	add_number(0)
