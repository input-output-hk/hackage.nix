{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dag";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Compile-time, type-safe directed acyclic graphs.";
      description = "This is a type-safe approach for a directed acyclic graph.\n\nEdge construction is incremental, creating a \"schema\":\n\n>  import Data.Graph.DAG.Edge\n>\n>  -- | Edges are statically defined:\n>  edges =\n>    ECons (Edge :: EdgeValue \"foo\" \"bar\") \$\n>    ECons (Edge :: EdgeValue \"bar\" \"baz\") \$\n>    ECons (Edge :: EdgeValue \"foo\" \"baz\")\n>    unique -- ENil, but casted for uniquely edged graphs\n\nThe nodes are separate from edges; graph may be not connected:\n\n>  data Cool = AllRight\n>            | Radical\n>            | SuperDuper\n>\n>  nodes =\n>    nadd \"foo\" AllRight \$\n>    nadd \"bar\" Radical \$\n>    nadd \"baz\" SuperDuper \$\n>    nempty\n\nSome type tomfoolery:\n\n>  *Data.Graph.DAG> :t edges\n>\n>  edges\n>    :: EdgeSchema\n>         '['EdgeType \"foo\" \"bar\", 'EdgeType \"bar\" \"baz\",\n>           'EdgeType \"foo\" \"baz\"] -- Type list of edges\n>         '['(\"foo\", '[\"bar\", \"baz\"]), '(\"bar\", '[\"baz\"])] -- potential loops\n>         'True -- uniqueness\n>\n>  *Data.Graph.DAG> :t getSpanningTrees \$ edges\n>\n>  getSpanningTrees \$ edges\n>    :: Data.Proxy.Proxy\n>         '['Node \"foo\" '['Node \"bar\" '['Node \"baz\" '[]]\n>                        ,'Node \"baz\" '[]]\n>          ,'Node \"bar\" '['Node \"baz\" '[]]\n>          ,'Node \"baz\" '[]]\n>\n>  *Data.Graph.DAG> reflect \$ getSpanningTrees \$ edges\n>\n>    [Node \"foo\" [Node \"bar\" [Node \"baz\" []]\n>                ,Node \"baz\" []]\n>    ,Node \"bar\" [Node \"baz\" []]\n>    ,Node \"baz\" []]\n\nWe can also look at the edges, first-class:\n\n>  *Data.Graph.DAG> fcEdges edges\n>\n>    [(\"foo\",\"bar\"),(\"foo\",\"baz\"),(\"bar\",\"baz\")]\n\nNote that a @NodeSchema@'s keys don't have to be in-sync with it's paired\n@EdgeSchema@. After we have both, we can construct a @DAG@:\n\n>  graph = DAG edges nodes\n\nNow we can do fun things, like get the spanning tree of a node:\n\n>  *Data.Graph.DAG> gtree \"foo\" graph\n>\n>    Just (AllRight :@-> [Radical :@-> [SuperDuper :@-> []]\n>                        ,SuperDuper :@-> []])\n\nThis library is still very naive, but it will give us compile-time enforcement\nof acyclicity (and uniqueness) in these graphs - ideal for dependency graphs.\n\nThe main deficiency of this graph is that our @EdgeSchema@ can't be\n/deconstructed/ soundly - there is just too much information loss between the\nvalue and type levels. This means we can't delete edges or look inside, but we\ncan still add edges or work with the resulting structure.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.singletons)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }