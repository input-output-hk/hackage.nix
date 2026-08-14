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
      identifier = { name = "hanalyze"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hanalyze";
      url = "";
      synopsis = "A general-purpose statistical analysis, optimization and visualization toolkit";
      description = "@hanalyze@ is a self-contained Haskell toolkit for classical regression\n(LM, GLM, GLMM, splines, kernels, GP, RFF), Bayesian modeling\n(HBM DSL with MH, HMC, NUTS, Gibbs, ADVI), design of experiments\n(full/fractional factorial, RSM, D-optimal, orthogonal arrays, Taguchi),\noptimization (Nelder-Mead, L-BFGS, DE, CMA-ES, NSGA-II, Bayesian\noptimization, augmented Lagrangian), and Vega-Lite-based visualization\nwith HTML / PNG / SVG output.\n.\nAll algorithms are implemented natively in Haskell — no R / Stan / Python\nbridges. Data interchange uses the @dataframe@ package as a first-class\ncitizen.\n.\nThis is the umbrella package: it re-exports all 200 modules of the six\nsplit layers (core, frame, bayes, models, design, viz) under their\noriginal names, so depending on this one package is enough and downstream\nimports never have to change. It also implements four modules of its own\nthat cut across the layers -- the quickstart front end\n@Hanalyze@, the unified fit operator @(|->)@ in\n@Hanalyze.Fit@, coefficient diagnostics in\n@Hanalyze.Diagnostics@, and the plotting wrappers in\n@Hanalyze.Model.Wrappers@.\n.\nThe unified @hanalyze@ command-line interface (@regress@, @info@, @hist@,\n@doe@, @taguchi@, @ridge@, @kernel@, @spline@, @multireg@, @clean@,\n@melt@, @regrid@, ...) ships separately in the hanalyze-cli\npackage. See README.md for the layer map and a usage example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."hanalyze-core" or (errorHandler.buildDepError "hanalyze-core"))
          (hsPkgs."hanalyze-frame" or (errorHandler.buildDepError "hanalyze-frame"))
          (hsPkgs."hanalyze-bayes" or (errorHandler.buildDepError "hanalyze-bayes"))
          (hsPkgs."hanalyze-models" or (errorHandler.buildDepError "hanalyze-models"))
          (hsPkgs."hanalyze-design" or (errorHandler.buildDepError "hanalyze-design"))
          (hsPkgs."hanalyze-viz" or (errorHandler.buildDepError "hanalyze-viz"))
        ];
        buildable = true;
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