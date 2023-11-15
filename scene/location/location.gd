extends Node2D


func _ready() -> void:
	$Player.set_camera_stopper($Left_Up_Stopper.position.x,$Left_Up_Stopper.position.y,$Right_Down_Stopper.position.x,$Right_Down_Stopper.position.y)
	$Player.position = $Start.position
	$UI.visible = true

