{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."STMonadTrans" or ((hsPkgs.pkgs-errors).buildDepError "STMonadTrans"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."typelits-witnesses" or ((hsPkgs.pkgs-errors).buildDepError "typelits-witnesses"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "iris" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."neural" or ((hsPkgs.pkgs-errors).buildDepError "neural"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "sqrt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."neural" or ((hsPkgs.pkgs-errors).buildDepError "neural"))
            ];
          buildable = true;
          };
        };
      tests = {
        "neural-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."neural" or ((hsPkgs.pkgs-errors).buildDepError "neural"))
            ];
          buildable = true;
          };
        "neural-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }