extends Node2D

var pipe = preload("res://scenes/pipe.tscn")

func _on_delay_timeout():
	var pipes = pipe.instance()
	self.add_child(pipes)
	$delay.wait_time = 1.5
