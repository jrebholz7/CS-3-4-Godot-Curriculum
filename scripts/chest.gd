extends Area2D
var openable: bool = true
var potion = preload("res://scenes/health_potion.tscn")
var coin = preload("res://scenes/coin.tscn")
func animate_opening() -> void:
	$AnimatedSprite2D.play()
func _on_body_entered(body):
	if openable == true and body is Player:
		openable = false
		animate_opening()
		potion.instantiate()
		coin.instantiate()
