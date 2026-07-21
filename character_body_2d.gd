extends CharacterBody2D

@export var speed : int = 800
@export var gravity : int = 800
@export var jump_speed : int =500

func _physics_process(delta: float) -> void:
	#this is where gravity is applied:
	velocity.y += gravity * delta
	#this is where we move back and forth:
	velocity.x = Input.get_axis("walk_left", "walk_right") * speed
	#this is where we jump
	if Input. is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= jump_speed
	move_and_slide()
	
