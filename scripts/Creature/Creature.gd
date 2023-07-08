extends Entity

class_name Creature

@export var weapon : Weapon
@export var ability : ActionItem

func equip():
	pass

func attack():
	if(weapon != null):
		weapon.action(damage)

func use_ability():
	ability.action(damage)
	pass

