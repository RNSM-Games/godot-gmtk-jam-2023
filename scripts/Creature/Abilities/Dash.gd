extends ActionItem

func _init():
    cooldown = 7
    damage_modifier = 0
    hitbox = get_node("CollisionShape2D")



func action():
    hitbox.disabled = true
    