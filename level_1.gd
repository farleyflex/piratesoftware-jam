extends Node2D
func _read():
	print("level 1 ready")
	
func _input(event):
	if event.is_action_pressed("return_to_main_menu"):
		get_tree().change_scene_to_file("res://main_menu.tscn")
	


func _on_door_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file("res://level_2.tscn")
