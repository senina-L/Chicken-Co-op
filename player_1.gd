extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

#Godot built-in template (not my code but i changed the keys)
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("w") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("a", "d")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
					
#Change direction and play animations(is my code)
	if Input.is_action_pressed("a"):
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("player-1-running")
	elif Input.is_action_pressed("d"):
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("player-1-running")
	elif Input.is_action_pressed("w"):
		$AnimatedSprite2D.play("player-1-jump")
	else:
		$AnimatedSprite2D.play("player-1-idle")
		
func _process(delta: float) -> void:
	#go back to main menu
	if Input.is_action_pressed("esc"):
		get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")
