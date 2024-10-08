{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Clipboard"; version = "2.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
        ];
        buildable = true;
      };
    };
  }