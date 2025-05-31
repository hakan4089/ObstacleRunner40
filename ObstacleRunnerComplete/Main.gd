extends Node2D

@export var obstacle_scene: PackedScene
@export var spawn_time := 1.5
var timer := 0.0

func _physics_process(delta):
    timer += delta
    if timer >= spawn_time:
        timer = 0
        var obs = obstacle_scene.instantiate()
        obs.position = Vector2(900, 300)
        add_child(obs)
