extends AnimatedSprite2D

var direction = 1

@onready var ray_cast_right: RayCast2D = $RayCast2D
@onready var ray_cast_left: RayCast2D = $RayCast2D2

func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		$".".flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
	
	position.x += direction * 1 * delta
