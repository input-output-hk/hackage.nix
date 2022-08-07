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
      identifier = { name = "scubature"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2022 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/scubature#readme";
      url = "";
      synopsis = "Multidimensional integration over simplices";
      description = "This library allows to evaluate integrals over Euclidean and spherical simplices.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
          ];
        buildable = true;
        };
      };
    }