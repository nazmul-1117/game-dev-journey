extends Node2D

func _ready() -> void:
	print("xd :)")

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_W:
			print(float_gen())
			
		elif event.keycode == KEY_A:
			print(int_gen())
		
		elif event.keycode == KEY_D:
			print(float_ran())
			
		elif event.keycode == KEY_Z:
			print(int_ran())
			

func float_gen() -> float:
	return randf()
	
func int_gen() -> int:
	return randi()

func float_ran() -> float:
	return randf_range(0, 0.9)
	
func int_ran() -> int:
	return randi_range(0, 100)
