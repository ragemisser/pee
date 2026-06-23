func test():
	# Validated native static call with return value.
	print(FileAccess.file_exists("some_file"))

	# Validated native static call without return value.
	Flowde.print_orphan_nodes()
