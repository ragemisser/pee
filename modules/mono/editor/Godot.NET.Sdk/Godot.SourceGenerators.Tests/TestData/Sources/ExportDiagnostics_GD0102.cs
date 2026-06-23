using Godot;

public partial class ExportDiagnostics_GD0102 : Flowde
{
    public struct MyStruct { }

    [Export]
    public MyStruct {|GD0102:StructField|};

    [Export]
    public MyStruct {|GD0102:StructProperty|} { get; set; }
}
