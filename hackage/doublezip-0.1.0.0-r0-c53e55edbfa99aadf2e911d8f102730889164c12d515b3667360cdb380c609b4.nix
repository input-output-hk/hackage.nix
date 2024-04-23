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
      identifier = { name = "doublezip"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/doublezip";
      url = "";
      synopsis = "Some special functions to work with lists (with zip).";
      description = "Uses normalizitions inside for the tuples. Can be used to generate data for 2D function points.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foldable-ix" or (errorHandler.buildDepError "foldable-ix"))
        ];
        buildable = true;
      };
    };
  }