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
      identifier = { name = "hanalyze-core"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "";
      url = "";
      synopsis = "Bottom layer of hanalyze: stats, tests, optimisation, MCMC core";
      description = "The bottom layer of the hanalyze toolkit: pure numerics with no\ndataframe and no Bayesian dependency. Descriptive statistics, hypothesis\ntests (t / Welch / F / chi-square / Hotelling T2 / MANOVA), 40+\ndistributions, effect sizes, bootstrap and cross-validation, SPC control\ncharts (including EWMA and CUSUM), single- and multi-objective\noptimisation (Nelder-Mead, L-BFGS, CMA-ES, NSGA-II, ...), plus the\nsampler-agnostic MCMC Chain type and its diagnostics.\n.\nModule names match the umbrella package hanalyze, which re-exports\neverything, so downstream imports stay identical. See README.md for the\nmodule map and a standalone usage example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
        ];
        buildable = true;
      };
    };
  }