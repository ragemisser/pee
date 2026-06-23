func test():
	var node := Flowde.new()
	var callable: Callable = node.free
	callable.call()
	print(node)

	node = Flowde.new()
	callable = node["free"]
	callable.call()
	print(node)
