extends Node
class_name StateMachine

@export var current_state : State
var states : Dictionary

func _ready():
	await owner.ready

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

func on_state_transition(state, new_state_name, msg: Dictionary = {}):
	if current_state != state:
		return

	var newState = states.get(new_state_name.to_lower())
	if !newState:
		return
	
	if current_state:
		current_state.exit()
	
	newState.enter(msg)
	current_state = newState


