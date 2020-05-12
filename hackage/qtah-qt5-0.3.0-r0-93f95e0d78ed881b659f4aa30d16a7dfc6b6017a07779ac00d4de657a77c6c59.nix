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
      identifier = { name = "qtah-qt5"; version = "0.3.0"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2017 The Qtah Authors.";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/qtah";
      url = "";
      synopsis = "Qt bindings for Haskell";
      description = "Qtah is a set of Qt bindings for Haskell.  This package contains the Haskell\nside of the bindings, and is what Qt programs should use directly.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hoppy-runtime" or (errorHandler.buildDepError "hoppy-runtime"))
          (hsPkgs."qtah-cpp-qt5" or (errorHandler.buildDepError "qtah-cpp-qt5"))
          (hsPkgs."qtah-generator" or (errorHandler.buildDepError "qtah-generator"))
          ];
        libs = [ (pkgs."qtah" or (errorHandler.sysDepError "qtah")) ];
        buildable = true;
        };
      tests = {
        "test-qtah" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hoppy-runtime" or (errorHandler.buildDepError "hoppy-runtime"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."qtah-qt5" or (errorHandler.buildDepError "qtah-qt5"))
            ];
          libs = [ (pkgs."qtah" or (errorHandler.sysDepError "qtah")) ];
          buildable = true;
          };
        };
      };
    }