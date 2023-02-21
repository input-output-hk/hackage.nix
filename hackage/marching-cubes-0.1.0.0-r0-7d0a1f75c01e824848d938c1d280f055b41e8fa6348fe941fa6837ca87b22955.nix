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
      identifier = { name = "marching-cubes"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/marching-cubes#readme";
      url = "";
      synopsis = "Marching Cubes";
      description = "Pure Haskell implementation of the marching cubes algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }