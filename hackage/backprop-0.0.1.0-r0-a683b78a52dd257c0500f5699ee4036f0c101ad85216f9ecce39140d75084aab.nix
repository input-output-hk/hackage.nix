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
      identifier = { name = "backprop"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2017";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/backprop";
      url = "";
      synopsis = "Heterogeneous, type-safe automatic backpropagation in Haskell";
      description = "See <https://github.com/mstksg/backprop#readme README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."type-combinators" or (errorHandler.buildDepError "type-combinators"))
          ];
        buildable = true;
        };
      exes = {
        "backprop-monotest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
            ];
          buildable = true;
          };
        "backprop-neuraltest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."type-combinators" or (errorHandler.buildDepError "type-combinators"))
            ];
          buildable = true;
          };
        "backprop-mnist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mnist-idx" or (errorHandler.buildDepError "mnist-idx"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }