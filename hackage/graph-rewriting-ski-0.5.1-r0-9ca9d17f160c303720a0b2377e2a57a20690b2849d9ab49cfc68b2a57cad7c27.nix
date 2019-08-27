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
      specVersion = "1.6";
      identifier = { name = "graph-rewriting-ski"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "";
      url = "";
      synopsis = "Two implementations of the SKI combinators as interactive graph rewrite systems";
      description = "This package serves as an example for how to use the graph-rewriting, graph-rewriting-layout, and graph-rewriting-gl packages to create a graph rewriting system with an interactive, graphical front-end. The SKI combinator calculus is implemented once as an interaction net with combinators that accumulate their arguments, and once in a more direct manner. The sources (of the interaction net implementation) are well documented and serve as a tutorial for implementing your own rewrite system. Start reading in INet/Graph.hs. To run the program run either the \"ski-inet\" or the \"ski-direct\" command with one of the files in the \"examples\" directory as an argument.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ski-inet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."graph-rewriting" or (buildDepError "graph-rewriting"))
            (hsPkgs."graph-rewriting-layout" or (buildDepError "graph-rewriting-layout"))
            (hsPkgs."graph-rewriting-gl" or (buildDepError "graph-rewriting-gl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            ];
          };
        "ski-direct" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."graph-rewriting" or (buildDepError "graph-rewriting"))
            (hsPkgs."graph-rewriting-layout" or (buildDepError "graph-rewriting-layout"))
            (hsPkgs."graph-rewriting-gl" or (buildDepError "graph-rewriting-gl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            ];
          };
        };
      };
    }