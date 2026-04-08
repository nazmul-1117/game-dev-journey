extends Node2D

var label: Label

func _ready() -> void:
	print("Mouse Event...")
	label = $Label
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Left Button Pressed..!")
		
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			print("Mouse while UP...!")
