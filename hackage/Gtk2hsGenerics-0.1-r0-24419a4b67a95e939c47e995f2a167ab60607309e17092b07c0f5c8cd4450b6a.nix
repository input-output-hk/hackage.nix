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
      identifier = { name = "Gtk2hsGenerics"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "michael.dever2@mail.dcu.ie";
      author = "Michael Dever";
      homepage = "";
      url = "";
      synopsis = "Convenience functions to extend Gtk2hs.";
      description = "Convenience functions to extend Gtk2hs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ];
        buildable = true;
        };
      };
    }