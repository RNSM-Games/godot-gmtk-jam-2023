extends Weapon
class_name MeleeWeapon

func action():
	$AnimationPlayer.play("sword_swing")

func _on_area_2d_area_entered(area):
	pass
