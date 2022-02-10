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
      specVersion = "2.4";
      identifier = { name = "chart-svg"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2017";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-svg#readme";
      url = "";
      synopsis = "Charting library targetting SVGs.";
      description = "This package provides a charting library targetting SVG as the rendered output.\n\n== Usage\n\n>>> import Chart\n>>>\n>>> let xs = [[(0.0, 1.0), (1.0, 1.0), (2.0, 5.0)], [(0.0, 0.0), (3.0, 3.0)], [(0.5, 4.0), (0.5, 0)]] :: [[(Double, Double)]]\n>>> let ls = fmap (PointXY . uncurry Point) <$> xs\n>>> let anns = zipWith (\\w c -> LineA (LineStyle w c Nothing Nothing Nothing Nothing)) [0.015, 0.03, 0.01] palette1\n>>> let lineChart = zipWith Chart anns ls\n>>> writeChartSvgHud \"other/lineshud.svg\" lineChart\n\n![main example](other/lineshud.svg)\n\nSee \"Chart\" for a broad overview of concepts, and \"Chart.Examples\" for a variety of practical examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Color" or (errorHandler.buildDepError "Color"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cubicbezier" or (errorHandler.buildDepError "cubicbezier"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."numhask-space" or (errorHandler.buildDepError "numhask-space"))
          (hsPkgs."reanimate" or (errorHandler.buildDepError "reanimate"))
          (hsPkgs."reanimate-svg" or (errorHandler.buildDepError "reanimate-svg"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "reanimate-example" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chart-svg" or (errorHandler.buildDepError "chart-svg"))
            (hsPkgs."concurrency" or (errorHandler.buildDepError "concurrency"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."numhask-space" or (errorHandler.buildDepError "numhask-space"))
            (hsPkgs."reanimate" or (errorHandler.buildDepError "reanimate"))
            (hsPkgs."reanimate-svg" or (errorHandler.buildDepError "reanimate-svg"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chart-svg" or (errorHandler.buildDepError "chart-svg"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            ];
          buildable = true;
          };
        };
      };
    }