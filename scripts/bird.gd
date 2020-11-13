extends KinematicBody2D

var velocity = Vector2.ZERO
var touched = false
var score = 0
export(int) var gravity = 1500
export(int) var jumpspeed = -500

func _physics_process(delta):
	if Input.is_action_just_pressed("touch") and !touched:
		touched = true
	
	if touched:
		if Input.is_action_just_pressed("touch"):
			velocity.y = jumpspeed
			$sprite.rotation_degrees = -45
			$swing.play()
			
		
		$sprite.rotation_degrees += (80 - $sprite.rotation_degrees) * delta
		velocity.y += gravity * delta
		velocity = move_and_slide(velocity, Vector2.UP)
		get_parent().get_child(4).get_child(0).text = str(score)


func _on_box_area_entered(area):
	if area.is_in_group("fail"):
		$hit.play()
		get_parent().get_child(0).get_child(0).material.set("shader_param/speed", 0)
		get_parent().get_child(2).get_child(1).material.set("shader_param/speed", 0)
		get_parent().get_child(4).get_child(1).visible = true
		get_tree().paused = true
