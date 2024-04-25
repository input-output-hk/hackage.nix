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
      specVersion = "3.0";
      identifier = { name = "quickcheck-quid"; version = "0.0.1.3"; };
      license = "Apache-2.0";
      copyright = "2022–2024 Jonathan Knowles";
      maintainer = "mail@jonathanknowles.net";
      author = "Jonathan Knowles";
      homepage = "";
      url = "";
      synopsis = "Quasi-unique identifiers for QuickCheck";
      description = "Quasi-unique identifiers for QuickCheck.\n\nFor the most up-to-date documentation, please view the following page:\n\nhttps://github.com/jonathanknowles/quickcheck-quid/blob/main/README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."quickcheck-quid".components.sublibs.internal or (errorHandler.buildDepError "quickcheck-quid:internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-quid" or (errorHandler.buildDepError "quickcheck-quid"))
          ];
          buildable = true;
        };
        "internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."quickcheck-quid" or (errorHandler.buildDepError "quickcheck-quid"))
            (hsPkgs."quickcheck-quid".components.sublibs.internal or (errorHandler.buildDepError "quickcheck-quid:internal"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }