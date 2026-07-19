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
    flags = { plot-integration = false; demos = false; benches = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "hanalyze"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hanalyze";
      url = "";
      synopsis = "A general-purpose statistical analysis, optimization and visualization toolkit";
      description = "@hanalyze@ is a self-contained Haskell toolkit for classical regression\n(LM, GLM, GLMM, splines, kernels, GP, RFF), Bayesian modeling\n(HBM DSL with MH, HMC, NUTS, Gibbs, ADVI), design of experiments\n(full/fractional factorial, RSM, D-optimal, orthogonal arrays, Taguchi),\noptimization (Nelder-Mead, L-BFGS, DE, CMA-ES, NSGA-II, Bayesian\noptimization, augmented Lagrangian), and Vega-Lite-based visualization\nwith HTML / PNG / SVG output.\n.\nAll algorithms are implemented natively in Haskell — no R / Stan / Python\nbridges. Data interchange uses the @dataframe@ package as a first-class\ncitizen.\n.\nA unified @hanalyze@ command-line interface exposes the most common\nworkflows (@regress@, @info@, @hist@, @doe@, @taguchi@, @ridge@,\n@kernel@, @spline@, @multireg@, @clean@, @melt@, @regrid@, ...).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hvega" or (errorHandler.buildDepError "hvega"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          (hsPkgs."dataframe-csv" or (errorHandler.buildDepError "dataframe-csv"))
          (hsPkgs."dataframe-json" or (errorHandler.buildDepError "dataframe-json"))
          (hsPkgs."dataframe-parquet" or (errorHandler.buildDepError "dataframe-parquet"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
        ] ++ pkgs.lib.optionals (flags.plot-integration) [
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          (hsPkgs."hgg-3d" or (errorHandler.buildDepError "hgg-3d"))
          (hsPkgs."hgg-custom" or (errorHandler.buildDepError "hgg-custom"))
        ];
        buildable = true;
      };
      exes = {
        "doe-rsm-samplesize-demo" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "doe-implant-sequential-demo" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "hanalyze" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hvega" or (errorHandler.buildDepError "hvega"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
            (hsPkgs."dataframe-csv" or (errorHandler.buildDepError "dataframe-csv"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "glmm-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "hbm-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "phase37-a0-verify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "plate-notation-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "test-hmc-nuts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "bench-mcmc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "vi-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "gibbs-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "regrid-bench-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bar-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "clinical-trial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "gp-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "preprocess-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "dirty-data-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "external-io-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "analysis-compare-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "new-sections-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "robust-gp-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "rff-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "gibbs-hbm-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "newdistribs-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "regularized-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "optimaldoe-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "pareto-smoke" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "materials-moo-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "bayesopt-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "multirsm-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "multivariate-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "multilm-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "nsga-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "nsga-smoke" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "rsm-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "doe-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "cis-implant-workflow-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "kernel-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hvega" or (errorHandler.buildDepError "hvega"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "spline-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."hvega" or (errorHandler.buildDepError "hvega"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "integrated-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "slice-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "ar1-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "lkj3d-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "lkj-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "zeroinflated-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "multinomial-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "negbinom-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "mvnormal-latent-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "setdata-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "dirichlet-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "noncentered-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "deterministic-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "summary-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "pymc-status-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "energy-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "mvnormal-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "cdf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "trunc-censor-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "mixture-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "potential-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "potential-multiout-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "potential-multikr-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "single-opt-bench-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."hvega" or (errorHandler.buildDepError "hvega"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "forest-compare" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "ppc-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "discrete-obs-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "new-distrib-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "hbm-random-slope" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "simpson-paradox" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "hbm-regression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "bench-data-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "formula-ref-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "bench-bo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-phase17" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-custom-design" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-tier12" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-massiv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-beta-isolate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-bootstrap-isolate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-optim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-rff-oom" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mem-vi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mem-aggregate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mem-nsga2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mem-bo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mem-mcmc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-kernel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-ml" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-survts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mcmc-diag" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mcmc-b7" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-scaling" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-54a" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-profile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-vecir-prof" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-fuse-spike" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-m2-iso" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-warmup-prof" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "posteriordb-glm-poisson" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-dogs" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-garch11" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-eight-schools" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-gp-regr" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-low-dim-gauss-mix" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-mh" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-irt-2pl" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-rats" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-seeds" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-ark" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-bym2" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-hmm" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-dugongs" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-lda" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-nes" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-loss-curves" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-surgical" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-bones" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-radon" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "posteriordb-arma" = {
          depends = pkgs.lib.optionals (flags.plot-integration) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if flags.plot-integration then true else false;
        };
        "prof-nuts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-dist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-het" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-vecir" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-admodes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-vecspike" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-hbm-vecad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-mcmc-extras" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-regrid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-multi-output" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-stat-util" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-optim-plus" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-ts-extras" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-regression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-profile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if !flags.benches then false else true;
        };
        "bench-tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.benches then false else true;
        };
      };
      tests = {
        "hanalyze-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }