extends Node2D

var color_node: ColorRect
var label_node: Label

func _ready() -> void:
	print("Hello Nazmul")
	color_node = get_node("ColorRect")
	label_node = get_node("ColorRect/Label")
	
	color_node.color = Color.BLACK
	label_node.text = "Hey Buddy, Hold 'Space' to print display"
	label_node.modulate = Color.ANTIQUE_WHITE
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		color_node.color = Color.AQUA
		label_node.text = "Welcome Nazmul"
		label_node.modulate = Color.DARK_BLUE
		print("Jumped Pressed..!")
		
	if event.is_action_released("jump"):
		color_node.color = Color.BLACK
		label_node.text = "Hey Buddy, Hold 'Space' to print display"
		label_node.modulate = Color.ANTIQUE_WHITE
		print("Jumped Released..!")
		
	if event is InputEventMouseButton and event.pressed:
		print("mouse button at...", event.position)
