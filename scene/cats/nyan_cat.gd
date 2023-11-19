extends "res://scene/cats/cat.gd"

var speed = 10
var temp

func _physics_process(delta: float) -> void:
	position.x -= speed * delta
	temp += speed * delta

func _on_timer_timeout() -> void:
	position.x += temp
	temp = 0
	$Timer.start()

