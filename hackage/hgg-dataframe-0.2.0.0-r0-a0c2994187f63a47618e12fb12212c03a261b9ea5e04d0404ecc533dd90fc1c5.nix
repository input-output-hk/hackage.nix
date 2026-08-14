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
      identifier = { name = "hgg-dataframe"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "Hackage dataframe binding for hgg (PlotData instance for DataFrame)";
      description = "Bridges the Hackage @dataframe@ package to hgg, so a @DataFrame@ can be\nplotted directly by column name.\n\n* @instance PlotData DataFrame@ — makes @df '|>>' spec@ accept a\n  @DataFrame@ (e.g. one returned by @readCsv@) with no conversion step.\n* @dfResolver@ / @plotDF@ — the underlying resolver and a one-call save\n  helper.\n\nNullable columns are supported: a @Maybe@ column can be referenced by\nname and missing entries are dropped, mirroring ggplot2's @na.rm@.\n\n@hgg-core@ and @hgg-frame@ stay independent of any dataframe library;\nthis package is the opt-in binding for users of Hackage @dataframe@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
          (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
        ];
        buildable = true;
      };
      tests = {
        "hgg-dataframe-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
            (hsPkgs."hgg-dataframe" or (errorHandler.buildDepError "hgg-dataframe"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }