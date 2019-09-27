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
    flags = { exes = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-lua2"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Mitchell Rosen";
      homepage = "http://github.com/mitchellwrosen/language-lua2";
      url = "";
      synopsis = "Lua parser and pretty printer";
      description = "Lua parser and pretty printer";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."Earley" or (buildDepError "Earley"))
          (hsPkgs."lexer-applicative" or (buildDepError "lexer-applicative"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."regex-applicative" or (buildDepError "regex-applicative"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."srcloc" or (buildDepError "srcloc"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
          ];
        buildable = true;
        };
      exes = {
        "parse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."lexer-applicative" or (buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or (buildDepError "language-lua2"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."srcloc" or (buildDepError "srcloc"))
            (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
            ];
          buildable = if !flags.exes then false else true;
          };
        "lex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lexer-applicative" or (buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or (buildDepError "language-lua2"))
            (hsPkgs."srcloc" or (buildDepError "srcloc"))
            ];
          buildable = if !flags.exes then false else true;
          };
        };
      tests = {
        "language-lua2-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."lexer-applicative" or (buildDepError "lexer-applicative"))
            (hsPkgs."language-lua2" or (buildDepError "language-lua2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."srcloc" or (buildDepError "srcloc"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }