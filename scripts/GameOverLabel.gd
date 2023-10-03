extends Label

@onready var game_over_label: Label = $"."

#func _ready() -> void:
	#game_over_sound.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if GameState.is_game_over:
		self.visible = true
		#game_over_sound.play(0)
		
	if Input.is_action_just_pressed("enter") and GameState.is_game_over:
		# reload scene
		get_tree().reload_current_scene()
		GameState.score = GameState.hi_score
		#GameState.hi_score 
		GameState.reset_game()
			
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
