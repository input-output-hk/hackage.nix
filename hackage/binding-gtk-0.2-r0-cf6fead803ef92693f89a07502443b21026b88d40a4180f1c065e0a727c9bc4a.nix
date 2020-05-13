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
      identifier = { name = "binding-gtk"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@accursoft.org";
      author = "Gideon Sireling";
      homepage = "http://code.accursoft.com/binding";
      url = "";
      synopsis = "Data Binding in Gtk2Hs";
      description = "Bind mutable data and lists to Gtk2Hs widgets.\nExamples are provided by the included demo programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."binding-core" or (errorHandler.buildDepError "binding-core"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }