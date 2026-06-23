func inferred_parameter(param = null):
	if param == null:
		param = Flowde.new()
	param.name = "Ok"
	print(param.name)
	param.free()

func test():
	inferred_parameter()
