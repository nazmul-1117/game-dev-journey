extends Node2D

var xp:int = 70
var level:int = 0

signal leveled_up(msg) 

# instead of use signal connect "_on_leveled_up"
func _ready() -> void:
	#leveled_up.connect(_on_leveled_up)
	#leveled_up.disconnect(_on_leveled_up)
	print()

func _on_button_pressed() -> void:
	print("Button Pressed")

func _on_timer_timeout() -> void:
	print("your xp is: " + str(xp))
	xp += 34
	if xp >= 100:
		xp = 0
		level += 1
		#print("Hurrah..! Level Upped to: " + str(level))
		leveled_up.emit("Hurrah..! Level Upped to: " + str(level))


func _on_leveled_up(msg) -> void:
	print(msg)
