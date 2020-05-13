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
    flags = { sample = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-higherorder"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/quickcheck-higherorder#readme";
      url = "";
      synopsis = "QuickCheck extension for higher-order properties";
      description = "Enhancements for property-based testing of higher-order properties.\n\n* Associate types to their representations with the\n'Test.QuickCheck.HigherOrder.Constructible' class.\n* 'Test.QuickCheck.HigherOrder.Testable'' class,\nvariant of 'Test.QuickCheck.Testable' with an improved instance for @(->)@.\n* Representation of higher-order functions (via test-fun).\n* Testable equality 'Test.QuickCheck.HigherOrder.TestEq'.\n* Explicit testable type of 'Test.QuickCheck.HigherOrder.Equation'.\n\nSee also README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."test-fun" or (errorHandler.buildDepError "test-fun"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "qcho-test" = {
          depends = [
            (hsPkgs."quickcheck-higherorder" or (errorHandler.buildDepError "quickcheck-higherorder"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "qcho-sample" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-higherorder" or (errorHandler.buildDepError "quickcheck-higherorder"))
            (hsPkgs."test-fun" or (errorHandler.buildDepError "test-fun"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if !flags.sample then false else true;
          };
        };
      };
    }