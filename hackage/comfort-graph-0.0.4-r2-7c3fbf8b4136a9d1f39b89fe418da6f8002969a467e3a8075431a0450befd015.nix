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
      identifier = { name = "comfort-graph"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/comfort-graph";
      url = "";
      synopsis = "Graph structure with type parameters for nodes and edges";
      description = "This graph structure is based on \"Data.Map\"\nand allows any 'Ord' type for nodes\nand allows directed, undirected and more edge types.\nThere is no need to map nodes to integer numbers.\nThis makes handling in applications much more comfortable,\nthus the package name.\nThis is especially useful for applications\nwhere there is no simple mapping of your node identifiers to integers\nor where the set of nodes is extended or reduced frequently.\nHowever, this flexibility comes with some costs.\nSince the structure is based on 'Data.Map.Map's,\nfor efficient computing the node type should support fast comparison.\n\nThe edge type can be freely chosen.\nThis allows great flexibility\nbut it is a bit more cumbersome to do in Haskell 98.\nExamples of edge types:\n\n* @DirEdge@: Edges in a directed graph\n\n* @UndirEdge@: Edges in an undirected graph\n\n* @EitherEdge@: For graphs containing both directed and undirected edges\n\n* You may define an edge type with an additional identifier\nin order to support multiple edges between the same pair of nodes.\n\n* Using type functions with the node type as parameter\nyou may even define an edge type for nodes from a Cartesian product,\nwhere only \\\"horizontal\\\" and \\\"vertical\\\" edges are allowed.\n\nFor examples see the @linear-circuit@ package and its tests.\nThe @ResistorCube@ test demonstrates non-integer node types\nand the @Tree@ test demonstrates multigraphs.\nAnother application is @cabal-sort@.\n\nCurrently the package does not contain any advanced algorithm,\njust the data structure and some manipulation functions.\n\nThe package is plain Haskell 98.\n\nRelated packages:\n\n* @fgl@:\nstandard package for graph processing with many graph algorithms\nbut cumbersome data structure with Int numbered nodes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "comfort-graph-test" = {
          depends = [
            (hsPkgs."comfort-graph" or (errorHandler.buildDepError "comfort-graph"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }