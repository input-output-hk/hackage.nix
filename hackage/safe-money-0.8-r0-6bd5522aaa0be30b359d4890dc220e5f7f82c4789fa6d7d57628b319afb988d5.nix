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
      identifier = { name = "safe-money"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2016-2018";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/safe-money";
      url = "";
      synopsis = "Type-safe and lossless encoding and manipulation of money, fiat\ncurrencies, crypto currencies and precious metals.";
      description = "The Haskell @safe-money@ library offers type-safe and lossless encoding and\noperations for monetary values in all world currencies, including fiat\ncurrencies, precious metals and crypto-currencies.\n\nUseful instances for the many types defined by @safe-money@ can be found\nin these other libraries:\n\n* [safe-money-aeson](https://hackage.haskell.org/package/safe-money-aeson):\n@FromJSON@ and @ToJSON@ instances (from the [aeson](https://hackage.haskell.org/package/aeson) library).\n\n* [safe-money-cereal](https://hackage.haskell.org/package/safe-money-cereal):\n@Serialize@ instances (from the [cereal](https://hackage.haskell.org/package/cereal) library).\n\n* [safe-money-serialise](https://hackage.haskell.org/package/safe-money-serialise):\n@Serialise@ instances (from the [serialise](https://hackage.haskell.org/package/serialise) library).\n\n* [safe-money-store](https://hackage.haskell.org/package/safe-money-store):\n@Store@ instances (from the [store](https://hackage.haskell.org/package/store) library).\n\n* [safe-money-xmlbf](https://hackage.haskell.org/package/safe-money-xmlbf):\n@FromXml@ and @ToXml@ instances (from the [xmlbf](https://hackage.haskell.org/package/xmlbf) library).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."safe-money" or (errorHandler.buildDepError "safe-money"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
          buildable = true;
        };
      };
    };
  }