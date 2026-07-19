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
      identifier = { name = "hgg-svg"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "SVG backend for hgg (pure Haskell)";
      description = "Browser-independent SVG output backend for hgg, written in pure\nHaskell. This is the backend most users go through to generate plots.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
        ];
        buildable = true;
      };
      exes = {
        "scatter-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "custom-mark-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "vega-lite-gallery" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "df-plot-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "gallery-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "dag-comparison-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "dag-parity-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "json-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          ];
          buildable = true;
        };
        "tutorial-01-easy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "tutorial-02-grammar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "tutorial-03-overlay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "tutorial-04-distribution" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "tutorial-05-theme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
        "doc-figures" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hgg-svg-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }