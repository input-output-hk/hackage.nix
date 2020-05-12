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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "adp-multi"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Maik Riechert, 2012";
      maintainer = "Maik Riechert";
      author = "Maik Riechert";
      homepage = "http://adp-multi.ruhoh.com";
      url = "";
      synopsis = "ADP for multiple context-free languages";
      description = "adp-multi is an implementation of Algebraic Dynamic Programming\nfor multiple context-free languages.\nIt is a library based on the original Haskell implementation\nand can be considered an unoptimized prototype.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."htrace" or (errorHandler.buildDepError "htrace"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monadiccp" or (errorHandler.buildDepError "monadiccp"))
          ];
        buildable = true;
        };
      exes = {
        "adp-multi-benchmarks" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        "adp-test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if !flags.buildtests then false else true;
          };
        };
      tests = {
        "MainTestSuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            ];
          buildable = true;
          };
        };
      };
    }