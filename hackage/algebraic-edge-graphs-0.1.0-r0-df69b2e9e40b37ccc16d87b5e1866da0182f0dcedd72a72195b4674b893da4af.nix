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
      identifier = { name = "algebraic-edge-graphs"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Jack Liell-Cock, 2025-2026";
      maintainer = "Jack Liell-Cock <jackliellcock@gmail.com>";
      author = "Jack Liell-Cock <jackliellcock@gmail.com>";
      homepage = "https://github.com/jacklc3/algebraic-edge-graphs";
      url = "";
      synopsis = "A library for algebraic edge-graph construction and transformation";
      description = "A library for algebraic construction and manipulation of edge-indexed graphs\nin Haskell. Based on the theory of algebraic edge graphs.\n\nThe top-level module \"EdgeGraph\" defines the core data type\n'EdgeGraph.EdgeGraph' which is a deep embedding of six graph construction\nprimitives 'EdgeGraph.empty', 'EdgeGraph.edge', 'EdgeGraph.overlay',\n'EdgeGraph.into', 'EdgeGraph.pits' and 'EdgeGraph.tips'. More\nconventional graph representations can be found in \"EdgeGraph.AdjacencyMap\" and\n\"EdgeGraph.Incidence\".\n\nThe type classes defined in \"EdgeGraph.Class\" and \"EdgeGraph.HigherKinded.Class\"\ncan be used for polymorphic graph construction and manipulation. Also see\n\"EdgeGraph.Fold\" that defines the Boehm-Berarducci encoding of algebraic edge\ngraphs and provides additional flexibility for polymorphic graph manipulation.\n\nThis is an experimental library and the API will be unstable until version 1.0.0.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."algebraic-edge-graphs" or (errorHandler.buildDepError "algebraic-edge-graphs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."algebraic-edge-graphs" or (errorHandler.buildDepError "algebraic-edge-graphs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }