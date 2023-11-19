extends Area2D

@export var pos: Marker2D

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		click()

func click():
	print("hellp")
