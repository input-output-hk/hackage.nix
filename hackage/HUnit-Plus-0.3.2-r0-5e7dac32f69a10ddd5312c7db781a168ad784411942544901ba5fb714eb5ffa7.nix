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
      specVersion = "1.16";
      identifier = { name = "HUnit-Plus"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Eric McCorkle.  All rights reserved.";
      maintainer = "Eric McCorkle <emc2@metricspace.net>";
      author = "Eric McCorkle";
      homepage = "https://github.com/emc2/HUnit-Plus";
      url = "";
      synopsis = "A test framework building on HUnit.";
      description = "HUnit-Plus is a testing framework for Haskell that builds on the\nHUnit test framework.  HUnit-Plus provides functions and operators\nfor creating assertions and tests similar to those provided by the\nHUnit framework.  Unlike HUnit, HUnit-Plus uses the same data\nstructures as cabal's \"Distribution.TestSuite\" framework, allowing\nfull compatibility with cabal's testing facilities.\n\nHUnit-Plus also provides expanded reporting capabilities, including\nthe ability to generate JUnit-style XML reports, along with a very\nflexible mechanism for selecting which tests to be executed.\nLastly, HUnit-Plus provides a wrapper which generates standalone\ntest-execution programs from a set of test suites.\n\nThis is the third release candidate for 1.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."hexpat" or (buildDepError "hexpat"))
          (hsPkgs."timeit" or (buildDepError "timeit"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."hostname" or (buildDepError "hostname"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        };
      tests = {
        "RunTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."hexpat" or (buildDepError "hexpat"))
            (hsPkgs."timeit" or (buildDepError "timeit"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."hostname" or (buildDepError "hostname"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }