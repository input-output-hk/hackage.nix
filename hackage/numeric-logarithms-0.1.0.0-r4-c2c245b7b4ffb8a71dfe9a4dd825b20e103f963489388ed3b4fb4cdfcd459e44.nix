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
      specVersion = "1.12";
      identifier = { name = "numeric-logarithms"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpritchard@gmail.com>";
      author = "Andrew Pritchard <awpritchard@gmail.com>";
      homepage = "https://github.com/google/hs-numeric-logarithms#readme";
      url = "";
      synopsis = "Integral and rational log2 algorithms";
      description = "This provides a user-facing API for the GHC primitive 'integerLog2#', in the\nform of functions computing the floor, ceiling, or other rounded form of the\nbase-2 logarithm of 'Integral' or 'Rational' types.";
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
        "Logarithms-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."numeric-logarithms" or (errorHandler.buildDepError "numeric-logarithms"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }