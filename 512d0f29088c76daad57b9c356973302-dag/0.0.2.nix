{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.20";
      identifier = {
        name = "dag";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Basic type-safe directed acyclic graphs.";
      description = "This is a type-safe approach for a directed acyclic graph.\n\nEdge construction is incremental, creating a \"schema\":\n\n>  import Data.Graph.DAG.Edge\n>\n>  -- | Edges are statically defined:\n>  edges =\n>    ECons (Edge :: EdgeValue \"foo\" \"bar\") \$\n>    ECons (Edge :: EdgeValue \"bar\" \"baz\") \$\n>    ECons (Edge :: EdgeValue \"foo\" \"baz\")\n>    unique -- ENil, but casted for uniquely edged graphs\n\nThe nodes are separate from edges; graph may be not connected:\n\n>  data Cool = AllRight\n>            | Radical\n>            | SuperDuper\n>\n>  graph =\n>    GCons \"foo\" AllRight \$\n>    GCons \"bar\" Radical \$\n>    GCons \"baz\" SuperDuper \$\n>    GNil edges\n\nSome type tomfoolery:\n\n>  *Data.Graph.DAG> :t edges\n>\n>  edges\n>    :: EdgeSchema\n>         '['EdgeType \"foo\" \"bar\", 'EdgeType \"bar\" \"baz\",\n>           'EdgeType \"foo\" \"baz\"] -- Type list of edges\n>         '['(\"foo\", '[\"bar\", \"baz\"]), '(\"bar\", '[\"baz\"])] -- potential loops\n>         'True -- uniqueness\n>\n>  *Data.Graph.DAG> :t getSpanningTrees \$ edges\n>\n>  getSpanningTrees \$ edges\n>    :: Data.Proxy.Proxy\n>         '['Node \"foo\" '['Node \"bar\" '['Node \"baz\" '[]],\n>                         'Node \"baz\" '[]],\n>           'Node \"bar\" '['Node \"baz\" '[]],\n>           'Node \"baz\" '[]]\n>\n>  *Data.Graph.DAG> reflect \$ getSpanningTrees \$ edges\n>\n>    [Node \"foo\" [Node \"bar\" [Node \"baz\" []]\n>                ,Node \"baz\" []]\n>    ,Node \"bar\" [Node \"baz\" []]\n>    ,Node \"baz\" []]\n\nThis library is still very naive, but it will give us compile-time enforcement\nof acyclicity (and uniqueness) in these graphs - ideal for dependency graphs.";
      buildType = "Simple";
    };
    components = {
      "dag" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.singletons)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }