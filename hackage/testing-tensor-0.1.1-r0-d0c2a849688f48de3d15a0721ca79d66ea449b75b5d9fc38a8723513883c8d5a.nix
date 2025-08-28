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
    flags = { test-fft = false; test-cudnn = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "testing-tensor"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Pure implementation of tensors, for use in tests.";
      description = "This is a pure Haskell implementation of tensors, emphasizing\nsimplicity over all else. It is intended to be used as a model\nin tests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "testing-tensor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."testing-tensor" or (errorHandler.buildDepError "testing-tensor"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
          ] ++ pkgs.lib.optionals (flags.test-fft) [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
            (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
          ];
          libs = pkgs.lib.optionals (flags.test-cudnn) [
            (pkgs."cudart" or (errorHandler.sysDepError "cudart"))
            (pkgs."cudnn" or (errorHandler.sysDepError "cudnn"))
          ];
          buildable = true;
        };
      };
    };
  }