{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "neural";
        version = "0.3.0.1";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Lars Bruenjes";
      maintainer = "brunjlar@gmail.com";
      author = "Lars Bruenjes";
      homepage = "https://github.com/brunjlar/neural";
      url = "";
      synopsis = "Neural Networks in native Haskell";
      description = "The goal of `neural` is to provide a modular and flexible neural network library written in native Haskell.\n\nFeatures include\n\n* /composability/ via arrow-like instances and\n<https://hackage.haskell.org/package/pipes pipes>,\n\n* /automatic differentiation/ for automatic gradient descent/ backpropagation training\n(using Edward Kmett's fabulous <https://hackage.haskell.org/package/ad ad> library).\n\nThe idea is to be able to easily define new components and wire them up in flexible, possibly\ncomplicated ways (convolutional deep networks etc.).\n\nFour examples are included as proof of concept:\n\n* A simple neural network that approximates the sine function on [0,2 pi].\n\n* Another simple neural network that approximates the sqrt function on [0,4].\n\n* A slightly more complicated neural network that solves the famous\n<https://en.wikipedia.org/wiki/Iris_flower_data_set Iris flower> problem.\n\n* A first (still simple) neural network for recognizing handwritten digits from the equally famous\n<https://en.wikipedia.org/wiki/MNIST_database MNIST> database.\n\nThe library is still very much experimental at this point.";
      buildType = "Simple";
    };
    components = {
      "neural" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ad)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.hspec)
          (hsPkgs.kan-extensions)
          (hsPkgs.lens)
          (hsPkgs.MonadRandom)
          (hsPkgs.monad-par)
          (hsPkgs.monad-par-extras)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-safe)
          (hsPkgs.profunctors)
          (hsPkgs.random)
          (hsPkgs.reflection)
          (hsPkgs.STMonadTrans)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.typelits-witnesses)
          (hsPkgs.vector)
          (hsPkgs.vector-sized)
        ];
      };
      exes = {
        "iris" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.neural)
            (hsPkgs.text)
          ];
        };
        "sin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.array)
            (hsPkgs.neural)
            (hsPkgs.MonadRandom)
          ];
        };
        "sqrt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.MonadRandom)
            (hsPkgs.neural)
          ];
        };
        "MNIST" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.JuicyPixels)
            (hsPkgs.neural)
            (hsPkgs.pipes)
            (hsPkgs.pipes-zlib)
          ];
        };
      };
      tests = {
        "neural-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.MonadRandom)
            (hsPkgs.neural)
          ];
        };
        "neural-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
      benchmarks = {
        "neural-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.neural)
          ];
        };
      };
    };
  }