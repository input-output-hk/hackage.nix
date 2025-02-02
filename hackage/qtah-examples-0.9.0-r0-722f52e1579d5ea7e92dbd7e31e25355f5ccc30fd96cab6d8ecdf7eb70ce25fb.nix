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
      specVersion = "2.0";
      identifier = { name = "qtah-examples"; version = "0.9.0"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2025 The Qtah Authors.";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "https://khumba.net/projects/qtah";
      url = "";
      synopsis = "Example programs for Qtah Qt bindings";
      description = "Qtah is a set of Qt bindings for Haskell.  This package contains example\nprograms to demonstrate use of the bindings.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "qtah-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hoppy-runtime" or (errorHandler.buildDepError "hoppy-runtime"))
            (hsPkgs."qtah-qt6" or (errorHandler.buildDepError "qtah-qt6"))
          ];
          buildable = true;
        };
      };
    };
  }