class_name UseAbility

func enter():
	enemy.use_ability()

func exit():
	pass

func update(_delta : float):
	transitioned.emit(self, "chase")
	

func process_physics(_delta : float):
	pass
