{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graphs"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/graphs";
      url = "";
      synopsis = "A simple monadic graph library";
      description = "A \\\"not-very-Haskelly\\\" API for calculating traversals of graphs that may be too large to fit into memory.\nThe algorithms included are inspired by the visitor concept of the\n<http://www.boost.org/doc/libs/1_57_0/libs/graph/doc/visitor_concepts.html Boost Graph Library>.\n\nHere is a very simple example of how we might execute a depth-first-search. In this case the visitor simply collects the edges and vertices in the order that the corresponding functions get called. After the necessary imports,\n\n> import Data.Array\n> import Data.Monoid\n> import Data.Graph.AdjacencyList\n> import Data.Graph.Algorithm\n> import Data.Graph.Algorithm.DepthFirstSearch\n\ncreate an adjacency list where the vertices are labeled with integers.\n\n> graph :: Array Int [Int]\n> graph = array (0, 3) [(0, [1,2]), (1, [3]), (2, [3]), (3, [])]\n\n<<http://i.imgur.com/Pod1SH0.png>>\n\nWe need a data structure that instantiates `Monoid` to combine the results of\nour visitor functions.\n\n@\ndata Orderings = Orderings\n&#32;&#32;&#123;&#32;&#32;enterV :: [Int]\n&#32;&#32;,  enterE :: [(Int, Int)]\n&#32;&#32;,  gray   :: [(Int, Int)]\n&#32;&#32;,  exitV  :: [Int]\n&#32;&#32;,  black  :: [(Int, Int)]\n&#32;&#32;&#125;&#32;deriving Show\n\ninstance Monoid Orderings where\n&#32;mempty = Orderings [] [] [] [] []\n&#32;mappend (Orderings a1 a2 a3 a4 a5)(Orderings b1 b2 b3 b4 b5) =\n&#32;&#32;Orderings (a1 ++ b1) (a2 ++ b2) (a3 ++ b3) (a4 ++ b4) (a5 ++ b5)\n@\n\nThe `dfs` function's first argument is of type `GraphSearch` which is\na visitor containing the functions to be run at various times during the search.\nThe second argument is the starting vertex for the search.\n\n@\norderings :: GraphSearch (AdjacencyList Int) Orderings\norderings = GraphSearch\n&#32;&#32;(\\v -> return \$ mempty &#123;enterV = [v]&#125;\n&#32;&#32;(\\e -> return \$ mempty &#123;enterE = [e]&#125;\n&#32;&#32;(\\e -> return \$ mempty &#123;gray   = [e]&#125;\n&#32;&#32;(\\v -> return \$ mempty &#123;exitV  = [v]&#125;\n&#32;&#32;(\\e -> return \$ mempty &#123;black  = [e]&#125;\n@\n\nFinally `runAdjacencylist` unwraps the function in the `Adjacencylist` newtype and runs\nit on `graph`.\n\n> dfsTest :: Orderings\n> dfsTest = runAdjacencyList (dfs orderings 0) graph\n\nRunning `dfsTest` in ghci will yield:\n\n@\nOrderings &#123;enterV = [0,2,3,1], enterE = [(0,2),(2,3),(0,1)], gray = [], exitV = [3,2,1,0], black = [(1,3)]&#125;\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.containers)
          (hsPkgs.void)
          ];
        };
      };
    }