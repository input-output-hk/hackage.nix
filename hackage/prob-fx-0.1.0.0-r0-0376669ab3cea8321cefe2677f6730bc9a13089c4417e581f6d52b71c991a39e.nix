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
      identifier = { name = "prob-fx"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Minh Nguyen";
      maintainer = "minhnguyen1995@googlemail.com";
      author = "Minh Nguyen";
      homepage = "https://github.com/min-nguyen/prob-fx/tree/hackage";
      url = "";
      synopsis = "A library for modular probabilistic modelling";
      description = "A library for probabilistic programming using algebraic effects. The\nemphasis is on modular definitions of probabilistic models, and also\ncompositional implementation of model execution (inference) in terms \nof effect handlers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dirichlet" or (errorHandler.buildDepError "dirichlet"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
          (hsPkgs."membership" or (errorHandler.buildDepError "membership"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prob-fx" or (errorHandler.buildDepError "prob-fx"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
            ];
          buildable = true;
          };
        };
      };
    }