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
      identifier = { name = "exp-pairs"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/exp-pairs";
      url = "";
      synopsis = "Linear programming over exponent pairs";
      description = "Package implements an algorithm to minimize rational objective function over the set of exponent pairs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."exp-pairs" or (errorHandler.buildDepError "exp-pairs"))
            (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            ];
          buildable = true;
          };
        };
      };
    }