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
      specVersion = "1.20";
      identifier = { name = "dag"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Basic type-safe directed acyclic graphs.";
      description = "This is a type-safe approach for a directed acyclic graph.\n\nEdge construction is inductive, creating a \"schema\":\n\n>  import Data.Graph.DAG.Edge\n>\n>  -- | Edges are statically defined:\n>  edges = ECons (Edge :: EdgeValue \"foo\" \"bar\") \$\n>    ECons (Edge :: EdgeValue \"bar\" \"baz\") \$\n>    ECons (Edge :: EdgeValue \"foo\" \"baz\")\n>    unique -- ENil, but for uniquely edged graphs\n\nWhich we use to populate nodes with values:\n\n>  data Cool = AllRight\n>            | Radical\n>            | SuperDuper\n>\n>  graph = GCons \"foo\" AllRight \$\n>    GCons \"bar\" Radical \$\n>    GCons \"baz\" SuperDuper \$\n>    GNil edges\n\nIt's an instance of `Functor`, but we haven't done much here - it will require\na lot of reflection that I don't have time to implement right now - there isn't\neven binding of value-based `GCons` keys and `ECons` edge node labels.\n\nSome type tomfoolery:\n\n>  *Data.Graph.DAG> :t edges\n>  edges\n>    :: EdgeSchema\n>         '['EdgeType \"foo\" \"bar\", 'EdgeType \"bar\" \"baz\",\n>           'EdgeType \"foo\" \"baz\"] -- Type list of edges\n>         '['(\"foo\", '[\"bar\", \"baz\"]), '(\"bar\", '[\"baz\"])] -- potential loops\n>         'True -- uniqueness\n\n>  *Data.Graph.DAG> :t getSpanningTrees \$ edges\n>  getSpanningTrees \$ edges\n>    :: Data.Proxy.Proxy\n>         '['Node \"foo\" '['Node \"bar\" '['Node \"baz\" '[]],\n>                         'Node \"baz\" '[]],\n>           'Node \"bar\" '['Node \"baz\" '[]],\n>           'Node \"baz\" '[]]\n\nThis library is still very naive, but it will give us compile-time enforcement\nof acyclicity (and uniqueness) in these graphs - ideal for dependency graphs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            ];
          };
        };
      };
    }