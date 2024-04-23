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
      identifier = { name = "goal-probability"; version = "0.20"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sacha.sokoloski@mailbox.org";
      author = "Sacha Sokoloski";
      homepage = "https://gitlab.com/sacha-sokoloski/goal";
      url = "";
      synopsis = "Optimization on manifolds of probability distributions with Goal";
      description = "goal-probability provides tools for implementing and applying basic statistical models. The core concept of goal-probability are statistical manifolds, i.e. manifold of probability distributions, with a focus on exponential family distributions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
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
        ];
        buildable = true;
      };
      benchmarks = {
        "regression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
        "backpropagation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }