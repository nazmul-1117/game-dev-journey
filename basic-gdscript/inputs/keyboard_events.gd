extends Node

var label: Label

func _ready() -> void:
	label = get_node("Label")

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed:
		print(event.as_text())
	
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_T:
			print("T was pressed")
	
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_W:
			if event.shift_pressed:
				print("Shift + W pressed :)")
			
