extends ActionItem

func _init():
    cooldown = 7
    damage_modifier = 0

func _ready():
    hitbox = get_parent().get_node("CharacterBody2D/Hitbox")



func action():
    hitbox.disabled = true
    var character : CharacterBody2D = get_parent().get_node("CharacterBody2D")
    var dash_pos : Vector2 = character.position + Vector2(10,10)
    character.PlayerController.can_move = false
    character.position = lerp(character.position,character.position + Vector2(50,50), .1)
    hitbox.disabled = false
