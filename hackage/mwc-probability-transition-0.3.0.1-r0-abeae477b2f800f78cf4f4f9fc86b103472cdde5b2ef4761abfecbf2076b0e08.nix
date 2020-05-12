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
      identifier = {
        name = "mwc-probability-transition";
        version = "0.3.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "2018 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/mwc-probability-transition";
      url = "";
      synopsis = "A Markov stochastic transition operator with logging";
      description = "\nThis package provides a 'Transition' type that is useful for modelling (and debugging) stochastic transition kernels (used in e.g. the integration of SDEs, Markov chain Monte Carlo algorithms etc.).\n\nIt wraps the compositional random sampling functionality of `mwc-probability` and offers structured logging via `logging-effect`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
            (hsPkgs."mwc-probability-transition" or (errorHandler.buildDepError "mwc-probability-transition"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }