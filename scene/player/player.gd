extends CharacterBody2D

var speed: int = 30000

var can_move: bool = true

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed * delta
	move_and_slide()

func set_camera_stopper(left,top,right,bottom) -> void:
	$Camera.limit_left = left
	$Camera.limit_top = top
	$Camera.limit_right = right
	$Camera.limit_bottom = bottom

func switch_can_move() -> void:
	can_move = !can_move
