extends Weapon
class_name RangedWeapon

@onready var projectile_scene = load("res://scenes/Projectiles/projectile.tscn")
var animation = "bow_shoot"

func _init():
	self.damage_modifier = 25.0

func action(damage:float):
	
	self.attack_damage = damage * damage_modifier
	$AnimationPlayer.play(animation)

func spawn_projectile():
	var projectile = projectile_scene.instantiate()
	add_child(projectile)
	projectile.update_rotation($Node2D.rotation, $Node2D/Sprite2D/ProjectileSpawnPoint.position)
