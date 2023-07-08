extends State
class_name Chase

@export var attack_radius : float

var target : CharacterBody2D
var rng = RandomNumberGenerator.new()

func enter():
	pass

func exit():
	pass

func update(_delta : float):
	if !target:
		target = get_tree().get_first_node_in_group("player")
	

func process_physics(_delta : float):
	if !target:
		return
	
	print(enemy.health)
	var dir = target.global_position - enemy_controller.global_position
	enemy_controller.move_direction = dir.normalized()

	if dir.length() < attack_radius:
		if enemy.health <= 50:
			var my_random_number = rng.randi_range(1, 100)
			if my_random_number == 1:
				enemy_controller.move_direction = -enemy_controller.move_direction
				transitioned.emit(self, "useability")
				return

		transitioned.emit(self, "attack")
		return
	elif dir.length() > attack_radius * 3:
		var my_random_number = rng.randi_range(1, 100)
	
		if my_random_number == 1:
			transitioned.emit(self, "useability")
			return

	if(enemy_controller.can_move):
		enemy_controller.move(enemy.speed, enemy_controller.move_direction)
		enemy_controller.move_and_slide()