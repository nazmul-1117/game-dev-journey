extends Node

var chest := InnerCharacter.new()
var logs := InnerCharacter.new()

func _ready() -> void:
	chest.name = "Tm bhi ajao"
	print(chest.name)
	print(logs.health)

class InnerCharacter:
	var name: String = "qwe"
	var health: String = "abc"
