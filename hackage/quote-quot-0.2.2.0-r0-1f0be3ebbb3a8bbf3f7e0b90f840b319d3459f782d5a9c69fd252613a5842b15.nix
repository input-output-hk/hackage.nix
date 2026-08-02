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
      specVersion = "2.2";
      identifier = { name = "quote-quot"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2020-2022 Andrew Lelechenko";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/quote-quot#readme";
      url = "";
      synopsis = "Divide without division";
      description = "Generate routines for integer division, employing arithmetic\nand bitwise operations only, which are __2.5x-3.5x faster__\nthan 'quot'. Divisors must be known in compile-time and be positive.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell-lift" or (errorHandler.buildDepError "template-haskell-lift"))
        ];
        buildable = true;
      };
      tests = {
        "quote-quot-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quote-quot" or (errorHandler.buildDepError "quote-quot"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "quote-quot-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quote-quot" or (errorHandler.buildDepError "quote-quot"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }