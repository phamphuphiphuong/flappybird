extends Sprite

func _process(delta):
	if Input.is_action_just_pressed("touch") and visible:
		get_tree().change_scene("res://scenes/title.tscn")
		get_tree().paused = false
