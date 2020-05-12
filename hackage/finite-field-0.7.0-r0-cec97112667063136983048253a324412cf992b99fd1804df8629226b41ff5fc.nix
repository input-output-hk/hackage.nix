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
      identifier = { name = "finite-field"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Finite Fields";
      description = "This is an implementation of finite fields.\nCurrently only prime fields are supported.\n\nChanges in 0.7.0\n\n* use extended GCD to compute reciprocals\n\n* conform with the addition of SomeNat type to type-level-numbers-0.1.1.0.\n\nChanges in 0.6.0\n\n* add Hashable instance\n\nChanges in 0.6.0\n\n* add allValues to FiniteField class\n\nChanges in 0.5.0\n\n* introduce FiniteField class";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."type-level-numbers" or (errorHandler.buildDepError "type-level-numbers"))
          (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
          ];
        buildable = true;
        };
      tests = {
        "TestPrimeField" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."finite-field" or (errorHandler.buildDepError "finite-field"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."type-level-numbers" or (errorHandler.buildDepError "type-level-numbers"))
            ];
          buildable = true;
          };
        };
      };
    }