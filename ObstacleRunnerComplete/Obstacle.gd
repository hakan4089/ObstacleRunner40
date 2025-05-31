extends Area2D

@export var speed := 200.0

func _physics_process(delta):
    position.x -= speed * delta
    if position.x < -200:
        queue_free()
