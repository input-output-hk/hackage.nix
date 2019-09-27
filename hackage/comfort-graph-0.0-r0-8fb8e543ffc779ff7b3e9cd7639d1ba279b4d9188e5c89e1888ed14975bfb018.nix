let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "comfort-graph"; version = "0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }