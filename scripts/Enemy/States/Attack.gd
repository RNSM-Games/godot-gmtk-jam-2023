extends EnemyState
class_name Attack

var attack_target : CharacterBody2D
var strafe_dir : Vector2
var r_dir : int

var strafe_cooldown = -1

var rng = RandomNumberGenerator.new()

func enter(_msg := {}):
	if attack_target != _msg.target:
		attack_target = _msg.target
		
	r_dir = rng.randi_range(-1, 1)

func exit():
	pass

func update(_delta : float):
	pass
	

func process_physics(_delta : float):
	if attack_target:
		var dir = attack_target.global_position - enemy_controller.global_position
		if dir.length() > 200:
			transitioned.emit(self, "chase")
			return
			
		enemy.attack()

		if (strafe_cooldown <= 0):
			print("Change strafe dir")
			r_dir = rng.randi_range(-1, 1)
			strafe_cooldown = rng.randf_range(0.1, 0.25)
				
		strafe_cooldown -= _delta
		
		strafe_dir = r_dir * dir.normalized().orthogonal()
		
		if(enemy_controller.can_move and strafe_dir):
			enemy_controller.move(enemy.speed, strafe_dir)
			enemy_controller.move_and_slide()
