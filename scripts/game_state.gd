extends Node

var score = 0
var enemy1_sp = 10
#var enemy2_sp = 20
#var enemy3_sp = 30
#var enemyB_sp = 100
#var enemyBoss_sp = 500

var hi_score = 0
var new_hi_score = 0

var is_game_over = false

func reset_game():
	#hi_score_set(new_hi_score)
	score = 0
	is_game_over = false
	
	
func inc_score(Inc_amount):
	score += Inc_amount
