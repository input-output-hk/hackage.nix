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
      specVersion = "1.2";
      identifier = { name = "aivika-experiment-chart"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika-experiment-chart";
      url = "";
      synopsis = "Simulation experiments with charting for the Aivika library";
      description = "This package complements the Aivika and Aivika Experiment packages with\ncharting capabilites. Now the simulation results can be represented\nas charts.\n\nIt was intentionally made a separate package as it has heavy dependencies\non Haskell Charts, Cairo and GTK.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."aivika" or (errorHandler.buildDepError "aivika"))
          (hsPkgs."aivika-experiment" or (errorHandler.buildDepError "aivika-experiment"))
          ];
        buildable = true;
        };
      };
    }