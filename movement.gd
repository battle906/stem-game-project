extends CharacterBody2D
#speed variable
@export var speed = 400
#takes you inputs and multiples speed
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
func _physics_process(_delta):
	get_input()
	move_and_slide()
