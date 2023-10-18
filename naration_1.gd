extends Node2D

<<<<<<< HEAD

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
=======
var audio_player : AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	audio_player = $AudioStreamPlayer2D2
>>>>>>> 74fec8d8909c7ea9730c789b9a319592d659cf8a


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

<<<<<<< HEAD

func _on_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
=======
func _on_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
	
func play_music():
	# Load the audio stream (musik) yang ingin Anda putar
	var music = load("res://Asset/Horror SFX Free/Monsters & Ghosts/Laugh_spooky_4.wav")
		# Tetapkan audio stream ke AudioStreamPlayer
	audio_player.stream = music
	
	# Memulai pemutaran musik
	audio_player.play()


func _on_tree_exiting():
	play_music()
>>>>>>> 74fec8d8909c7ea9730c789b9a319592d659cf8a
