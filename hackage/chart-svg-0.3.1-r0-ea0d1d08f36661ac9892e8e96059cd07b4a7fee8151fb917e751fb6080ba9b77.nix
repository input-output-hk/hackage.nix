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
      identifier = { name = "chart-svg"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2017";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-svg#readme";
      url = "";
      synopsis = "Charting library targetting SVGs.";
      description = "This package provides a charting library targetting SVG as the rendered output.\n\n== Usage\n\n>>> :set -XOverloadedLabels\n>>> :set -XOverloadedStrings\n>>> import Chart\n>>> import Optics.Core\n>>> let lines = [[Point 0.0 1.0, Point 1.0 1.0, Point 2.0 5.0],[Point 0.0 0.0, Point 2.8 3.0],[Point 0.5 4.0, Point 0.5 0]]\n>>> let styles = (\\c -> defaultLineStyle & #color .~ palette1 c & #size .~ 0.015) <$> [0..2]\n>>> let cs = zipWith (\\s x -> LineChart s [x]) styles lines\n>>> let lineExample = mempty & #charts .~ named \"line\" cs & #hudOptions .~ defaultHudOptions :: ChartSvg\n>>> writeChartSvg \"other/usage.svg\" lineExample\n\n![usage example](docs/other/usage.svg)\n\nSee \"Chart\" for a broad overview of concepts, and \"Chart.Examples\" for practical examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Color" or (errorHandler.buildDepError "Color"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cubicbezier" or (errorHandler.buildDepError "cubicbezier"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."formatn" or (errorHandler.buildDepError "formatn"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."numhask-array" or (errorHandler.buildDepError "numhask-array"))
          (hsPkgs."numhask-space" or (errorHandler.buildDepError "numhask-space"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }