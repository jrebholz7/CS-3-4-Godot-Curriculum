extends AnimatableBody2D
var is_open = false
func _ready():
	var get_signal = get_node("res://scenes/lever.tscn")
	if get_signal:
		get_signal.connect("open_door", Callable(self, "_on_custom_signal_recieved"))

func set_is_open(is_open: bool) -> void:
	if is_open == true:
		$AnimatedSprite2D.frame = 0
		collision_layer = 1
		$LightOccluder2D.visible = false
	else:
		$AnimatedSprite2D.frame = 1
		collision_layer = 0
		$LightOccluder2D.visible = true


func _on_custom_signal_recieved(_open_door):
	queue_free()
