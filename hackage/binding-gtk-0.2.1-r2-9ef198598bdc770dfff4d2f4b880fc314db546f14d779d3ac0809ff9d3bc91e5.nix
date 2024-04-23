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
      specVersion = "1.10";
      identifier = { name = "binding-gtk"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@accursoft.org";
      author = "Gideon Sireling";
      homepage = "https://github.com/accursoft/binding";
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
      tests = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."binding-core" or (errorHandler.buildDepError "binding-core"))
            (hsPkgs."binding-gtk" or (errorHandler.buildDepError "binding-gtk"))
          ];
          buildable = true;
        };
        "lists" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."binding-core" or (errorHandler.buildDepError "binding-core"))
            (hsPkgs."binding-gtk" or (errorHandler.buildDepError "binding-gtk"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }