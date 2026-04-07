extends Node2D

func _ready() -> void:
	print("Hello World")
	color_changing()
	modify_label()
	
func modify_label() -> void:
	var label_node: Label = get_node("modify_label")
	label_node.text = "Hello Nazmul! How are you?"
	label_node.modulate = Color.AQUA

func color_changing() -> void:
	# Assign nodes after scene is ready
	var node1: ColorRect = get_node("ColorRect")
	var node2: ColorRect = get_node("ColorRect2")
	
	# Set colors
	node1.color = Color.BLUE_VIOLET
	node2.color = Color.DEEP_PINK
