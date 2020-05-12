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
      identifier = { name = "aeson-tiled"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Schell Scivally";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/aeson-tiled#readme";
      url = "";
      synopsis = "Aeson instances for the Tiled map editor.";
      description = "The mighty Tiled 2d map editor is an open source\napp for creating tile based level maps. This package provides\ntypes and aeson instances to read Tiled json files.";
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
      exes = {
        "aeson-tiled-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson-tiled" or (errorHandler.buildDepError "aeson-tiled"))
            ];
          buildable = true;
          };
        };
      tests = {
        "aeson-tiled-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-tiled" or (errorHandler.buildDepError "aeson-tiled"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }