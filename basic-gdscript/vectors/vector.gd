extends Node2D

var right_direction: Vector2 = Vector2.RIGHT
var direction: Vector2 = Vector2(1, 1)
const SPEED = 0.5

func _ready() -> void:
	print(Vector2(5, 6)*3)
	$Sprite2D.position.x = randi_range(0, 200)
	$Sprite2D.position.y = randi_range(0, 150)

func _process(delta: float) -> void:
	#$Sprite2D.position += right_direction
	$Sprite2D.position += direction*SPEED
