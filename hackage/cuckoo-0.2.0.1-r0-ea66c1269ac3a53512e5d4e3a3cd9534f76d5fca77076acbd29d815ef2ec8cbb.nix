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
    flags = { mwc-random = false; pcg-random = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "cuckoo"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019, Lars Kuhtz <lakuhtz@gmail.com>";
      maintainer = "lakuhtz@gmail.com";
      author = "Lars Kuhtz";
      homepage = "https://github.com/larskuhtz/cuckoo";
      url = "";
      synopsis = "Haskell Implementation of Cuckoo Filters";
      description = "Haskell implementation of Cuckoo filters as described in\n\n<https://www.cs.cmu.edu/~dga/papers/cuckoo-conext2014.pdf B. Fan, D.G. Anderson, M. Kaminsky, M.D. Mitzenmacher. Cuckoo Filter: Practically Better Than Bloom. In Proc. CoNEXT, 2014.>\n\nCuckoo filters are a data structure for probabilistic set membership. They\nsupport insertion, deletion, and membership queries for set elements.\n\nMembership queries may return false positive results. But queries don't\nreturn false negative results.\n\nUnlike Bloom filters, Cuckoo filters maintain an upper bound on the false\npositive rate that is independent of the load of the filter. However,\ninsertion of new elements in the filter can fail. For typical\nconfigurations this probability is very small for load factors smaller than\n90 percent.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."random-internal" or (buildDepError "random-internal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      sublibs = {
        "random-internal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            ] ++ (if flags.pcg-random
            then [ (hsPkgs."pcg-random" or (buildDepError "pcg-random")) ]
            else if flags.mwc-random
              then [
                (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
                (hsPkgs."vector" or (buildDepError "vector"))
                ]
              else [ (hsPkgs."random" or (buildDepError "random")) ]);
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."cuckoo" or (buildDepError "cuckoo"))
            (hsPkgs."random-internal" or (buildDepError "random-internal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."stopwatch" or (buildDepError "stopwatch"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        };
      benchmarks = {
        "spellchecker" = {
          depends = [
            (hsPkgs."cuckoo" or (buildDepError "cuckoo"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."stopwatch" or (buildDepError "stopwatch"))
            ];
          };
        "internal-benchmarks" = {
          depends = [
            (hsPkgs."cuckoo" or (buildDepError "cuckoo"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }