extends npc

@onready var sprite: Sprite2D = $Sprite2D

var can_damage = true
var damage_amount:int = 0
var damage_cooldown:float = 0
@export var move_speed: float = 5




func _ready() -> void:
	player = Global.game_world.player
	

func _process(delta: float) -> void:
	pass
	# MOVE TWOARD PLAYER
func configure_pickup(_type: String) -> bool:
	if _type == "Slime":
		damage_amount == 1
		damage_cooldown == 2
		return true
	else: return false
func _on_detection_radius_body_entered(body: Node2D) -> void:

	if body is Player:
		is_hostile = true


func _on_detection_radius_body_exited(body: Node2D) -> void:
	if body is Player:
		is_hostile = false


func _on_hit_area_body_entered(body: Node2D) -> void:
		if body is Player and can_damage:
			body.change_health(damage_amount)
		get_tree().create_timer(damage_cooldown).timeout



#func _on_hit_area_body_exited(body: Node2D) -> void:
#	pass # Replace with function body.
