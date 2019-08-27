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
    flags = { documentation = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hs2048"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2014 Taylor Fausak <taylor@fausak.me>";
      maintainer = "taylor@fausak.me";
      author = "Taylor Fausak";
      homepage = "https://github.com/tfausak/hs2048";
      url = "";
      synopsis = "A 2048 clone in Haskell.";
      description = "A <https://github.com/gabrielecirulli/2048 2048> clone in Haskell.\n\nThis implements the game logic as well as a console interface for playing\nit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or (buildDepError "hscolour"));
        };
      exes = {
        "hs2048" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hs2048" or (buildDepError "hs2048"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hs2048" or (buildDepError "hs2048"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "hpc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            ];
          };
        "haddock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            ];
          };
        "hlint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hs2048" or (buildDepError "hs2048"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."hastache" or (buildDepError "hastache"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      };
    }