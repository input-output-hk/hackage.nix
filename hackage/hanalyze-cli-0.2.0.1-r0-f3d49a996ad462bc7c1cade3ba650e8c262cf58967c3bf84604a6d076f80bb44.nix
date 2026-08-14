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
      identifier = { name = "hanalyze-cli"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "";
      url = "";
      synopsis = "hanalyze command-line interface for the hanalyze toolkit";
      description = "The @hanalyze@ command-line executable of the hanalyze toolkit.\nIts 15 subcommands cover regression (@regress@ for LM / GLM / GLMM / GP /\nHBM, plus @ridge@, @kernel@, @spline@, @quantile@, @gam@, @rf@ and\n@multireg@), data inspection and plotting (@info@, @hist@), design of\nexperiments (@doe@, @taguchi@) and reshaping (@clean@, @melt@, @regrid@),\nwith HTML / PNG / SVG output and optional HTML analysis reports.\n.\nIt was split out of the hanalyze package so that library work does\nnot trigger the CLI compile+link by default, and so that its dependency on\nthe umbrella public API alone (no internal module access) is guaranteed\nstructurally. See README.md for the subcommand map and examples.";
      buildType = "Simple";
    };
    components = {
      exes = {
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
      };
    };
  }