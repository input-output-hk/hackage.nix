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
    flags = { sparse = true; };
    package = {
      specVersion = "2.0";
      identifier = { name = "poly"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019-2020 Andrew Lelechenko";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/poly#readme";
      url = "";
      synopsis = "Polynomials";
      description = "Polynomials backed by `Vector`s.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (flags.sparse) [
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
        buildable = true;
        };
      tests = {
        "poly-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optionals (flags.sparse) [
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "poly-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            ];
          buildable = true;
          };
        };
      };
    }