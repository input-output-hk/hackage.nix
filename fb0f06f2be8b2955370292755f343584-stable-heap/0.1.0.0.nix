{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stable-heap";
          version = "0.1.0.0";
        };
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
        stable-heap = {
          depends  = [ hsPkgs.base ];
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.fingertree
              hsPkgs.heaps
              hsPkgs.mwc-random
              hsPkgs.pqueue
              hsPkgs.stable-heap
              hsPkgs.vector
            ];
          };
        };
      };
    }