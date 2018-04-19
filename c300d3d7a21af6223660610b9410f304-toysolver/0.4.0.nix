{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      forcechar8 = false;
      linuxstatic = false;
      buildtoyfmf = false;
      buildsampleprograms = false;
      buildmiscprograms = false;
      exceptions06 = true;
      time15 = true;
      transformers051 = true;
      usehaskeline = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "toysolver";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Assorted decision procedures for SAT, Max-SAT, PB, MIP, etc";
        description = "Toy-level implementation of some decision procedures";
        buildType = "Simple";
      };
      components = {
        toysolver = {
          depends  = ((([
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.stm
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.filepath
            hsPkgs.deepseq
            hsPkgs.time
            hsPkgs.primes
            hsPkgs.process
            hsPkgs.parse-dimacs
            hsPkgs.queue
            hsPkgs.heaps
            hsPkgs.vector
            hsPkgs.vector-space
            hsPkgs.multiset
            hsPkgs.prettyclass
            hsPkgs.type-level-numbers
            hsPkgs.hashable
            hsPkgs.intern
            hsPkgs.loop
            hsPkgs.data-default-class
            hsPkgs.mwc-random
            hsPkgs.semigroups
            hsPkgs.OptDir
            hsPkgs.extended-reals
            hsPkgs.data-interval
            hsPkgs.finite-field
            hsPkgs.sign
            hsPkgs.pseudo-boolean
          ] ++ [
            hsPkgs.temporary
            hsPkgs.exceptions
          ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.MemoTrie) ++ [
            hsPkgs.transformers
          ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        exes = {
          toysolver = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.data-default-class
              hsPkgs.filepath
              hsPkgs.OptDir
              hsPkgs.parse-dimacs
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ];
          };
          toysat = {
            depends  = ([
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.mwc-random
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.process
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.parse-dimacs
              hsPkgs.unbounded-delays
              hsPkgs.vector
              hsPkgs.vector-space
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ] ++ (if _flags.time15
              then [ hsPkgs.time ]
              else [
                hsPkgs.time
                hsPkgs.old-locale
              ])) ++ pkgs.lib.optional (_flags.forcechar8 && compiler.isGhc) hsPkgs.base;
          };
          toysmt = {
            depends  = ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.toysolver
            ] ++ pkgs.lib.optional _flags.usehaskeline hsPkgs.haskeline) ++ pkgs.lib.optional (_flags.forcechar8 && compiler.isGhc) hsPkgs.base;
          };
          toyfmf = {
            depends  = optionals _flags.buildtoyfmf ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.logic-TPTP
            ] ++ pkgs.lib.optional (compiler.isGhc && _flags.transformers051) hsPkgs.logic-TPTP);
          };
          lpconvert = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.data-default-class
              hsPkgs.parse-dimacs
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ];
          };
          pbconvert = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.data-default-class
              hsPkgs.parse-dimacs
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ];
          };
          sudoku = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.toysolver
            ];
          };
          nonogram = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.toysolver
            ];
          };
          nqueens = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.toysolver
            ];
          };
          knapsack = {
            depends  = [
              hsPkgs.base
              hsPkgs.toysolver
            ];
          };
          htc = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
            ];
          };
          svm2lp = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.split
              hsPkgs.toysolver
            ];
          };
          pigeonhole = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ];
          };
          maxsatverify = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.toysolver
            ];
          };
          pbverify = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ];
          };
        };
        tests = {
          TestPolynomial = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.data-interval
              hsPkgs.finite-field
              hsPkgs.prettyclass
            ];
          };
          TestSuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.mwc-random
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.vector
              hsPkgs.vector-space
              hsPkgs.toysolver
              hsPkgs.data-interval
              hsPkgs.OptDir
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          BenchmarkSATLIB = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.data-default-class
              hsPkgs.parse-dimacs
              hsPkgs.toysolver
              hsPkgs.criterion
            ];
          };
          BenchmarkKnapsack = {
            depends  = [
              hsPkgs.base
              hsPkgs.toysolver
              hsPkgs.criterion
            ];
          };
          BenchmarkSubsetSum = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.toysolver
              hsPkgs.criterion
            ];
          };
        };
      };
    }