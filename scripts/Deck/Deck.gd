extends Node

@export var card_list : Array[Node2D]




func get_card(index : int):
	return card_list[index]

func get_num_random_cards(amount: int) -> Array[Node2D]:
	var temp_list : Array[Node2D]= []
	assert(amount > 0, "amount must be greater than 0")
	for i in range(amount):
		var rand_int := randi_range(0,len(card_list))
		temp_list.append(card_list[rand_int])
	return temp_list

