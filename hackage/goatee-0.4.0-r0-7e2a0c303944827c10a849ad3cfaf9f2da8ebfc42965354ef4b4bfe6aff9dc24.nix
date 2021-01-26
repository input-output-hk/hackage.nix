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
      identifier = { name = "goatee"; version = "0.4.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2014-2021 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/goatee";
      url = "";
      synopsis = "A monadic take on a 2,500-year-old board game - library.";
      description = "Goatee is a Go library and game editor, written in Haskell.  It provides a\nGUI for recording, studying, and editing game records.  Underneath this is a\nportable library for manipulating SGF files to build UIs and tools.  Goatee\naims to be full-featured by supporting all of the SGF spec and allowing for\nfull and easy customization of the game records you create.\n\nThis package is the shared library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test-goatee" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."goatee" or (errorHandler.buildDepError "goatee"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }