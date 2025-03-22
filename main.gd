extends Node
const class_a = preload("res://class_a.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	class_a.run()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
