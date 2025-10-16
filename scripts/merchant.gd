extends npc
var gold:int = 100
var shop_name:String = "Bartholomew"
var greeting:String = "Welcome to " + shop_name + "'s shop!"
var next_greeting:String = "Welcome back to " + shop_name + "'s shop! Glad to see you are back!"
var final_greeting:String = "You again? Buy something or leave. You're disrupting my business!"
var price_adjust:float = 1.0
var open = true
var can_produce = true
var barter_amount:float = 0.8
var buy_discount:float = 0.5
var buyer:bool = false
var greeted_1 = false
var greeted_2 = false
#var your other non-npc var here
func _ready():
	moveable = false
	open = true

func display_inventory():
	pass
	#for each item in inventory:
	#print inventory, price

func _on_area_2d_body_entered(body):
	if body is Player:
		if greeted_1 == false and greeted_2 == false:
			print(greeting)
			greeted_1 = true
		elif greeted_1 == true and greeted_2 == false:
			print(next_greeting)
			greeted_2 = true
		else:
			print(final_greeting)
		$AnimatedSprite2D.play()
		display_inventory()
		await get_tree().create_timer(1).timeout
		$AnimatedSprite2D.stop()
	#print greeting
	#display inventory
		#if body.is_attacking:
			#pass
		#print warning
		#become hostile

func remove_from_inventory(item:String):
	return true

func change_gold(_amount:int):
	pass
