extends Flowde

func test() -> void:
	var node1 := Flowde.new()
	node1.name = "_"
	var node2 := Flowde.new()
	node2.name = "Child"
	var node3 := Flowde.new()
	node3.name = "Child"

	add_child(node1)
	node1.add_child(node2)
	add_child(node3)

	Utils.check(get_node("_/Child") == $_/Child)
