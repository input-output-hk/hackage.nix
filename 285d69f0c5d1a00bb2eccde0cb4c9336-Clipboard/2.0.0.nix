{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Clipboard";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
      author = "Sævar Berg";
      homepage = "http://ddiaz.asofilak.es/packages/Clipboard";
      url = "";
      synopsis = "Access to the (Windows) clipboard.";
      description = "/Clipboard/ is a package that allows you to interact with the system clipboard easily.\n\nCurrently, only in a Windows system.\n\nChanges from last version:\n\n* New definitions of 'setClipboardString' and 'getClipboardString',\naccording to the API specifications on MSDN. So, it's highly recommended update\nto this version.\n\n* Added 'modifyClipboardString'.\n\n* Shorter name of the module @System.Windows.Clipboard@: @System.Clipboard@.";
      buildType = "Simple";
    };
    components = {
      "Clipboard" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Win32)
        ];
      };
    };
  }