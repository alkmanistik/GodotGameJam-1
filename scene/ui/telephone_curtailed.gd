extends Control

var usual_pos = Vector2(1608,1107)
var another_pos = Vector2(1608,800)
var hide_pos = Vector2(1608,2000)

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
