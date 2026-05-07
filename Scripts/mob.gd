extends RigidBody2D
@export var min_speed = 150
@export var max_speed = 250
var mob_types = ["walk", "swim", "fly"]
var mob_type = ""

func _ready():
	gravity_scale = 0
	mob_type = mob_types[randi() % mob_types.size()]
	$AnimatedSprite2D.animation = mob_type
	$AnimatedSprite2D.play()

	match mob_type:
		"walk":
			$AnimatedSprite2D.speed_scale = 1.0
		"fly":
			$AnimatedSprite2D.speed_scale = 3.0
		"swim":
			$AnimatedSprite2D.speed_scale = 2.0

	spawn_from_random_side()

func spawn_from_random_side():
	var speed = randf_range(min_speed, max_speed)
	var side = randi() % 4  # 0=left, 1=right, 2=top, 3=bottom

	match side:
		0:  # spawn from left, move right
			position = Vector2(0, randf_range(0, 720))
			linear_velocity = Vector2(speed, randf_range(-80, 80))
			$AnimatedSprite2D.flip_h = false
		1:  # spawn from right, move left
			position = Vector2(480, randf_range(0, 720))
			linear_velocity = Vector2(-speed, randf_range(-80, 80))
			$AnimatedSprite2D.flip_h = true
		2:  # spawn from top, move down
			position = Vector2(randf_range(0, 480), 0)
			linear_velocity = Vector2(randf_range(-80, 80), speed)
			$AnimatedSprite2D.flip_h = randf() > 0.5
		3:  # spawn from bottom, move up
			position = Vector2(randf_range(0, 480), 720)
			linear_velocity = Vector2(randf_range(-80, 80), -speed)
			$AnimatedSprite2D.flip_h = randf() > 0.5

func _process(_delta):
	if $AnimatedSprite2D.animation != mob_type:
		$AnimatedSprite2D.animation = mob_type
		$AnimatedSprite2D.play()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
