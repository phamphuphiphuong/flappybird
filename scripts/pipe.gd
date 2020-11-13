extends Node2D

func _ready():
	randomize()
	position.y += rand_range(-128, 32)
	
func _physics_process(delta):
	position.x -= 2
	
	if position.x <= -336:
		queue_free()


func _on_pass_body_entered(body):
	if body.is_in_group("bird"):
		$point.play()
		get_parent().get_parent().get_child(3).score += 1
