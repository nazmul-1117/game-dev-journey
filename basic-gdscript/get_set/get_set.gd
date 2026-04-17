extends Node2D

var xp: int = 0.2:
	get:
		return xp*100 # return original value
	set(value):
		var x = clamp(value, 0, 100)
		xp = float(x)/100.0

func _ready() -> void:
	xp = -100056
	print(xp)
	
