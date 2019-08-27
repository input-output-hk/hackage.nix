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
    flags = { enable-pthreads = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "abcBridge"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2014 Galois Inc.";
      maintainer = "jhendrix@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Bindings for ABC, A System for Sequential\nSynthesis and Verification";
      description = "Bindings for ABC focused on creating And-Inverter\nGraphs (AIG) and then performing synthesis and\nequivalence checking.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aig" or (buildDepError "aig"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [
          (pkgs."abc" or (sysDepError "abc"))
          ] ++ (pkgs.lib).optional (flags.enable-pthreads) (pkgs."pthread" or (sysDepError "pthread"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      exes = {
        "long-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."abcBridge" or (buildDepError "abcBridge"))
            ];
          };
        };
      tests = {
        "abc-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."abcBridge" or (buildDepError "abcBridge"))
            (hsPkgs."aig" or (buildDepError "aig"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }