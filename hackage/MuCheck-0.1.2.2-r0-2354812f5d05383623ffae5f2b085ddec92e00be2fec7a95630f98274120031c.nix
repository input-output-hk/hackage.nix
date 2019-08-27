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
      identifier = { name = "MuCheck"; version = "0.1.2.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Duc Lee <ledu@onid.oregonstate.edu>\nRahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/mucheck";
      url = "";
      synopsis = "Automated Mutation Testing";
      description = "This package defines a mutation analysis library for haskell\nprograms. It does this by parsing the haskell source, and\nreplacing a few of the common haskell functions and operators\nwith other, but similar operators and functions, and running\nthe testsuite to check whether the difference has been\ndetected. Currently, it supports QuickCheck, HUnit and Hspec\ntests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."hint" or (buildDepError "hint"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      exes = {
        "mucheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."MuCheck" or (buildDepError "MuCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      };
    }