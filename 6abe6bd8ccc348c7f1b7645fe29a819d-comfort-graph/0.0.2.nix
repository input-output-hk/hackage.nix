{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "comfort-graph";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de";
        author = "Henning Thielemann";
        homepage = "http://hub.darcs.net/thielema/comfort-graph";
        url = "";
        synopsis = "Graph structure with type parameters for nodes and edges";
        description = "This graph structure is based on \"Data.Map\"\nand allows any 'Ord' type for nodes\nand allows directed, undirected and more edge types.\nThere is no need to map nodes to integer numbers.\nThis makes handling in applications much more comfortable,\nthus the package name.\n\nCurrently the package does not contain any advanced algorithm,\njust the data structure and some manipulation functions.\n\nThe edge type can be freely chosen.\nThis allows great flexibility\nbut it is a bit more cumbersome to do in Haskell 98.\nExamples of edge types:\n\n* @DirEdge@: Edges in a directed graph\n\n* @UndirEdge@: Edges in an undirected graph\n\n* @EitherEdge@: For graphs containing both directed and undirected edges\n\n* You may define an edge type with an additional identifier\nin order to support multiple edges between the same pair of nodes.\n\n* Using type functions on the node type\nyou may even define an edge type for nodes from a Cartesian product,\nwhere only \\\"horizontal\\\" and \\\"vertical\\\" edges are allowed.\n\nFor examples see the @linear-circuit@ package and its tests.\nThe @ResistorCube@ test demonstrates non-integer node types\nand the @Tree@ test demonstrates multigraphs.\n\nThe package is plain Haskell 98.\n\nRelated packages:\n\n* @fgl@:\nstandard package for graph processing with many graph algorithms\nbut cumbersome data structure with Int numbered nodes";
        buildType = "Simple";
      };
      components = {
        "comfort-graph" = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
        tests = {
          "test-comfort-graph" = {
            depends  = [
              hsPkgs.comfort-graph
              hsPkgs.QuickCheck
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }