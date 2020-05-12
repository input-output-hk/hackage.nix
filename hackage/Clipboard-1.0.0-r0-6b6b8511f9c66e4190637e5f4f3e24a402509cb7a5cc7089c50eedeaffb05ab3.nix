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
      identifier = { name = "Clipboard"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/Clipboard";
      url = "";
      synopsis = "Access to the Windows Clipboard.";
      description = "/Clipboard/ is a package that allows you to interact with the Windows Clipboard easily.\n\nBased on the Win32 package.";
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