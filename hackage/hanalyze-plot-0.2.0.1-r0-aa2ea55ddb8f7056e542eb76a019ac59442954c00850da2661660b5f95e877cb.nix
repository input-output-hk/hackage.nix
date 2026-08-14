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
      identifier = { name = "hanalyze-plot"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "";
      url = "";
      synopsis = "Static-plot integration for hanalyze (toPlot / Plottable)";
      description = "The integration layer between hanalyze and the sibling\nhgg project. It provides the Plottable class, whose toPlot turns\na fitted analysis model into an hgg VisualSpec that can be\nlayered with other marks and rendered to static SVG / PDF / PNG. Instances\ncover the linear family (LM / GLM / weighted LM), Bayesian and HBM results\n(chains, forest plots, posterior predictive checks, model DAGs), robust\nand quantile regression, smoothing and kernel methods, and the generic fit\nwrappers.\n.\nUnlike the other layers this package sits above the umbrella package\nhanalyze (the reverse direction would close a package cycle) and\ndepends on the sibling hgg packages, so it is built through the\ndedicated build root cabal.project.plot rather than the default\ncabal.project. For Vega-Lite figures and HTML reports see\nhanalyze-viz instead. See README.md for the module map and a\nusage example.";
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
          (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          (hsPkgs."hgg-3d" or (errorHandler.buildDepError "hgg-3d"))
          (hsPkgs."hgg-custom" or (errorHandler.buildDepError "hgg-custom"))
        ];
        buildable = true;
      };
      tests = {
        "hanalyze-plot-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hanalyze-plot" or (errorHandler.buildDepError "hanalyze-plot"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-3d" or (errorHandler.buildDepError "hgg-3d"))
            (hsPkgs."hgg-custom" or (errorHandler.buildDepError "hgg-custom"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
      };
    };
  }