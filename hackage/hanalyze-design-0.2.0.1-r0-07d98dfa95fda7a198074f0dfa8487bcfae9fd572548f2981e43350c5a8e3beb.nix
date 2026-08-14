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
      identifier = { name = "hanalyze-design"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "";
      url = "";
      synopsis = "Design-of-experiments layer of hanalyze (DoE / MSA)";
      description = "The design-of-experiments layer of the hanalyze toolkit. Generates\ndesigns -- full and fractional factorials, orthogonal arrays and Taguchi\nrobust designs, blocking, definitive screening designs, response surface\ndesigns (CCD / Box-Behnken), D/A/I/E/G-optimal designs by Fedorov\nexchange (including augmentation of an existing design), space-filling\ndesigns (LHS / maximin LHS / Halton), mixture designs and the Custom\nDesign family with factor, model and constraint definitions -- and\nevaluates the resulting data: analysis of variance, design diagnostics,\npower and sample size, process capability, Gauge R&R measurement system\nanalysis, and sequential RSM helpers.\n.\nModule names match the umbrella package hanalyze, which re-exports\neverything, so downstream imports stay identical. See README.md for the\nmodule map and a standalone usage example.";
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
          (hsPkgs."dataframe-csv" or (errorHandler.buildDepError "dataframe-csv"))
          (hsPkgs."hanalyze-core" or (errorHandler.buildDepError "hanalyze-core"))
          (hsPkgs."hanalyze-frame" or (errorHandler.buildDepError "hanalyze-frame"))
          (hsPkgs."hanalyze-models" or (errorHandler.buildDepError "hanalyze-models"))
        ];
        buildable = true;
      };
    };
  }