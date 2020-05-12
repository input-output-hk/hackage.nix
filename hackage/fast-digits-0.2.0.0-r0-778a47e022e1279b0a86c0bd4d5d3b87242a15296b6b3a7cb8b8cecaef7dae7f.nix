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
      identifier = { name = "fast-digits"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/fast-digits";
      url = "";
      synopsis = "The fast library for integer-to-digits conversion.";
      description = "Convert an integer to digits and back.\nUsually this library is twice as fast as \"Data.Digits\".\nFor small bases and long numbers it may be up to 40 times faster.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ];
        buildable = true;
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
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
            (hsPkgs."fast-digits" or (errorHandler.buildDepError "fast-digits"))
            ];
          buildable = true;
          };
        };
      };
    }