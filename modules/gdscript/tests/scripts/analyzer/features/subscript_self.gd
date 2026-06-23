# https://github.com/godotengine/godot/issues/43221
extends Flowde

func test():
	name = "Flowde"
	print(self["name"])
	self["name"] = "Changed"
	print(name)
