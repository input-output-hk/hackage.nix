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
      identifier = { name = "dotparse"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2022";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/dotparse#readme";
      url = "";
      synopsis = "dot language parsing and printing.";
      description = "This package provides parsing and printing of the dot language.\n\n== Usage\n\n>>> :set -XOverloadedLabels\n>>> :set -XOverloadedStrings\n>>> import DotParse\n>>> import Chart\n>>> import DotParse.Examples (exInt)\n>>> ex <- processGraph exInt\n>>> writeChartOptions \"other/ex.svg\" (graphToChartWith defaultChartConfig ex)\n\n![usage example](docs/other/ex.svg)\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."chart-svg" or (errorHandler.buildDepError "chart-svg"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
          (hsPkgs."numhask-space" or (errorHandler.buildDepError "numhask-space"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
        ];
        buildable = true;
      };
    };
  }