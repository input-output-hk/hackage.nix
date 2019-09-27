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
      identifier = { name = "ministg"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Bernard James Pope";
      maintainer = "bjpop@csse.unimelb.edu.au";
      author = "Bernard James Pope";
      homepage = "http://www.haskell.org/haskellwiki/Ministg";
      url = "";
      synopsis = "an interpreter for an operational semantics for the STG machine.";
      description = "ministg is an interpreter for a simple high-level operational semantics for the STG machine. The\nsemantics is taken from the research paper \"Making a fast curry: push/enter vs. eval/apply\nfor higher-order languages\", by Simon Marlow and Simon Peyton Jones. It provides the option\nto trace the execution of the interpreter, rendering each step in a HTML file. This is useful\nfor understanding the behaviour of the STG machine, and also useful for experimenting with\nchanges to the machine. It also supports an experimental call stack tracing facility.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ministg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }