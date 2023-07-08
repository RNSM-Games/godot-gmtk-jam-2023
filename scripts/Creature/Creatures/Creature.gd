extends Entity

class_name Creature

@export var weapon : Weapon
@export var ability : ActionItem



func equip():
	pass

func attack():
	if(weapon != null):
		print("HI")
		weapon.action(damage)

func use_ability():
	ability.action(damage)
	pass

func _input(event):
	if event.is_action_pressed("Attack"):
		attack()
	if event.is_action_pressed("Ability"):
		use_ability()
