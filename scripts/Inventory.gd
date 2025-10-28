@tool
extends Node2D
@export var inventory: Array[Inventory_Item] = []
var selected_item : int = 0

func _on_area_2d_body_entered(body):
	if body is Player:
		print_inventory_item(selected_item)


func _ready() -> void:
	var sword = preload("res://Items/sword.tres")
	var potion = preload("res://Items/Potion.tres")
	var coin = preload("res://Items/coin.tres")
	add_item(potion)
	add_item(sword)
	add_item(coin)
	print_inventory_item(selected_item)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("inventory_up"):
		selected_item -=1
		if selected_item <0:
			selected_item = 0
		print_inventory_item(selected_item)
	if Input.is_action_just_pressed("inventory_down"):
		selected_item +=1
		if selected_item >inventory.size()-1:
			selected_item = inventory.size()-1
		print_inventory_item(selected_item)
	if Input.is_action_just_pressed("buy__inventory_item"):
		if inventory[selected_item].quantity >= 1:
			inventory[selected_item].quantity -= 1
			print("Enjoy your " + inventory[selected_item].name + "!")
		else:
			print("I don't have any more of that item, buy something else.")
		
	if inventory[selected_item].quantity == 0:
		delete_item(selected_item)


func print_inventory_item(item_number : int):
	print("The item is called " + inventory[item_number].name)
	print("The item costs " + str(inventory[item_number].cost))
	print("I have " + str(inventory[item_number].quantity) + " of this item")
	print("This item " + inventory[item_number].description)

func add_item(new_item : Resource):
	inventory.append(new_item)

func delete_item(done_item: int):
	inventory.erase(done_item)

# add to inventory
# remove from inventory
