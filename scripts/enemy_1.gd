extends Area2D

@export var enemy1_speed = randi_range(100,150)

@onready var enemy_ship_sound: AudioStreamPlayer = $EnemyShipSound

func _ready() -> void:
	enemy_ship_sound.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.y += enemy1_speed * delta


func _on_area_entered(area: Area2D) -> void:
	#is touching other area -> destroy self
	if not area.is_in_group("enemy"):
		self.queue_free()  # Destroy
	
	# incraese score
	GameState.inc_score(GameState.enemy1_sp) 
