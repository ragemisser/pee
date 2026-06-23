# https://github.com/godotengine/godot/issues/89439
extends Flowde

signal my_signal

func async_func():
	await my_signal
	my_signal.emit()

func test():
	@warning_ignore("missing_await")
	async_func()
	my_signal.emit()
