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
      specVersion = "1.12";
      identifier = { name = "lazyppl"; version = "1.0"; };
      license = "MIT";
      copyright = "2021-2024 LazyPPL team";
      maintainer = "sam.staton@cs.ox.ac.uk";
      author = "LazyPPL team";
      homepage = "https://lazyppl-team.github.io/";
      url = "";
      synopsis = "Lazy Probabilistic Programming Library";
      description = "LazyPPL is a Haskell library for Bayesian probabilistic programming. It supports lazy use of probability, which is useful for specifying non-parametric models, and we provide new Metropolis-Hastings algorithms to allow this. For illustrations, see <https://lazyppl-team.github.io/>. The Gaussian Process module uses hmatrix, which requires a separate lapack installation (or -dev or -devel).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."monad-extras" or (errorHandler.buildDepError "monad-extras"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }