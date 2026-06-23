# GH-82809

extends Flowde

class MyResource extends Resource:
	@export var node: Flowde
	@export var node_array: Array[Flowde]

func test():
	pass
