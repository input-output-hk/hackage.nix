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
      specVersion = "1.10";
      identifier = { name = "aivika-experiment-diagrams"; version = "5.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2023. David Sorokin <davsor@mail.ru>";
      maintainer = "David Sorokin <davsor@mail.ru>";
      author = "David Sorokin";
      homepage = "https://gitflic.ru/project/dsorokin/aivika-experiment-diagrams";
      url = "";
      synopsis = "Diagrams-based charting backend for the Aivika simulation library";
      description = "This is one of the charting backends for the aivika-experiment-chart [1] package.\nIt allows rendering charts using the Chart-diagrams [2] package.\n\n\\[1] <http://hackage.haskell.org/package/aivika-experiment-chart>\n\n\\[2] <http://hackage.haskell.org/package/Chart-diagrams>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
          (hsPkgs."aivika-experiment" or (errorHandler.buildDepError "aivika-experiment"))
          (hsPkgs."aivika-experiment-chart" or (errorHandler.buildDepError "aivika-experiment-chart"))
          ];
        buildable = true;
        };
      };
    }