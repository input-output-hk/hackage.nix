{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Clipboard";
        version = "2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
      author = "Sævar Berg";
      homepage = "http://ddiaz.asofilak.es/packages/Clipboard";
      url = "";
      synopsis = "Access to the (Windows) clipboard.";
      description = "/Clipboard/ is a package that allows you to interact with the system clipboard easily.\n\nCurrently, only in a Windows system.\n\nChanges from last version:\n\n* Now @System.Clipboard@ exports 'modifyClipboardString'.";
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