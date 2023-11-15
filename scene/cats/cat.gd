extends Node2D

var hide: bool = false

func check() -> void:
	hide = Global.cat_dict.get(name, false)
