#debug-only
func test():
	var node := Flowde.new()
	var inside_tree = node.is_inside_tree
	node.free()
	inside_tree.call()
	print(node)
