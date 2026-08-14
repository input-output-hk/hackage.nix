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
      identifier = { name = "hanalyze-models"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "";
      url = "";
      synopsis = "Model layer of hanalyze: regression, ML, survival, causal";
      description = "The model layer of the hanalyze toolkit: a model zoo spanning\nclassical regression (LM, GLM, GLMM, robust, quantile, splines, GAM),\npenalised regression with automatic lambda selection (Lasso / Ridge /\nElastic Net / MCP / SCAD), the Formula DSL front-end, multivariate\nanalysis (PCA, PLS, LDA / QDA, MDS, clustering), machine learning\n(random forest, gradient boosting, SVM, k-NN, neural networks),\nGaussian processes and multi-output models, time series (VAR, GARCH,\nstate space), survival and reliability (Kaplan-Meier, Cox, AFT,\nWeibull MLE, accelerated-life models), causal inference (LiNGAM,\npropensity score, IPW, doubly robust, CATE) and Bayesian optimisation.\n.\nModule names match the umbrella package hanalyze, which re-exports\neverything, so downstream imports stay identical. See README.md for the\nmodule map and a standalone usage example.";
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
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."hanalyze-core" or (errorHandler.buildDepError "hanalyze-core"))
          (hsPkgs."hanalyze-frame" or (errorHandler.buildDepError "hanalyze-frame"))
          (hsPkgs."hanalyze-bayes" or (errorHandler.buildDepError "hanalyze-bayes"))
        ];
        buildable = true;
      };
    };
  }