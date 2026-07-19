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
      identifier = { name = "hgg-frame"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "DataFrame abstraction (class PlotData) and the df |>> spec binding for hgg";
      description = "A dataframe-independent abstraction for writing hgg plots as\n\"dataframe + column names\".\n.\n* 'PlotData' — a typeclass that bridges any dataframe type to a\n  'Resolver' (column name to ColData). Zero-dependency instances for\n  'Map' and assoc-lists are included, so it works without any dataframe\n  library.\n* '(|>>)' — binds a dataframe to a spec, producing a 'BoundPlot'.\n  (The Hackage @dataframe@ package already uses @|>@, hence @|>>@.)\n.\nRendering wrappers (saveSVGBound etc.) live in the backend packages\n(hgg-svg etc.), so this package depends only on hgg-core.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
        ];
        buildable = true;
      };
      tests = {
        "hgg-frame-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }