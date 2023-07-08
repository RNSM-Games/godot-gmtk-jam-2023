extends ActionItem

@export var bomb : PackedScene




func action(damage: float):
	var b = bomb.instantiate()
	owner.get_parent().add_child(b)
	b.position = character.position
	b.bomb_damage = b.bomb_damage*damage
	

