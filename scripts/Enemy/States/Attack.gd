extends State
class_name Attack

func enter():
	enemy.attack()

func exit():
	pass

func update(delta : float):
	transitioned.emit(self, "chase")
	

func process_physics(delta : float):
	pass
