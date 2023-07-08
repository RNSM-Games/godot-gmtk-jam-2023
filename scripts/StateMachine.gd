extends Node
class_name StateMachine

# change from enemy
var enemy_controller : CharacterBody2D
var enemy : Node2D

@export var current_state : State
var states : Dictionary

func _ready():
	assert(get_parent().move, "must have controller")
	enemy_controller = get_parent()

	assert(get_parent().get_node("Body").speed, "must have controller")
	enemy = get_parent().get_node("Body")

	for child in get_children():
		if child is State:
			states[child.name.to_lower()] = child
			child.transitioned.connect(on_state_transition)


func _physics_process(delta):
	if current_state:
		current_state.process_physics(delta)

func _process(delta):
	if current_state:
		current_state.update(delta)

func on_state_transition(state, new_state_name):
	if current_state != state:
		return

	var newState = states.get(new_state_name.to_lower())
	if !newState:
		return
	
	if current_state:
		current_state.exit()
	
	newState.enter()
	current_state = newState


