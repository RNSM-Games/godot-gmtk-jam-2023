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
	owner.get_parent().add_child(projectile)
	print("parent:",character.get_parent())
	var weapon = character.get_node("Weapon").get_child(0)
	var node_2d = weapon.get_node("Node2D")
	var proj_spawn = weapon.get_node("Node2D/ProjectileSpawnPoint")
	print("loc:",proj_spawn.position)
	projectile.update_rotation(node_2d.rotation, character.position+proj_spawn.position)


