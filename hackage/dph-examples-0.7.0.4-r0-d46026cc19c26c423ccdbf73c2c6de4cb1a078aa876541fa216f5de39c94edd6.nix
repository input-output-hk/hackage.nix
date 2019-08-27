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
      specVersion = "1.8";
      identifier = { name = "dph-examples"; version = "0.7.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Data Parallel Haskell example programs.";
      description = "Data Parallel Haskell example programs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dph-smoke-bool" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-smoke-concat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-smoke-sumsq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-smoke-evens" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-smoke-indices" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-smoke-rank" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-smoke-reverse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-imaginary-words" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-spectral-dotp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-spectral-smvm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-spectral-quickhull" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-spectral-quickhull-vector" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-spectral-quicksort" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "dph-real-nbody" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-lifted-vseg" or (buildDepError "dph-lifted-vseg"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }