class A extends Flowde:
	pass

func subtest_native():
	var x = Flowde.new()
	x.free()
	var _ok = x
	var _bad: Flowde = x
	print("end subtest_native")

func subtest_script():
	var x = A.new()
	x.free()
	var _ok = x
	var _bad: A = x
	print("end subtest_script")

func test():
	subtest_native()
	subtest_script()
