extends Area2D

@export var mouse_sensativity = 50
@export var laser_tscn: PackedScene

func _process(delta: float) -> void:
	#print("This happens every moment of the game!")
	
	var mouse_pos = get_global_mouse_position()
	self.position.x = mouse_pos.x * mouse_sensativity * delta
	
	# player clicks -> spawn laser
	if Input.is_action_just_pressed("fire"):
		var new_laser = laser_tscn.instantiate()
		add_sibling(new_laser)
#		var new_laser_pos_y = self.position.y - mouse_sensativity
#		new_laser.position.y = new_laser_pos_y
#		new_laser.position.x = self.position.x
		new_laser.position = self.position
		
	# Exit app on escape key pressed.
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		self.queue_free()
		
		GameState.is_game_over = true
