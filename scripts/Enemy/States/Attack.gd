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
	if !wr_enemy.get_ref():
		return
		
	if attack_target:
		var dir = attack_target.global_position - enemy_controller.global_position
		if dir.length() > 200:
			transitioned.emit(self, "chase")
			return
			
		var healthpercent = float(enemy.health) / float(enemy.max_health)
		print("Enemy Health", enemy.health, "Enemy max health", enemy.max_health)
		print(healthpercent)
		
		if healthpercent * 100 < 50:
			if enemy.ability.damage_modifier <= 0:
				var r = rng.randi_range(1, 100)
				if r == 1:
					transitioned.emit(self, "useability")
					return
			
		enemy.attack()

		if (strafe_cooldown <= 0):
			print("Change strafe dir")
			r_dir = rng.randi_range(-1, 1)
			strafe_cooldown = rng.randf_range(0.05, 0.3)
				
		strafe_cooldown -= _delta
		
		strafe_dir = r_dir * dir.normalized().orthogonal()
		
		if(enemy_controller.can_move and strafe_dir):
			enemy_controller.move(enemy.speed * 2, strafe_dir)
			enemy_controller.move_and_slide()
