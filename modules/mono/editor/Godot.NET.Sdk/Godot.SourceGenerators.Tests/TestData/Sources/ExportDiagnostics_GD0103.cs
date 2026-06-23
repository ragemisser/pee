using Godot;

public partial class ExportDiagnostics_GD0103 : Flowde
{
    [Export]
    public readonly string {|GD0103:ReadOnlyField|};

    [Export]
    public string {|GD0103:ReadOnlyProperty|} { get; }
}
