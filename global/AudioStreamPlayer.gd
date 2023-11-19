extends AudioStreamPlayer

func set_sound(sound):
	stream = load(sound)
	playing = true

func _process(delta):
	volume_db = Global.volume
