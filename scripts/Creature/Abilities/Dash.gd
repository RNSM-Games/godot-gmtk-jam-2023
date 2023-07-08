extends ActionItem

var can_dash : bool = true
var character : CharacterBody2D
var is_dashing : bool = false
func _init():
	cooldown = 7
	damage_modifier = 0

func _ready():
	hitbox = get_parent().get_node("CharacterBody2D/Hitbox")
	character = get_parent().get_node("CharacterBody2D")


func _physics_process(delta):
	var dash_pos : Vector2 = Vector2.ZERO
	if (!can_dash && !is_dashing):
		dash_pos= character.position + Vector2(100,100)
		is_dashing = true
		hitbox.disabled = true
		character.can_move = false
	elif(is_dashing):
		character.position = lerp(character.position,dash_pos, .1)
	if(character.position == dash_pos):
		is_dashing = false
		hitbox.disabled = false
	character.can_move = true
	can_dash = true






func action():
	can_dash = false
