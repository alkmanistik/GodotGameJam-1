extends Control

var usual_pos = Vector2(1608,1107)
var another_pos = Vector2(1608,800)

func update_label(now_cat,max_cat):
	%Label.text = str(now_cat) + " / " + str(max_cat)

func update_time_label():
	var temp = Time.get_time_dict_from_system()
	%Time_Label.text = str(temp.hour)+":"+str(temp.minute)

func _ready():
	update_time_label()


func _on_panel_mouse_entered():
	var tween = create_tween()
	tween.tween_property(self, "position", another_pos, 0.5)


