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
      specVersion = "1.20";
      identifier = { name = "dag"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Basic type-safe directed acyclic graphs.";
      description = "This is a type-safe approach for a directed acyclic graph.\n\nEdge construction is inductive, creating a \"schema\":\n\n>  import Data.Graph.DAG.Edge\n>\n>  -- | Edges are statically defined:\n>  edges = ECons (Edge :: EdgeValue \"foo\" \"bar\") $\n>    ECons (Edge :: EdgeValue \"bar\" \"baz\") $\n>    ECons (Edge :: EdgeValue \"foo\" \"baz\")\n>    unique -- ENil, but for uniquely edged graphs\n\nWhich we use to populate nodes with values:\n\n>  data Cool = AllRight\n>            | Radical\n>            | SuperDuper\n>\n>  graph = GCons \"foo\" AllRight $\n>    GCons \"bar\" Radical $\n>    GCons \"baz\" SuperDuper $\n>    GNil edges\n\nIt's an instance of `Functor`, but we haven't done much here - it will require\na lot of reflection that I don't have time to implement right now - there isn't\neven binding of value-based `GCons` keys and `ECons` edge node labels.\n\nSome type tomfoolery:\n\n>  *Data.Graph.DAG> :t edges\n>  edges\n>    :: EdgeSchema\n>         '['EdgeType \"foo\" \"bar\", 'EdgeType \"bar\" \"baz\",\n>           'EdgeType \"foo\" \"baz\"] -- Type list of edges\n>         '['(\"foo\", '[\"bar\", \"baz\"]), '(\"bar\", '[\"baz\"])] -- potential loops\n>         'True -- uniqueness\n\n>  *Data.Graph.DAG> :t getSpanningTrees $ edges\n>  getSpanningTrees $ edges\n>    :: Data.Proxy.Proxy\n>         '['Node \"foo\" '['Node \"bar\" '['Node \"baz\" '[]],\n>                         'Node \"baz\" '[]],\n>           'Node \"bar\" '['Node \"baz\" '[]],\n>           'Node \"baz\" '[]]\n\nThis library is still very naive, but it will give us compile-time enforcement\nof acyclicity (and uniqueness) in these graphs - ideal for dependency graphs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          ];
          buildable = true;
        };
      };
    };
  }