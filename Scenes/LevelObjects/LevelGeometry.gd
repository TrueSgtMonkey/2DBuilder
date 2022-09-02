tool
extends Node2D



export (String) var filePath = ""

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LevelGeometry_visibility_changed():
	if visible && Engine.is_editor_hint():
		refreshLevel()
	
func refreshLevel():
	var file := File.new()
	var line : String
	file.open(filePath, File.READ)
	while !file.eof_reached():
		line = file.get_line()
		if line.begins_with("\""):
			continue
		
		for block in line:
			if line.
			blockLoad(block)
			
func blockLoad(block : String):
	match block:
		"#":
			return 0
		"0":
			print("wall")
		"1":
			print("floor")
		"2":
			print("RunningMan")
		_:
			printerr("Cannot parse: \"", block, "\"")
			return -1
	return int(block)
