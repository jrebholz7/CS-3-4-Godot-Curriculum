extends Node2D
var inventory: Array[Inventory_Items] = []
var selected_item : int = 0

func _ready() -> void:
	print_inventory_item(selected_item)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("inventory_up"):
		selected_item -=1
		if selected_item <0:
			selected_item = 0
		print_inventory_item(selected_item)
	if Input.is_action_just_pressed("inventory_up"):
		selected_item +=1
		if selected_item >inventory.size()-1:
			selected_item = inventory.size()-1
		print_inventory_item(selected_item)


func print_inventory_item(item_number : int):
	print("The item is called " +inventory[item_number].name)
	print("The item costs " +str(inventory[item_number].cost))
	print("I have " +str(inventory[item_number].quantity) + " of this item")
	print("This item " +inventory[item_number].description)

func add_item(inventory_item : Inventory_Items):
	pass

func delete_item():
	pass

# add to inventory
# remove from inventory
