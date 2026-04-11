extends Node2D

var array: Array[String]
enum Allignment { BOSS=-5, ENEMY=-1, HERO=3 }
@export var player_allignment: Allignment

func _ready() -> void:
    array = [
        "Hi",
        "Nazmul",
        "How are you?",
		"Motu-Patlu"
    ]
    
    array.remove_at(0)
    array.append("Ehhhuuueeee")
    
    print("------------------Array-------------------")
    for item in array:
        if item.length() >= 3:
            print(item)
    
    print("------------------Glass-------------------")
    var glass: float = 0.5
    while glass <= 1:
        print("Glass with %s%% of water" % glass)
        glass += 0.25
    
    print("------------------Dictionary1-------------------")
    var  player: Dictionary = {
        "name": "Nazmul",
        "age": 99,
        "health": 99.99,
        "level": 3,
        "alive": true
    }
    print(player["name"])
    print(player["health"])
    
    print("------------------Dictionary2-------------------")
    var playerx: Dictionary = {
        "hero": {
            "health": 100,
            "alive": true
        },
        "villen": {
            "health": 30,
            "alive": true
        },
        "boss": {
            "health": 500,
            "alive": true
        } 
    }
    
    for actor in playerx:
        print(playerx[actor]["health"])
    
    #Enum Datastructure
    print("------------------Enum-------------------")
    #player_allignment: = Allignment.HERO
    if Allignment.BOSS == player_allignment:
        print("Welcome Boss")
    elif Allignment.HERO == player_allignment:
        print("Welcome Hero")
    else:
        print("You're Enemy, cannot enter here")
    
    
