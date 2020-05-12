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
      specVersion = "1.6";
      identifier = { name = "aivika-experiment-cairo"; version = "4.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2015. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika-experiment-cairo";
      url = "";
      synopsis = "Cairo backend for the Aivika simulation library";
      description = "This package complements the Aivika and Aivika Experiment packages\nand it allows rendering the charts using the Chart-cairo library.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."aivika-experiment" or (errorHandler.buildDepError "aivika-experiment"))
          (hsPkgs."aivika-experiment-chart" or (errorHandler.buildDepError "aivika-experiment-chart"))
          ];
        buildable = true;
        };
      };
    }