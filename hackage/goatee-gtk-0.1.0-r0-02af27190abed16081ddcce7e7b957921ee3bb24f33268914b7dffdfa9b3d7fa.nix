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
      specVersion = "1.8";
      identifier = { name = "goatee-gtk"; version = "0.1.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2014 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/goatee";
      url = "";
      synopsis = "A monadic take on a 2,500-year-old board game - GTK+ UI.";
      description = "Goatee is a Go library and game editor, written in Haskell.  It provides a GUI\nfor recording, studying, and editing game records.  Underneath this is a\nportable library for manipulating SGF files, to build UIs and tools.\n\nGoatee, the library and GUI, aims to be full-featured, supporting all of the SGF\nspec and allowing for full customization of the game records you create.\nCurrently it is in an alpha stage, supporting basic game viewing and editing.\n\nThis package is the GTK+ UI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."goatee" or (errorHandler.buildDepError "goatee"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "goatee-gtk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."goatee-gtk" or (errorHandler.buildDepError "goatee-gtk"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-goatee-gtk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goatee-gtk" or (errorHandler.buildDepError "goatee-gtk"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }