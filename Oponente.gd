extends KinematicBody2D

var speed = 800
onready var ball = get_parent().find_node("Ball")


func _physics_process(delta):
	var direction = Vector2(0, _get_direction())
	move_and_collide(direction * speed * delta)

func _get_direction():
	if abs(ball.position.y - self.position.y) > 20:
		if (ball.position.y > self.position.y):
			return 1
		else:
			return -1
	else:
		return 0
