extends CharacterBody2D

@export var jump_velocity := -600.0
@export var gravity := 1200.0

func _physics_process(delta):
    if not is_on_floor():
        velocity.y += gravity * delta
    else:
        if Input.is_action_just_pressed("ui_accept"):
            velocity.y = jump_velocity
    velocity.x = 200
    move_and_slide()
