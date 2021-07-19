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
      identifier = { name = "ad-delcont"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Marco Zocca";
      maintainer = "ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/ad-delcont";
      url = "";
      synopsis = "Reverse-mode automatic differentiation with delimited continuations";
      description = "Reverse-mode automatic differentiation using delimited continuations (@shift@/@reset@), inspired by the papers\n\n* F. Wang et al, Backpropagation with Continuation Callbacks : Foundations for Efficient and Expressive Differentiable Programming, NeurIPS 2018 - https://papers.nips.cc/paper/2018/file/34e157766f31db3d2099831d348a7933-Paper.pdf\n\n* F. Wang et al, Demystifying Differentiable Programming : Shift\\/Reset the Penultimate Backpropagator, ICFP 2019 - https://www.cs.purdue.edu/homes/rompf/papers/wang-icfp19.pdf\n\nThe package exposes a small and easily extensible user interface to automatic differentiation combinators. It also manages to be very lightweight, as it only depends on @base@ and @transformers@.\n\nTo use the library, import \"Numeric.AD.DelCont\", which also contains all documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }