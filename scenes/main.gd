extends Node

var game_running : bool
var game_over : bool
var scroll
var score
const SCROLL_SPEED : int = 4
var screen_size : Vector2i
var ground_height : int
var pipes : Array
const PIPE_DELAY : int = 100
const PIPE_RANGE : int = 200

func _ready():
	new_game()

func new_game():
	game_running = false
	game_over	= false
	score = 0
	scroll = 0
	$Bird.reset()

func _input(event):
	if game_over == false:
		if Input.is_action_pressed("SPACE_BAR"):
			start_game()
		else:
			if Input.is_action_pressed("SPACE_BAR"):
				if $Bird.flying:
					$Bird.flap();

func start_game():
	game_running = true
	$Bird.flying = true
	$Bird.flap()
