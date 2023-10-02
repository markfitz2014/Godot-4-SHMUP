extends Node2D

var enemy1_size_x = 34
var enemy_start_posy = -50
@export var enemy1_tscn: PackedScene
@export var new_enemy_pos_y = enemy_start_posy

# every 1 second -> spawn new enemy
func spawn_enemy1_ship():
	var new_enemy1 = enemy1_tscn.instantiate()
	self.add_child(new_enemy1)
	
	var screen_width = get_viewport_rect().size.x
	var rand_x = randf_range(0 + enemy1_size_x, screen_width - enemy1_size_x)
	new_enemy1.position.x = rand_x
	new_enemy1.position.y = -new_enemy_pos_y
	
