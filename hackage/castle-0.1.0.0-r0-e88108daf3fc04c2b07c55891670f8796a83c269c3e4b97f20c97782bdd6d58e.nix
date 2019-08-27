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
      identifier = { name = "castle"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "erochest@gmail.com";
      author = "Eric Rochester";
      homepage = "https://github.com/erochest/castle";
      url = "";
      synopsis = "A tool to manage shared cabal-install sandboxes.";
      description = "I really like having sandboxes baked into cabal-install.\n\nHowever, I got tired of waiting for big packages like Yesod and Lens to\ncompile in project after project that used them. However, I still didn't want\nto install them in the user database. I wanted to maintain /some/ sandboxing\namong a group of projects that all share a common set of packages, but I wanted\nto be able to switch from them or upgrade them easily.\n\nThat's the itch I was trying to scratch with `castle`.\n\nIt allows you to share one Cabal sandbox between multiple projects. This keeps\nthe package versions for all of these projects in line. It also means that you\ndon't have to constantly be re-installing everything, but you still get the\nability to blow away a set of packages without borking your whole system.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "castle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      tests = {
        "castle-specs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }