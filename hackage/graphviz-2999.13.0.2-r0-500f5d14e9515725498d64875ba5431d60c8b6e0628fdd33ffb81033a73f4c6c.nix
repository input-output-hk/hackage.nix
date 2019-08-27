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
      specVersion = "1.14";
      identifier = { name = "graphviz"; version = "2999.13.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic+graphviz@gmail.com";
      author = "Matthew Sackman, Ivan Lazar Miljenovic";
      homepage = "http://projects.haskell.org/graphviz/";
      url = "";
      synopsis = "Bindings to Graphviz for graph visualisation.";
      description = "This library provides bindings for the Dot language used by the\nGraphviz (<http://graphviz.org/>) suite of programs for visualising\ngraphs, as well as functions to call those programs.\n\nMain features of the graphviz library include:\n\n* Almost complete coverage of all Graphviz attributes and syntax.\n\n* Support for specifying clusters.\n\n* The ability to use a custom node type.\n\n* Functions for running a Graphviz layout tool with all specified\noutput types.\n\n* The ability to not only generate but also parse Dot code with two\noptions: strict and liberal (in terms of ordering of statements).\n\n* Functions to convert FGL graphs and other graph-like data structures\nto Dot code - including support to group them into clusters - with a\nhigh degree of customisation by specifying which attributes to use\nand limited support for the inverse operation.\n\n* Round-trip support for passing an FGL graph through Graphviz to\naugment node and edge labels with positional information, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."polyparse" or (buildDepError "polyparse"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          ];
        };
      tests = {
        "graphviz-testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      benchmarks = {
        "graphviz-printparse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }