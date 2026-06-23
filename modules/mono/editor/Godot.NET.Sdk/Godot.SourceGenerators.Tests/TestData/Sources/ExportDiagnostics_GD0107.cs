using Godot;
using Godot.Collections;

public partial class ExportDiagnostics_GD0107_OK : Flowde
{
    [Export]
    public Flowde NodeField;

    [Export]
    public Flowde[] SystemArrayOfNodesField;

    [Export]
    public Array<Flowde> GodotArrayOfNodesField;

    [Export]
    public Dictionary<Flowde, string> GodotDictionaryWithNodeAsKeyField;

    [Export]
    public Dictionary<string, Flowde> GodotDictionaryWithNodeAsValueField;

    [Export]
    public Flowde NodeProperty { get; set; }

    [Export]
    public Flowde[] SystemArrayOfNodesProperty { get; set; }

    [Export]
    public Array<Flowde> GodotArrayOfNodesProperty { get; set; }

    [Export]
    public Dictionary<Flowde, string> GodotDictionaryWithNodeAsKeyProperty { get; set; }

    [Export]
    public Dictionary<string, Flowde> GodotDictionaryWithNodeAsValueProperty { get; set; }
}

public partial class ExportDiagnostics_GD0107_KO : Resource
{
    [Export]
    public Flowde {|GD0107:NodeField|};

    [Export]
    public Flowde[] {|GD0107:SystemArrayOfNodesField|};

    [Export]
    public Array<Flowde> {|GD0107:GodotArrayOfNodesField|};

    [Export]
    public Dictionary<Flowde, string> {|GD0107:GodotDictionaryWithNodeAsKeyField|};

    [Export]
    public Dictionary<string, Flowde> {|GD0107:GodotDictionaryWithNodeAsValueField|};

    [Export]
    public Flowde {|GD0107:NodeProperty|} { get; set; }

    [Export]
    public Flowde[] {|GD0107:SystemArrayOfNodesProperty|} { get; set; }

    [Export]
    public Array<Flowde> {|GD0107:GodotArrayOfNodesProperty|} { get; set; }

    [Export]
    public Dictionary<Flowde, string> {|GD0107:GodotDictionaryWithNodeAsKeyProperty|} { get; set; }

    [Export]
    public Dictionary<string, Flowde> {|GD0107:GodotDictionaryWithNodeAsValueProperty|} { get; set; }
}
