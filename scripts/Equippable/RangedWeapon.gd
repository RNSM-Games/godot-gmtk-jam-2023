extends Weapon
class_name RangedWeapon

@onready var projectile_scene = load("res://scenes/Projectiles/projectile.tscn")

var animation = "bow_shoot"

func _init():
	item_type = "Ranged"
	damage_modifier = 25.0

func action(damage:float):
	attack_damage = damage * damage_modifier
	$AnimationPlayer.play(animation)

func spawn_projectile():
	var projectile = projectile_scene.instantiate()
	owner.get_parent().add_child(projectile)
	print("parent:",character)
	var weapon = character.get_parent().get_node("Weapon").get_child(0).get_child(0)
	print("weapon:",weapon)
	var node_2d = weapon.owner
	var proj_spawn = weapon.get_child(1).get_child(1)
	print("loc:",proj_spawn.position)
	projectile.update_rotation(node_2d.rotation, node_2d.position + proj_spawn.position)
	projectile.position =  proj_spawn.position


