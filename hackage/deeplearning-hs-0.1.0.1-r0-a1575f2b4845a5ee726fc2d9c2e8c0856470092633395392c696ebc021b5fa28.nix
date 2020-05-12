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
      identifier = { name = "deeplearning-hs"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Andrew Tulloch <andrew+cabal@tullo.ch>";
      author = "Andrew Tulloch";
      homepage = "https://github.com/ajtulloch/deeplearning-hs";
      url = "";
      synopsis = "Deep Learning in Haskell";
      description = "Implements type-safe deep neural networks";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."repa-algorithms" or (errorHandler.buildDepError "repa-algorithms"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "deeplearning_demonstration" = {
          depends = [
            (hsPkgs."deeplearning-hs" or (errorHandler.buildDepError "deeplearning-hs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."repa-algorithms" or (errorHandler.buildDepError "repa-algorithms"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "deeplearning_test" = {
          depends = [
            (hsPkgs."deeplearning-hs" or (errorHandler.buildDepError "deeplearning-hs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."repa-algorithms" or (errorHandler.buildDepError "repa-algorithms"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = true;
          };
        };
      };
    }