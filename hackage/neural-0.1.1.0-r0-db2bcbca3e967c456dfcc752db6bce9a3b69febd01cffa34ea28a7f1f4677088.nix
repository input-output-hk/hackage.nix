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
      identifier = { name = "neural"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Lars Bruenjes";
      maintainer = "brunjlar@gmail.com";
      author = "Lars Bruenjes";
      homepage = "https://github.com/brunjlar/neural";
      url = "";
      synopsis = "Neural Networks in native Haskell";
      description = "The goal of `neural` is to provide a modular and flexible neural network library written in native Haskell.\n\nFeatures include\n\n* /composability/ via\n<https://hackage.haskell.org/package/base-4.9.0.0/docs/Control-Arrow.html Arrow> instances and\n<https://hackage.haskell.org/package/pipes pipes>,\n\n* /automatic differentiation/ for automatic gradient descent/ backpropagation training\n(using Edward Kmett's fabulous <https://hackage.haskell.org/package/ad ad> library).\n\nThe idea is to be able to easily define new components and wire them up in flexible, possibly\ncomplicated ways (convolutional deep networks etc.).\n\nTwo examples are included as proof of concept:\n\n* A simple neural network that approximates the sqrt function on [0,4].\n\n* A slightly more complicated neural network that solves the famous\n<https://en.wikipedia.org/wiki/Iris_flower_data_set Iris flower> problem.\n\nThe library is still very much experimental at this point.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typelits-witnesses" or (errorHandler.buildDepError "typelits-witnesses"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "iris" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."neural" or (errorHandler.buildDepError "neural"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "sqrt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."neural" or (errorHandler.buildDepError "neural"))
            ];
          buildable = true;
          };
        };
      tests = {
        "neural-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."neural" or (errorHandler.buildDepError "neural"))
            ];
          buildable = true;
          };
        "neural-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }