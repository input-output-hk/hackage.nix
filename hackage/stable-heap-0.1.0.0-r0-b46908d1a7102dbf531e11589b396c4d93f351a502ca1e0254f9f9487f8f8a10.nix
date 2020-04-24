{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stable-heap"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Jake McArthur";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "http://hub.darcs.net/jmcarthur/stable-heap";
      url = "";
      synopsis = "Purely functional stable heaps (fair priority queues)";
      description = "This library provides a purely functional implementation of\nstable heaps (fair priority queues). The data structure is a\ncousin of the pairing heap which maintains a sequential\nordering of the keys. Insertion can be to either end of the\nheap, as though it is a deque, and it can be split on the\nleft-most occurrence of the minimum key.\n\nThe current state of the package is fairly barebones. It will\nbe fleshed out later.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
            (hsPkgs."heaps" or ((hsPkgs.pkgs-errors).buildDepError "heaps"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."pqueue" or ((hsPkgs.pkgs-errors).buildDepError "pqueue"))
            (hsPkgs."stable-heap" or ((hsPkgs.pkgs-errors).buildDepError "stable-heap"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }