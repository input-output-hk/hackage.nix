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
      identifier = { name = "hanalyze-viz"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "";
      url = "";
      synopsis = "Vega-Lite visualization and HTML report layer of hanalyze";
      description = "The visualization and reporting layer of the hanalyze toolkit. It\nturns analysis results into Vega-Lite specs and emits them either as\nsingle figures (HTML / PNG / SVG) -- scatter plots with regression,\nsmoother and confidence bands, bar charts, histograms with theoretical\ndensities, MCMC diagnostics (trace, posterior density, autocorrelation,\nforest, energy), Gaussian-process bands, Pareto fronts and model DAGs in\nMermaid or Graphviz form -- or as composed HTML reports built from\nReportSection values, covering data overviews, coefficients, residuals,\nMCMC diagnostics, model comparison and interactive prediction.\n.\nModule names match the umbrella package hanalyze, which re-exports\neverything, so downstream imports stay identical. For static SVG / PDF /\nPNG rendering see hanalyze-plot instead. See README.md for the\nmodule map and a standalone usage example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hvega" or (errorHandler.buildDepError "hvega"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          (hsPkgs."hanalyze-core" or (errorHandler.buildDepError "hanalyze-core"))
          (hsPkgs."hanalyze-frame" or (errorHandler.buildDepError "hanalyze-frame"))
          (hsPkgs."hanalyze-bayes" or (errorHandler.buildDepError "hanalyze-bayes"))
          (hsPkgs."hanalyze-models" or (errorHandler.buildDepError "hanalyze-models"))
          (hsPkgs."hanalyze-design" or (errorHandler.buildDepError "hanalyze-design"))
        ];
        buildable = true;
      };
    };
  }