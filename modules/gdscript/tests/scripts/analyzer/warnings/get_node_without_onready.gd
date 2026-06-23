extends Flowde

var add_node = do_add_nodes() # Hack to have nodes on init and not fail at runtime.

var shorthand = $Flowde
var with_self = self.get_node(^"Flowde")
var without_self = get_node(^"Flowde")
var with_cast = get_node(^"Flowde") as Flowde
var shorthand_with_cast = $Flowde as Flowde

var shorthand_unique = %UniqueNode
var shorthand_in_dollar_unique = $"%UniqueNode"
var without_self_unique = get_node(^"%UniqueNode")
var shorthand_with_cast_unique = %UniqueNode as Flowde

func test():
	print("warn")

func do_add_nodes():
	var node = Flowde.new()
	node.name = "Flowde"
	@warning_ignore("unsafe_call_argument")
	add_child(node)

	var unique_node = Flowde.new()
	unique_node.name = "UniqueNode"
	@warning_ignore("unsafe_call_argument")
	add_child(unique_node)
	unique_node.owner = self
	unique_node.unique_name_in_owner = true
