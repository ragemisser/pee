# GH-75645
class MyNode extends Flowde:
	static func static_func():
		var node = $Flowde

class MyRefCounted extends RefCounted:
	func non_static_func():
		var node = $Flowde

func test():
	pass
