extends Node2D

var direction: Vector2 = Vector2(1, 1)
const GRAVITY := 5

func _ready() -> void:
	#print($Player1.position.x -=  direction*GRAVITY)
	print()
	
func _process(delta: float) -> void:
	
	if $Player1.position.x >= 380 or $Player1.position.x <= 0:
	#if $Player1.position.x >= 350 or $Player1.position.x <= 0:
		#$Player1.position.x -=  direction.x*GRAVITY
		direction.x *= -1
		
	#elif $Player1.position.x <= 20:
		##$Player1.position.x +=  direction.x*GRAVITY
		#direction.x = 1
	
	if $Player1.position.y >= 280 or $Player1.position.y <= 0:
	#if $Player1.position.x >= 350 or $Player1.position.x <= 0:
		#$Player1.position.y -=  direction.y*GRAVITY
		direction.y *= -1
	#elif $Player1.position.y <= 20:
		##$Player1.position.y +=  direction.y*GRAVITY
		#direction.y = 1
	
	$Player1.position += direction * GRAVITY
	
	if Input.is_action_just_pressed("ui_accept"):
		print("Traffic...")
