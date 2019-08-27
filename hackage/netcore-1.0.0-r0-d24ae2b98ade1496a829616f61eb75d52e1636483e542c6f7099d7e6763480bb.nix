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
      specVersion = "1.9.2";
      identifier = { name = "netcore"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011--2012, Cornell University and Princeton University";
      maintainer = "Arjun Guha <arjun@cs.cornell.edu>,\nCole Schlesinger <cschlesi@cs.princeton.edu>,\nAlec Story <avs38@cornell.edu>";
      author = "";
      homepage = "http://frenetic-lang.org";
      url = "";
      synopsis = "The NetCore compiler and runtime system for OpenFlow networks.";
      description = "NetCore is a high-level network programming language. This package provides\na NetCore compiler and runtime system for OpenFlow networks.\nSee the 'Frenetic.NetCore' module for commonly used functions.\nWe have several example programs available online at\n<https://github.com/frenetic-lang/netcore/tree/master/examples>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."multiset" or (buildDepError "multiset"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."HList" or (buildDepError "HList"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary-strict" or (buildDepError "binary-strict"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."bimap" or (buildDepError "bimap"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        };
      tests = {
        "frenetic-tests" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."multiset" or (buildDepError "multiset"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HList" or (buildDepError "HList"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary-strict" or (buildDepError "binary-strict"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."bimap" or (buildDepError "bimap"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        };
      benchmarks = {
        "frenetic-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."multiset" or (buildDepError "multiset"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HList" or (buildDepError "HList"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary-strict" or (buildDepError "binary-strict"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."bimap" or (buildDepError "bimap"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        };
      };
    }