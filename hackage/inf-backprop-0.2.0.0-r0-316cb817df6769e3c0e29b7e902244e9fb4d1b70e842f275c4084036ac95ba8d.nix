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
      specVersion = "1.18";
      identifier = { name = "inf-backprop"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023-2025 Alexey Tochin";
      maintainer = "Alexey.Tochin@gmail.com";
      author = "Alexey Tochin";
      homepage = "";
      url = "";
      synopsis = "Automatic differentiation and backpropagation.";
      description = "![Second order derivative of a composition](docs/doc/images/composition_second_derivative.png)\n\nAutomatic differentiation library with efficient reverse-mode backpropagation for Haskell.\n\nThis package provides a general-purpose automatic differentiation system designed for building strongly typed deep learning frameworks. It offers:\n\n* Reverse-mode automatic differentiation (backpropagation)\n\n* Support for higher-order derivatives\n\n* Type-safe gradient computation\n\n* Integration with [numhask](https://hackage.haskell.org/package/numhask)\n\n* Flexible representations including profunctor and Van Laarhoven encodings\n\nThe library emphasizes composability and type safety, making it suitable\nfor research, prototyping neural networks, and implementing custom\ndifferentiable algorithms.\n\nSee the [tutorial](docs/Numeric-InfBackprop-Tutorial.html) for detailed\nexamples and usage patterns.\n\nSimilar Projects:\n\n* [ad](https://hackage.haskell.org/package/ad) - Comprehensive automatic differentiation library supporting forward and reverse modes\n\n* [backprop](https://hackage.haskell.org/package/backprop) - Heterogeneous automatic differentiation with emphasis on ease of use";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."combinatorial" or (errorHandler.buildDepError "combinatorial"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."indexed-list-literals" or (errorHandler.buildDepError "indexed-list-literals"))
          (hsPkgs."isomorphism-class" or (errorHandler.buildDepError "isomorphism-class"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."simple-expr" or (errorHandler.buildDepError "simple-expr"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."combinatorial" or (errorHandler.buildDepError "combinatorial"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."indexed-list-literals" or (errorHandler.buildDepError "indexed-list-literals"))
            (hsPkgs."isomorphism-class" or (errorHandler.buildDepError "isomorphism-class"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."simple-expr" or (errorHandler.buildDepError "simple-expr"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
          buildable = true;
        };
      };
    };
  }