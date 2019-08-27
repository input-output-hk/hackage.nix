let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "neural"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Lars Bruenjes";
      maintainer = "brunjlar@gmail.com";
      author = "Lars Bruenjes";
      homepage = "https://github.com/brunjlar/neural";
      url = "";
      synopsis = "Neural Networks in native Haskell";
      description = "The goal of `neural` is to provide a modular and flexible neural network library written in native Haskell.\n\nFeatures include\n\n* /composability/ via arrow-like instances and\n<https://hackage.haskell.org/package/pipes pipes>,\n\n* /automatic differentiation/ for automatic gradient descent/ backpropagation training\n(using Edward Kmett's fabulous <https://hackage.haskell.org/package/ad ad> library).\n\nThe idea is to be able to easily define new components and wire them up in flexible, possibly\ncomplicated ways (convolutional deep networks etc.).\n\nThree examples are included as proof of concept:\n\n* A simple neural network that approximates the sqrt function on [0,4].\n\n* A slightly more complicated neural network that solves the famous\n<https://en.wikipedia.org/wiki/Iris_flower_data_set Iris flower> problem.\n\n* A first (still simple) neural network for recognizing handwritten digits from the equally famous\n<https://en.wikipedia.org/wiki/MNIST_database MNIST> database.\n\nThe library is still very much experimental at this point.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."monad-par" or (buildDepError "monad-par"))
          (hsPkgs."monad-par-extras" or (buildDepError "monad-par-extras"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."STMonadTrans" or (buildDepError "STMonadTrans"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."typelits-witnesses" or (buildDepError "typelits-witnesses"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "iris" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."neural" or (buildDepError "neural"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "sqrt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."neural" or (buildDepError "neural"))
            ];
          };
        "MNIST" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."neural" or (buildDepError "neural"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-zlib" or (buildDepError "pipes-zlib"))
            ];
          };
        };
      tests = {
        "neural-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."neural" or (buildDepError "neural"))
            ];
          };
        "neural-doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            ];
          };
        };
      benchmarks = {
        "neural-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."neural" or (buildDepError "neural"))
            ];
          };
        };
      };
    }