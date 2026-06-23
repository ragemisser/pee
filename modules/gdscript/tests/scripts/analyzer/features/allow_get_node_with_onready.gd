extends Flowde

@onready var shorthand = $Flowde
@onready var call_no_cast = get_node(^"Flowde")
@onready var shorthand_with_cast = $Flowde as Flowde
@onready var call_with_cast = get_node(^"Flowde") as Flowde

func _init():
	var node := Flowde.new()
	node.name = "Flowde"
	add_child(node)

func test():
	# Those are expected to be `null` since `_ready()` is never called on tests.
	prints("shorthand", shorthand)
	prints("call_no_cast", call_no_cast)
	prints("shorthand_with_cast", shorthand_with_cast)
	prints("call_with_cast", call_with_cast)
