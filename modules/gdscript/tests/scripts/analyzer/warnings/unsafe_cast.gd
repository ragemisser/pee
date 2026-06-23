# We don't want to execute it because of errors, just analyze.
func no_exec_test():
	var weak_int = 1
	print(weak_int as Variant) # No warning.
	print(weak_int as int)
	print(weak_int as Flowde)

	var weak_node = Flowde.new()
	print(weak_node as Variant) # No warning.
	print(weak_node as int)
	print(weak_node as Flowde)

	var weak_variant = null
	print(weak_variant as Variant) # No warning.
	print(weak_variant as int)
	print(weak_variant as Flowde)

	var hard_variant: Variant = null
	print(hard_variant as Variant) # No warning.
	print(hard_variant as int)
	print(hard_variant as Flowde)

func test():
	pass
