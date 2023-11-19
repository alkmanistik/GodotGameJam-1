extends CanvasLayer

var rotation_speed = 0.5

func start():
	%Number.text = "Loading"
	await get_tree().create_timer(0.4).timeout
	%Number.text = "Loading."
	await get_tree().create_timer(0.4).timeout
	%Number.text = "Loading.."
	await get_tree().create_timer(0.4).timeout
	%Number.text = "Loading..."
	await get_tree().create_timer(0.4).timeout
	%Number.text = "Loading"
	await get_tree().create_timer(0.4).timeout
	%Number.text = "Loading."
	await get_tree().create_timer(0.4).timeout
	%Number.text = "Loading.."
	await get_tree().create_timer(0.4).timeout
	%Number.text = "Loading..."
	await get_tree().create_timer(0.4).timeout
	queue_free()

func _process(delta: float) -> void:
	$Control3.rotation += -rotation_speed * delta
	$Control.rotation += rotation_speed * delta
	$Control2.rotation += -rotation_speed * delta

func _ready() -> void:
	start()
