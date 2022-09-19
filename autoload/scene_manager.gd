extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cache = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func load_scene(scene_name: String):
	if not cache.has(scene_name):
		get_tree().change_scene('res://scenes/' + scene_name + '.tscn')
