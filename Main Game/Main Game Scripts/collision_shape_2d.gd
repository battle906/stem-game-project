extends CollisionShape2D
var fixed_x = 638.0
@onready var player: CharacterBody2D = $"../../.."


func _process(float):
	global_position.x = fixed_x
	global_position.y = player.position.y
