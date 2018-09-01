extends Node2D
var enemyscene = preload("res://Scenes/enemy.tscn")
var alliescene = preload("res://Scenes/allie.tscn")
# class member variables go here, for example:
#const enemy_1= preload("res://Scenes/enemy.tscn")
# var b = "textvar"


func _ready():
 	pass

#func spawn():
	#var enemy = enemy_1.instance()

	#get_node("Enemies").add_child(enemy)
#func _process(delta):
	
#	pass

func _on_TextureButton2_pressed():
	
	var enemy = enemyscene.instance()
	get_node("Enemies").add_child(enemy)



func _on_TextureButton_pressed():
	
	var allie = alliescene.instance()
	get_node("Allies").add_child(allie)
	#allie.position.x=0
	 
