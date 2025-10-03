extends Area2D


func play_animation(reverse: bool = false) -> void:
	var speed: int
	if reverse:
		speed = -1
	else:
		speed = 1
	$AnimatedSprite2D.play("", speed, reverse)

func _on_body_entered(body):
	if body is Player:
		play_animation()
