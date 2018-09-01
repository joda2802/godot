extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


# replace with function body


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Scenes/MainGame.tscn")
	pass # replace with function body


func _on_TextureButton3_pressed():
	
	get_tree().quit()

	#eplace with function body
