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
      identifier = { name = "random-fu-multivariate"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 FP Complete Corporation";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz, Jacob West";
      homepage = "https://github.com/fpco/random-fu-multivariate";
      url = "";
      synopsis = "Multivariate distributions for random-fu";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "random-fu-multivariate-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random-fu-multivariate" or (errorHandler.buildDepError "random-fu-multivariate"))
            ];
          buildable = true;
          };
        };
      };
    }