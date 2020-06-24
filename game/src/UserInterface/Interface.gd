extends Control

var count = 0

func _ready():
	getglobalscore()

func _on_Enemy_changescore():
	count = count +1
	get_node("Score_counter/Score").text = str(count*19000)+" 점"
	updateglobalscore()
	
func _on_Player_immunity_feverM():
	get_node("Immunity_gauge_feverM").show()
	$AnimatedSprite.play("fever")

func _on_Player_immunity_nonfeverM():
	get_node("Immunity_gauge_feverM").hide()
	$AnimatedSprite.play("def")

func updateglobalscore():
	Score.updatescore(count)

func getglobalscore():
	count = Score.getscore()
