extends npc
var gold:int = 100
var greeting:String = "Welcome to " + name + "'s shop!"
var price_adjust:float = 1.0
var open = true
var can_produce = true
var barter_amount:float = 1.2
var buy_discount:float = 0.5
#var your other non-npc var here

func display_inventory():
	pass
	#for each item in inventory:
	#print inventory, price

func _on_body_entered(body):
	if body is Player:
		if open == true:
			print(greeting)
			$AnimatedSprite2D.play()
			display_inventory()
	#print greeting
	#display inventory
		if body.is_attacking:
			pass
		#print warning
		#become hostile

func remove_from_inventory(item:String):
	return true

func change_gold(_amount:int):
	pass
