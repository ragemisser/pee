using Godot;

public interface MyInterface
{
    public int MyProperty { get; set; }
}

public partial class ExportDiagnostics_GD0106_OK : Flowde, MyInterface
{
    [Export]
    public int MyProperty { get; set; }
}

public partial class ExportDiagnostics_GD0106_KO : Flowde, MyInterface
{
    [Export]
    int MyInterface.{|GD0106:MyProperty|} { get; set; }
}
