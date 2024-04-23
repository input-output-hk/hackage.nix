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
      identifier = { name = "goal-probability"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Manifolds of probability distributions";
      description = "Provides probability distributions, exponential families, as well\nas things based on exponential families such as multilayer perceptrons and\nharmoniums (e.g. restricted Boltzmann machines).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."mwc-random-monad" or (errorHandler.buildDepError "mwc-random-monad"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
          (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
        ];
        buildable = true;
      };
      exes = {
        "cross-entropy-descent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          ];
          buildable = true;
        };
        "poisson-binomial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          ];
          buildable = true;
        };
        "univariate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          ];
          buildable = true;
        };
        "multivariate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "transducer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          ];
          buildable = true;
        };
        "transducer-field" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          ];
          buildable = true;
        };
        "divergence" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          ];
          buildable = true;
        };
        "backpropagation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          ];
          buildable = true;
        };
      };
    };
  }