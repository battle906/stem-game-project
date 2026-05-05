extends StaticBody2D


func _process(delta): 
	var cam := get_viewport().get_camera_2d()
	var rect = cam.get_visible_rect()


	if cam:
	
		
		
		$left.global_position.x = rect.position.x()
		$left.global_position.y = cam.global_position.y
		
		$right.global_position.x = rect.position.x + rect.size.x()
		$right.global_position.y = cam.global_position.y
