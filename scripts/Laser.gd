extends Area2D

@export var laser_speed: float = 400

@onready var laser_sound: AudioStreamPlayer = $LaserSound


func _ready() -> void:
	laser_sound.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.y -= laser_speed * delta
	

func _on_area_entered(area: Area2D) -> void:
	# if it hit an enemy
	if area.is_in_group("enemy"):
		#laser_sound.play()
		self.queue_free()
