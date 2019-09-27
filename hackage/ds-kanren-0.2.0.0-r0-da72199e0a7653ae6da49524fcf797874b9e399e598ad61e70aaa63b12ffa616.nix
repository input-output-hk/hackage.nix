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
      specVersion = "1.10";
      identifier = { name = "ds-kanren"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jozefg@cmu.edu";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A subset of the miniKanren language";
      description = "ds-kanren is an implementation of the <http://minikanren.org miniKanren> language.\n\n== What's in ds-kanren?\n\n['disconj']\nTry the left and the right and gather solutions that satisfy\neither one.\n['fresh']\nCreate a fresh logical variable\n['===']\nEquate two terms. This will backtrack if we can't unify\nthem in this branch.\n['run']\nActually run a logical computation and return results and\nthe constraints on them.\n\nIn addition to these core combinators, we also export a few\nsupplimentary tools.\n\n['=/=']\nThe opposite of '===', ensure that the left and right\nnever unify.\n\n== The Classic Example\n\nWe can define the classic @appendo@ relationship by encoding\nlists in the Lisp \"bunch-o-pairs\" method.\n\n> appendo :: Term -> Term -> Term -> Predicate\n> appendo l r o =\n>   conde [ program [l === \"nil\",  o === r]\n>         , manyFresh \$ \\h t o ->\n>             program [ Pair h t === l\n>                     , appendo t r o\n>                     , Pair h o === o ]]\n\nOnce we have a relationship, we can run it backwards and forwards\nas we can with most logic programs.\n\n>>> let l = list [\"foo\", \"bar\"]\n\n>>> map fst . runN 1 \$ \\t -> appendo t l l\n[nil]\n>>> map fst . runN 1 \$ \\t -> appendo l t l\n[nil]\n>>> map fst . runN 1 \$ \\t -> appendo l l t\n[(foo, (bar, (foo, (bar, nil))))]\n\n== Related Links\n\nSome good places to start learning about miniKanren would be\n\n* <http://www.amazon.com/The-Reasoned-Schemer-Daniel-Friedman/DP/0262562146 The Reasoned Schemer>\n* <http://www.infoq.com/presentations/miniKanren A presentation at StrangeLoop>\n* <https://github.com/miniKanren/miniKanren The canonical implementation>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."logict" or (buildDepError "logict"))
          ];
        buildable = true;
        };
      tests = {
        "test-unify:" = {
          depends = [
            (hsPkgs."ds-kanren" or (buildDepError "ds-kanren"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "test-list-ops:" = {
          depends = [
            (hsPkgs."ds-kanren" or (buildDepError "ds-kanren"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }