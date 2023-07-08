extends EnemyState
class_name UseAbility

func enter(_msg := {}):
	enemy.use_ability()

func exit():
	pass

func update(_delta : float):
	transitioned.emit(self, "chase")
	

func process_physics(_delta : float):
	pass
