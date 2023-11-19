extends Control

func _ready() -> void:
	update_label()

func update_label():
	if Global.location == "City":
		%Label.text = str(Global.find_cat_city)+" / 6"
	elif Global.location == "Laboratory":
		%Label.text = str(Global.find_cat_laboratory)+" / 6"
	elif Global.location == "Park":
		%Label.text = str(Global.find_cat_park)+" / 6"

func _process(_delta: float) -> void:
	update_label()
