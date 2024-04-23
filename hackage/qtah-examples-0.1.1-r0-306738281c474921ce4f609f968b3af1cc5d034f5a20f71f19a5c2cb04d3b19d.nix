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
      identifier = { name = "qtah-examples"; version = "0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2016 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/qtah";
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
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hoppy-runtime" or (errorHandler.buildDepError "hoppy-runtime"))
            (hsPkgs."qtah-qt5" or (errorHandler.buildDepError "qtah-qt5"))
          ];
          buildable = true;
        };
      };
    };
  }