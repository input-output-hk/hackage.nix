{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "microbench";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Evan Martin <martine@danga.com>";
        maintainer = "martine@danga.com";
        author = "Evan Martin";
        homepage = "http://neugierig.org/software/darcs/browse/?r=microbench;a=summary";
        url = "";
        synopsis = "Microbenchmark Haskell code";
        description = "Microbenchmarking can be used to compare the speed of different\napproaches to the same operation.  Since most code is very fast, to\nget accurate timing information you must run the operation many times\nand then divide to get the time per operation.\n\nThis library manages the microbenchmarking process: it finds how many\niterations of a function are needed to get a good timing estimate per\niteration and prints out a human-readable \\\"Your code takes /n/ nanoseconds\nto run, and can run /n/ times per second\\\".";
        buildType = "Simple";
      };
      components = {
        "microbench" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }