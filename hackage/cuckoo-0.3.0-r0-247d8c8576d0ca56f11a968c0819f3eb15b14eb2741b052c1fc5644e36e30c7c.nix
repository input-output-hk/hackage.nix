{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { mwc-random = false; pcg-random = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "cuckoo"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019-2021 Lars Kuhtz <lakuhtz@gmail.com>";
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
          (hsPkgs."cuckoo".components.sublibs.random-internal or (errorHandler.buildDepError "cuckoo:random-internal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashes" or (errorHandler.buildDepError "hashes"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      sublibs = {
        "random-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ] ++ (if flags.pcg-random
            then [
              (hsPkgs."pcg-random" or (errorHandler.buildDepError "pcg-random"))
              ]
            else if flags.mwc-random
              then [
                (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
                (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
                ]
              else [
                (hsPkgs."random" or (errorHandler.buildDepError "random"))
                ]);
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."cuckoo" or (errorHandler.buildDepError "cuckoo"))
            (hsPkgs."cuckoo".components.sublibs.random-internal or (errorHandler.buildDepError "cuckoo:random-internal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blake2" or (errorHandler.buildDepError "blake2"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."stopwatch" or (errorHandler.buildDepError "stopwatch"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "spellchecker" = {
          depends = [
            (hsPkgs."cuckoo" or (errorHandler.buildDepError "cuckoo"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."stopwatch" or (errorHandler.buildDepError "stopwatch"))
            ];
          buildable = true;
          };
        "internal-benchmarks" = {
          depends = [
            (hsPkgs."cuckoo" or (errorHandler.buildDepError "cuckoo"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }