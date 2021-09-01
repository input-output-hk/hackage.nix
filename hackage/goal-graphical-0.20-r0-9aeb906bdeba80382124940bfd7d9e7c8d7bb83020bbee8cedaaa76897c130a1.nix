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
      specVersion = "3.0";
      identifier = { name = "goal-graphical"; version = "0.20"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sacha.sokoloski@mailbox.org";
      author = "Sacha Sokoloski";
      homepage = "https://gitlab.com/sacha-sokoloski/goal";
      url = "";
      synopsis = "Optimization of latent variable and dynamical models with Goal";
      description = "goal-graphical provides tools for with dynamical and graphical models. Various graphical models are defined here, e.g. mixture models and restricted Boltzmann machines, dynamical models such as HMMs and Kalman filters, and in both cases algorithms for fitting them e.g. expectation maximization and contrastive divergence minimization.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."hmatrix-special" or (errorHandler.buildDepError "hmatrix-special"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
          (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          ];
        buildable = true;
        };
      benchmarks = {
        "com-poisson" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."goal-graphical" or (errorHandler.buildDepError "goal-graphical"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }