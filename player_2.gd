extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -460.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
		
	
		
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("player-2-running")
	elif Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("player-2-running")
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite2D.play("player-2-jump")
	else:
		$AnimatedSprite2D.play("player-2-idle")
		
func _process(delta: float) -> void:
		#go back to main menu
	if Input.is_action_pressed("esc"):
		get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")
	
