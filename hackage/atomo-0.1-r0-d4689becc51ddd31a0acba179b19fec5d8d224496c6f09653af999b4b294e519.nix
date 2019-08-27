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
      specVersion = "1.4";
      identifier = { name = "atomo"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "i.am@toogeneric.com";
      author = "Alex Suraci";
      homepage = "http://darcsden.com/alex/atomo";
      url = "";
      synopsis = "A highly dynamic, extremely simple, very fun programming\nlanguage.";
      description = "A super simple, object-oriented language centered around prototyping and\nmultiple dispatch. Supports usage of Haskell code/libraries via a thin\nlayer, using hint and Data.Dynamic. Experimental, but quickly evolving and\nvery fun.\n\nInfluences: Scheme, Slate, Io, Erlang, Haskell, Ruby.\n\nNeat stuff: first-class continuations, very metaprogramming and DSL\n-friendly, message-passing concurrency, pattern-matching.\n\nDocumentation (WIP): <http://atomo-lang.org/docs/>\n\nExamples: <http://darcsden.com/alex/atomo/browse/examples>\n\nIRC Channel: <irc://irc.freenode.net/atomo>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hint" or (buildDepError "hint"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "atomo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }