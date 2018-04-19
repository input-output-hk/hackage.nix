{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
      test-hlint = true;
      unstable = false;
      measure-synchronize = false;
    } // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "rcu";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Edward A. Kmett, Theodore Rhys Cooper";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>, Ted Cooper <anthezium@gmail.com>";
        author = "Ted Cooper and Edward A. Kmett";
        homepage = "http://github.com/ekmett/rcu/";
        url = "";
        synopsis = "Read-Copy-Update for Haskell";
        description = "Read-Copy-Update for Haskell";
        buildType = "Custom";
      };
      components = {
        rcu = {
          depends  = [
            hsPkgs.atomic-primops
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.parallel
            hsPkgs.primitive
            hsPkgs.transformers
          ] ++ pkgs.lib.optional _flags.unstable hsPkgs.stm;
        };
        exes = {
          MoveStringSTM = {
            depends  = pkgs.lib.optionals (!(!_flags.unstable)) [
              hsPkgs.base
              hsPkgs.rcu
              hsPkgs.transformers
            ];
          };
          MoveStringQSBR = {
            depends  = [
              hsPkgs.base
              hsPkgs.rcu
              hsPkgs.transformers
            ];
          };
          MoveStringGC = {
            depends  = [
              hsPkgs.base
              hsPkgs.rcu
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          doctests = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.parallel
              hsPkgs.rcu
            ];
          };
          hlint = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
        benchmarks = {
          IncCounterExperiment = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.ghc-prim
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeQSBR = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.rdtsc
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeGC = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.rdtsc
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeQSBRUnbound = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeGCUnbound = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeQSBRSingleThread = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeGCSingleThread = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeQSBRPinned = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.rdtsc
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeGCPinned = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.rdtsc
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeQSBRnoGC = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.rdtsc
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeGCnoGC = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.rdtsc
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeQSBRnoGCPinned = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.rdtsc
              hsPkgs.transformers
            ];
          };
          TimeSynchronizeGCnoGCPinned = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.optparse-applicative
              hsPkgs.primitive
              hsPkgs.rcu
              hsPkgs.rdtsc
              hsPkgs.transformers
            ];
          };
        };
      };
    }