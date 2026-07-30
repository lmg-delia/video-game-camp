extends CharacterBody2D

@export var speed:int=50
@onready var ray_cast_2d: RayCast2D = $RayCast2D

func _physics_process(delta: float) -> void:
	position.x += speed
	if ray_cast_2d.is_colliding():
		ray_cast_2d.target_position.x *= -1
		speed *= -1
	#move and slide doesn't actually move the enemy in this case,
	#but it makes it interact with the rest of the physics system
	move_and_slide()
	
