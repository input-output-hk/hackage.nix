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
      identifier = { name = "tropical-geometry"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Fernando Zhapa";
      author = "Fernando Zhapa";
      homepage = "https://github.com/ferynando7/tropical-geometry#readme";
      url = "";
      synopsis = "A Tropical Geometry package for Haskell";
      description = "This package includes Tropical algebra and geometry stuff such as tropical numbers, tropical matrices, and tropical polynomials. Also you can find here an algorithm to compute tropical hypersurfaces for polynomials in two variables.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."semiring-simple" or (errorHandler.buildDepError "semiring-simple"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
          (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
        ];
        buildable = true;
      };
      exes = {
        "tropical-geometry" = {
          depends = [
            (hsPkgs."tropical-geometry" or (errorHandler.buildDepError "tropical-geometry"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tropical-geometry-test-suite" = {
          depends = [
            (hsPkgs."tropical-geometry" or (errorHandler.buildDepError "tropical-geometry"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hlint-test" or (errorHandler.buildDepError "hlint-test"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "tropical-geometry-benchmarks" = {
          depends = [
            (hsPkgs."tropical-geometry" or (errorHandler.buildDepError "tropical-geometry"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }