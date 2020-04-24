{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mwc-random = false; pcg-random = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "cuckoo"; version = "0.1.0.0"; };
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
          (hsPkgs."random-internal" or ((hsPkgs.pkgs-errors).buildDepError "random-internal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      sublibs = {
        "random-internal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            ] ++ (if flags.pcg-random
            then [
              (hsPkgs."pcg-random" or ((hsPkgs.pkgs-errors).buildDepError "pcg-random"))
              ]
            else if flags.mwc-random
              then [
                (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
                (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
                ]
              else [
                (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
                ]);
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."cuckoo" or ((hsPkgs.pkgs-errors).buildDepError "cuckoo"))
            (hsPkgs."random-internal" or ((hsPkgs.pkgs-errors).buildDepError "random-internal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."stopwatch" or ((hsPkgs.pkgs-errors).buildDepError "stopwatch"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "spellchecker" = {
          depends = [
            (hsPkgs."cuckoo" or ((hsPkgs.pkgs-errors).buildDepError "cuckoo"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."stopwatch" or ((hsPkgs.pkgs-errors).buildDepError "stopwatch"))
            ];
          buildable = true;
          };
        "internal-benchmarks" = {
          depends = [
            (hsPkgs."cuckoo" or ((hsPkgs.pkgs-errors).buildDepError "cuckoo"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }