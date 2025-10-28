extends AnimatableBody2D
#var open = false
#@onready var lever: Area2D = $"Lever"
#
#func _ready():
	#lever.door_open.connect(_on_door_open)
#
#func _on_door_open():
	#print("It Worked!")
	#set_is_open(true)
#func set_is_open(is_open: bool) -> void:
	#if is_open == true:
		#$AnimatedSprite2D.frame = 0
		#collision_layer = 1
		#$LightOccluder2D.visible = false
	#else:
		#$AnimatedSprite2D.frame = 1
		#collision_layer = 0
		#$LightOccluder2D.visible = true
