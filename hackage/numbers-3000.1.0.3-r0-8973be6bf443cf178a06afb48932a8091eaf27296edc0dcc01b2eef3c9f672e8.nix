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
      specVersion = "1.8";
      identifier = { name = "numbers"; version = "3000.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Lennart Augustsson";
      homepage = "https://github.com/DanBurton/numbers#readme";
      url = "";
      synopsis = "Various number types";
      description = "Instances of the numerical classes for a variety of\ndifferent numbers: (computable) real numbers,\narbitrary precision fixed numbers,\narbitrary precision floating point numbers,\ndifferentiable numbers, symbolic numbers,\nnatural numbers, interval arithmetic.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }