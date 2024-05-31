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
      specVersion = "3.4";
      identifier = { name = "tensort"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2024 Kyle Beechly";
      maintainer = "contact@kaBeech.com";
      author = "Kyle Beechly";
      homepage = "";
      url = "";
      synopsis = "Reasonably robust sorting in O(n log n) time";
      description = "An exploration of robustness in algorithms for sorting integers, inspired by [Beyond Efficiency](https://www.cs.unm.edu/~ackley/be-201301131528.pdf) by David H. Ackley";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
        ];
        buildable = true;
      };
      exes = {
        "tensort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tensort" or (errorHandler.buildDepError "tensort"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tensort-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tensort" or (errorHandler.buildDepError "tensort"))
          ];
          buildable = true;
        };
      };
    };
  }