extends EnemyState
class_name Attack

func enter():
	enemy.attack()

func exit():
	pass

func update(_delta : float):
	transitioned.emit(self, "chase")
	

func process_physics(_delta : float):
	pass
