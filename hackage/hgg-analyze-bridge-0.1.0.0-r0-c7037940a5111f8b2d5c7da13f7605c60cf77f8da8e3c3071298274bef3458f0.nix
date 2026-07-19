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
      identifier = { name = "hgg-analyze-bridge"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "Bridge from hanalyze (Hanalyze.Model.HBM.ModelGraph) to hgg DAG rendering";
      description = "Renders hanalyze's HBM ModelGraph directly to SVG / PNG / PDF via hgg.\nNo graphviz CLI or Mermaid CDN dependency, which makes it suitable for\nembedding in production applications and for offline batch use.\n.\nThe existing Mermaid HTML (Hanalyze.Viz.ModelGraph) and Graphviz DOT\n(Hanalyze.Viz.ModelGraphDot) routes in hanalyze remain available;\nchoose whichever fits the use case.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
          (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
        ];
        buildable = true;
      };
      exes = {
        "three-routes-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hgg-analyze-bridge" or (errorHandler.buildDepError "hgg-analyze-bridge"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
          ];
          buildable = true;
        };
        "stat-in-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hgg-analyze-bridge" or (errorHandler.buildDepError "hgg-analyze-bridge"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hgg-analyze-bridge-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."hgg-analyze-bridge" or (errorHandler.buildDepError "hgg-analyze-bridge"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hanalyze" or (errorHandler.buildDepError "hanalyze"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }