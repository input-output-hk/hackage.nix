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
      identifier = { name = "grenade"; version = "0.1.0"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2016-2017 Huw Campbell.";
      maintainer = "Huw Campbell <huw.campbell@gmail.com>";
      author = "Huw Campbell <huw.campbell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Practical Deep Learning in Haskell";
      description = "Grenade is a composable, dependently typed, practical, and fast\nrecurrent neural network library for precise specifications and\ncomplex deep neural networks in Haskell.\n\nGrenade provides an API for composing layers of a neural network\ninto a sequence parallel graph in a type safe manner; running\nnetworks with reverse automatic differentiation to calculate their\ngradients; and applying gradient decent for learning.\n\nDocumentation and examples are available on github\n<https://github.com/HuwCampbell/grenade>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grenade" or (errorHandler.buildDepError "grenade"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typelits-witnesses" or (errorHandler.buildDepError "typelits-witnesses"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."grenade" or (errorHandler.buildDepError "grenade"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        "bench-lstm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."grenade" or (errorHandler.buildDepError "grenade"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        };
      };
    }