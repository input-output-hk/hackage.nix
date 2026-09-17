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
      identifier = { name = "multisets"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2026 Florian Ragwitz";
      maintainer = "florian.ragwitz@gmail.com";
      author = "Florian Ragwitz";
      homepage = "https://github.com/rafl/multisets";
      url = "";
      synopsis = "Multisets with arbitrary-precision Natural multiplicities";
      description = "Finite multisets with arbitrary-precision 'Natural' multiplicities.\n\nA 'MultiSet' is like a 'Data.Set.Set', except that values may occur more than\nonce. The number of occurrences of a value is its /multiplicity/.\n\nUnlike \"Data.MultiSet\", this package represents multiplicities using\n'Natural' rather than 'Int', allowing them to grow beyond the range of 'Int'\nwhile reflecting that multiplicities cannot be negative.\n\nThe API is broadly similar to \"Data.MultiSet\", and many common uses are\nsource-compatible after changing the module import.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "multisets-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."multisets" or (errorHandler.buildDepError "multisets"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }