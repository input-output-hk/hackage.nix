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
    flags = { tests = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "aeson-tiled"; version = "0.0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Schell Scivally";
      maintainer = "aenor.realm@gmai.com";
      author = "Schell Scivally";
      homepage = "https://github.com/haskell-game/aeson-tiled";
      url = "";
      synopsis = "Aeson instances for the Tiled map editor.";
      description = "The mighty Tiled 2D map editor is an open source\napp for creating tile based level maps. This package provides\ntypes and aeson instances to read Tiled json files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "aeson-tiled-test" = {
          depends = [
            (hsPkgs."aeson-tiled" or (errorHandler.buildDepError "aeson-tiled"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = if !flags.tests then false else true;
          };
        };
      };
    }