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
      identifier = { name = "hanalyze-bayes"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "";
      url = "";
      synopsis = "Bayesian layer of hanalyze: HBM DSL, MCMC samplers, model comparison";
      description = "The Bayesian inference layer of the hanalyze toolkit, depending on\nhanalyze-core only (no dataframe), so it can be used as a\nstandalone sampling library. A free-monad hierarchical Bayesian model DSL\nwith in-house reverse-mode AD, samplers (NUTS after Hoffman & Gelman 2014,\nHMC, Metropolis-Hastings, slice, Gibbs, SMC), variational inference\n(ADVI), posterior predictive sampling, and model comparison via bridge\nsampling (marginal likelihood, Bayes factors, Bayesian model averaging).\n.\nModule names match the umbrella package hanalyze, which re-exports\neverything, so downstream imports stay identical. See README.md for the\nmodule map and a standalone usage example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hanalyze-core" or (errorHandler.buildDepError "hanalyze-core"))
        ];
        buildable = true;
      };
    };
  }