extends State
class_name UseAbility

func enter():
	enemy.use_ability()

func exit():
	pass

func update(delta : float):
	transitioned.emit(self, "chase")
	

func process_physics(delta : float):
	pass
