extends Node2D

var speed = 30
var direction = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
		speed = speed + randi() % 10 - 5
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		speed = speed + randi() % 10 - 5
	position.x += direction * speed * delta
