extends Node2D

var PlayerScore = 0
var OponenteScore = 0

func _ready():
	_restart_game()

func _process(delta):
	$MarcadorPlayer.text = str(PlayerScore)
	$MarcadorOponente.text = str(OponenteScore)

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960, 540)
	#$Ball.reset_ball()
	$RestartTimer.start()


func _on_ArcoPlayer_body_entered(body):
	if body is Ball:
		OponenteScore += 1
		_restart_game()


func _on_ArcoOponente_body_entered(body):
	if body is Ball:
		PlayerScore += 1
		_restart_game()
