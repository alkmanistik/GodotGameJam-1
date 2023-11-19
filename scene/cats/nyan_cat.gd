extends "res://scene/cats/cat.gd"

var speed = 500
var temp = 0

func _ready() -> void:
	ready()
	disable_hide()
	$Timer.start()

func _physics_process(delta: float) -> void:
	position.x += speed * delta
	temp += speed * delta

func _on_timer_timeout() -> void:
	position.x -= temp
	temp = 0
	$Timer.start()

