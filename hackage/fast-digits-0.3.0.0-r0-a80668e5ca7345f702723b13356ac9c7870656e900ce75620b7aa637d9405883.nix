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
      specVersion = "2.0";
      identifier = { name = "fast-digits"; version = "0.3.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/fast-digits";
      url = "";
      synopsis = "Integer-to-digits conversion.";
      description = "Convert an integer to digits and back.\nThis library is both asymptotically (O(n^1.4) vs. O(n^2))\nand practically (2x-40x for typical inputs)\nfaster than \"Data.Digits\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."fast-digits".components.sublibs.fast-digits-internal or (errorHandler.buildDepError "fast-digits:fast-digits-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "fast-digits-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
            (hsPkgs."fast-digits" or (errorHandler.buildDepError "fast-digits"))
            (hsPkgs."fast-digits".components.sublibs.fast-digits-internal or (errorHandler.buildDepError "fast-digits:fast-digits-internal"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
            (hsPkgs."fast-digits" or (errorHandler.buildDepError "fast-digits"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            ];
          buildable = true;
          };
        };
      };
    }