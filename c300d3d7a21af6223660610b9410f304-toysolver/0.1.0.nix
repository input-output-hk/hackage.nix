{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      forcechar8 = false;
      buildtoyfmf = false;
      buildmiscprograms = false;
      exceptions06 = true;
      random1013 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "toysolver";
          version = "0.1.0";
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
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.stm
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.deepseq
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.primes
            hsPkgs.process
            hsPkgs.parse-dimacs
            hsPkgs.queue
            hsPkgs.heaps
            hsPkgs.unbounded-delays
            hsPkgs.vector-space
            hsPkgs.multiset
            hsPkgs.prettyclass
            hsPkgs.type-level-numbers
            hsPkgs.hashable
            hsPkgs.intern
            hsPkgs.loop
            hsPkgs.OptDir
            hsPkgs.data-interval
            hsPkgs.finite-field
            hsPkgs.sign
          ] ++ pkgs.lib.optionals _flags.exceptions06 [
            hsPkgs.temporary
            hsPkgs.exceptions
          ]) ++ pkgs.lib.optionals (!_flags.exceptions06) [
            hsPkgs.temporary
            hsPkgs.exceptions
          ]) ++ (if _flags.random1013
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else [
              hsPkgs.random
            ])) ++ pkgs.lib.optional (compiler.isGhc && true) hsPkgs.ghc-prim;
        };
        exes = {
          toysolver = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.OptDir
              hsPkgs.parse-dimacs
              hsPkgs.toysolver
            ];
          };
          toysat = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.process
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.parse-dimacs
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.unbounded-delays
              hsPkgs.vector-space
              hsPkgs.toysolver
            ] ++ pkgs.lib.optional (_flags.forcechar8 && (compiler.isGhc && true)) hsPkgs.base;
          };
          toyfmf = {
            depends  = pkgs.lib.optionals _flags.buildtoyfmf [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.logic-TPTP
            ];
          };
          lpconvert = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.parse-dimacs
              hsPkgs.toysolver
            ];
          };
          pbconvert = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.parse-dimacs
              hsPkgs.toysolver
            ];
          };
          pigeonhole = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.toysolver
            ];
          };
          maxsatverify = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.toysolver
            ];
          };
          pbverify = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.toysolver
            ];
          };
        };
        tests = {
          TestSAT = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestSimplex = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
          TestSimplex2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.vector-space
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
          TestMIPSolver2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.vector-space
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.OptDir
              hsPkgs.stm
            ];
          };
          TestPolynomial = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.data-interval
              hsPkgs.finite-field
              hsPkgs.prettyclass
            ];
          };
          TestAReal = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.data-interval
            ];
          };
          TestQE = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.vector-space
              hsPkgs.toysolver
              hsPkgs.OptDir
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestContiTraverso = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.vector-space
              hsPkgs.toysolver
              hsPkgs.OptDir
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestCongruenceClosure = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestLPFile = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestMPSFile = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestPBFile = {
            depends  = [
              hsPkgs.base
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestSDPFile = {
            depends  = [
              hsPkgs.base
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestUtil = {
            depends  = [
              hsPkgs.base
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          BenchmarkSATLIB = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.parse-dimacs
              hsPkgs.toysolver
              hsPkgs.criterion
            ];
          };
        };
      };
    }