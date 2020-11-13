extends Node2D

func _ready():
	get_child(0).get_child(0).material.set("shader_param/speed", 0.2)
	get_child(2).get_child(1).material.set("shader_param/speed", 0.2)

func _process(delta):
	if Input.is_action_just_pressed("touch"):
		get_tree().change_scene("res://scenes/gamepaly.tscn")
