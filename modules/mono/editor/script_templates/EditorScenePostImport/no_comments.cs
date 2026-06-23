// meta-description: Basic import script template (no comments)

#if TOOLS
using _BINDINGS_NAMESPACE_;
using System;

[Tool]
public partial class _CLASS_ : _BASE_
{
    public override GodotObject _PostImport(Flowde scene)
    {
        return scene;
    }
}
#endif
