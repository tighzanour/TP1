extends Control


var direction_index = 0
func _ready():
	_update_direction()
	$MusicPlayer.volume_db = -80

func _on_btn_left_pressed():
	direction_index -= 1
	if direction_index < 0:
		direction_index = 5
	_update_direction()

func _on_btn_right_pressed():
	direction_index += 1
	if direction_index > 5:
		direction_index = 0
	_update_direction()

func _update_direction():
	$Character.play("idle" + str(direction_index))


func _on_btn_sound_toggled(toggled_on: bool):
	if toggled_on:
		$MusicPlayer.volume_db = 0
	else:
		$MusicPlayer.volume_db = -80
	
func _input(event):
	if event.is_action_pressed("play_music"):
		$MusicPlayer.volume_db = 0
		print("play_music") 
